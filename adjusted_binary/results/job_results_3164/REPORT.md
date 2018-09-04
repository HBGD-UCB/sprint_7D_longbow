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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi                   sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight                 0      153     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight                 1        5     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight                   0       29     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight                   1        1     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese           0       57     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese           1        1     246
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight                 0       68     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight                 1        2     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight                   0        9     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight                   1        0     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese           0       99     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese           1        6     184
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight                 0      112     198
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight                 1        5     198
Birth       ki0047075b-MAL-ED          INDIA                          Underweight                   0       37     198
Birth       ki0047075b-MAL-ED          INDIA                          Underweight                   1        2     198
Birth       ki0047075b-MAL-ED          INDIA                          Overweight or Obese           0       42     198
Birth       ki0047075b-MAL-ED          INDIA                          Overweight or Obese           1        0     198
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight                 0       94     172
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight                 1        5     172
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight                   0        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight                   1        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          Overweight or Obese           0       72     172
Birth       ki0047075b-MAL-ED          NEPAL                          Overweight or Obese           1        1     172
Birth       ki0047075b-MAL-ED          PERU                           Normal weight                 0      147     276
Birth       ki0047075b-MAL-ED          PERU                           Normal weight                 1        2     276
Birth       ki0047075b-MAL-ED          PERU                           Underweight                   0        4     276
Birth       ki0047075b-MAL-ED          PERU                           Underweight                   1        1     276
Birth       ki0047075b-MAL-ED          PERU                           Overweight or Obese           0      118     276
Birth       ki0047075b-MAL-ED          PERU                           Overweight or Obese           1        4     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                 0       95     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                 1        1     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                   0        5     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                   1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese           0      127     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese           1        0     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                 0       76     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                 1        5     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                   0        7     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                   1        0     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           0       32     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           1        1     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight                 0       78     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight                 1        7     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight                   0       36     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight                   1        3     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese           0        6     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese           1        0     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight                 0       23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight                   0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight                   1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese           0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese           1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                 0       16      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                 1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                   0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                   1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese           0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese           1        0      27
Birth       ki1119695-PROBIT           BELARUS                        Normal weight                 0     8145   13723
Birth       ki1119695-PROBIT           BELARUS                        Normal weight                 1        4   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight                   0      523   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight                   1        0   13723
Birth       ki1119695-PROBIT           BELARUS                        Overweight or Obese           0     5050   13723
Birth       ki1119695-PROBIT           BELARUS                        Overweight or Obese           1        1   13723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                 0     6394    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                 1      204    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                   0      484    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                   1       26    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese           0     2473    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese           1       53    9634
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                 0      148     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                 1        5     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                   0       30     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                   1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese           0       55     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese           1        1     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                 0       81     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                 1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                   0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                   1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese           0      118     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese           1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                 0      132     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                 1        5     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight                   0       46     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight                   1        3     235
6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese           0       48     235
6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese           1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                 0      132     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                 1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                   0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                   1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese           0      103     236
6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese           1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight                 0      143     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight                 1        6     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight                   0        3     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight                   1        2     272
6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese           0      114     272
6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese           1        4     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                 0       96     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                 1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                   0        6     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                   1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese           0      141     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese           1        2     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                 0      162     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                 1        8     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                   0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                   1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           0       59     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           1        4     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                 0      778    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                 1       77    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                   0      265    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                   1       40    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese           0       65    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese           1        2    1227
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                 0      351     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                 1       23     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                   0       83     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                   1       10     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese           0       68     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese           1        2     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                 0      361     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                 1        9     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                   0       99     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                   1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese           0      108     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese           1        3     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                 0      441     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                 1       12     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                   0       61     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                   1        6     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese           0      190     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese           1        5     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                 0     1023    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                 1       11    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                   0       34    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                   1        0    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           0      907    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           1        8    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight                 0     7642   13027
6 months    ki1119695-PROBIT           BELARUS                        Normal weight                 1       91   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight                   0      494   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight                   1       11   13027
6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese           0     4709   13027
6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese           1       80   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                 0     4644    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                 1      206    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                   0      345    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                   1       17    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese           0     1835    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese           1       62    7109
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                 0      592     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                 1       59     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight                   0      135     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight                   1       10     836
6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese           0       38     836
6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese           1        2     836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                 0      116     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                 1       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                   0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                   1        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese           0       49     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese           1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                 0       62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                 1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                   0        5     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                   1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese           0      100     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese           1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                 0      117     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                 1       16     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight                   0       42     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight                   1        4     226
24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese           0       39     226
24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese           1        8     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                 0      121     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                 1        6     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                   0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                   1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese           0      100     228
24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese           1        1     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight                 0       96     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight                 1       10     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight                   0        2     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight                   1        2     201
24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese           0       88     201
24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese           1        3     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                 0       78     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                 1       14     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                   0        5     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                   1        2     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese           0      125     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese           1       10     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                 0       97     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                 1       51     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                   0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                   1        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           0       41     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           1       14     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                 0      233     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                 1       59     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                   0       54     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                   1       26     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese           0       49     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese           1        8     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                 0      331     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                 1       33     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                   0       85     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                   1       15     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese           0      111     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese           1        1     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                 0      300     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                 1       23     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                   0       36     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                   1        7     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese           0      143     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese           1        5     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                 0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                   0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                   1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           1        1       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight                 0     2312    4005
24 months   ki1119695-PROBIT           BELARUS                        Normal weight                 1       36    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight                   0      139    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight                   1        3    4005
24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese           0     1489    4005
24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese           1       26    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                 0      185     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                 1       85     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                   0       22     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                   1        3     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese           0       60     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese           1       22     377
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                 0      400     577
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                 1       50     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight                   0       81     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight                   1       14     577
24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese           0       29     577
24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese           1        3     577


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
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cfee42ce-3166-4fa7-8732-9bc2a9f9f38e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cfee42ce-3166-4fa7-8732-9bc2a9f9f38e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cfee42ce-3166-4fa7-8732-9bc2a9f9f38e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cfee42ce-3166-4fa7-8732-9bc2a9f9f38e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level    baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  --------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO      ZIMBABWE     Normal weight         NA                0.0319530   0.0276491   0.0362569
Birth       ki1126311-ZVITAMBO      ZIMBABWE     Underweight           NA                0.0565788   0.0387764   0.0743811
Birth       ki1126311-ZVITAMBO      ZIMBABWE     Overweight or Obese   NA                0.0208027   0.0151423   0.0264631
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Normal weight         NA                0.0264901   0.0116917   0.0412885
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Underweight           NA                0.0895522   0.0211327   0.1579718
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Overweight or Obese   NA                0.0256410   0.0034406   0.0478415
6 months    ki1119695-PROBIT        BELARUS      Normal weight         NA                0.0120650   0.0075620   0.0165680
6 months    ki1119695-PROBIT        BELARUS      Underweight           NA                0.0234361   0.0137723   0.0331000
6 months    ki1119695-PROBIT        BELARUS      Overweight or Obese   NA                0.0163035   0.0102012   0.0224059
6 months    ki1126311-ZVITAMBO      ZIMBABWE     Normal weight         NA                0.0427252   0.0369601   0.0484903
6 months    ki1126311-ZVITAMBO      ZIMBABWE     Underweight           NA                0.0509087   0.0297475   0.0720700
6 months    ki1126311-ZVITAMBO      ZIMBABWE     Overweight or Obese   NA                0.0327709   0.0243556   0.0411862
24 months   ki1017093-NIH-Birth     BANGLADESH   Normal weight         NA                0.2020548   0.1559459   0.2481637
24 months   ki1017093-NIH-Birth     BANGLADESH   Underweight           NA                0.3250000   0.2222449   0.4277551
24 months   ki1017093-NIH-Birth     BANGLADESH   Overweight or Obese   NA                0.1403509   0.0500721   0.2306296
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Normal weight         NA                0.0712074   0.0431342   0.0992806
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Underweight           NA                0.1627907   0.0523400   0.2732414
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Overweight or Obese   NA                0.0337838   0.0046477   0.0629199


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.0293751   0.0260032   0.0327471
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1119695-PROBIT        BELARUS      NA                   NA                0.0139710   0.0092040   0.0187379
6 months    ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.0400900   0.0355296   0.0446505
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920


### Parameter: RR


agecat      studyid                 country      intervention_level    baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  --------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO      ZIMBABWE     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO      ZIMBABWE     Underweight           Normal weight     1.7706875   1.2577421   2.4928277
Birth       ki1126311-ZVITAMBO      ZIMBABWE     Overweight or Obese   Normal weight     0.6510405   0.4805514   0.8820154
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Underweight           Normal weight     3.3805970   1.3120411   8.7104257
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Overweight or Obese   Normal weight     0.9679487   0.3454272   2.7123653
6 months    ki1119695-PROBIT        BELARUS      Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT        BELARUS      Underweight           Normal weight     1.9424937   1.2742862   2.9610945
6 months    ki1119695-PROBIT        BELARUS      Overweight or Obese   Normal weight     1.3513124   1.0426796   1.7513005
6 months    ki1126311-ZVITAMBO      ZIMBABWE     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO      ZIMBABWE     Underweight           Normal weight     1.1915398   0.7697000   1.8445719
6 months    ki1126311-ZVITAMBO      ZIMBABWE     Overweight or Obese   Normal weight     0.7670169   0.5739149   1.0250908
24 months   ki1017093-NIH-Birth     BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH   Underweight           Normal weight     1.6084746   1.0891148   2.3754983
24 months   ki1017093-NIH-Birth     BANGLADESH   Overweight or Obese   Normal weight     0.6946179   0.3510210   1.3745447
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Underweight           Normal weight     2.2861476   1.0430603   5.0107084
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Overweight or Obese   Normal weight     0.4744418   0.1838042   1.2246460


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO      ZIMBABWE     Normal weight        NA                -0.0025779   -0.0049352   -0.0002205
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Normal weight        NA                 0.0056778   -0.0047626    0.0161182
6 months    ki1119695-PROBIT        BELARUS      Normal weight        NA                 0.0019060    0.0002877    0.0035243
6 months    ki1126311-ZVITAMBO      ZIMBABWE     Normal weight        NA                -0.0026351   -0.0057826    0.0005123
24 months   ki1017093-NIH-Birth     BANGLADESH   Normal weight        NA                 0.0147284   -0.0127628    0.0422196
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Normal weight        NA                -0.0031140   -0.0196303    0.0134022


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO      ZIMBABWE     Normal weight        NA                -0.0877566   -0.1706307   -0.0107494
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Normal weight        NA                 0.1765045   -0.2103467    0.4397102
6 months    ki1119695-PROBIT        BELARUS      Normal weight        NA                 0.1364266    0.0194065    0.2394820
6 months    ki1126311-ZVITAMBO      ZIMBABWE     Normal weight        NA                -0.0657307   -0.1468772    0.0096742
24 months   ki1017093-NIH-Birth     BANGLADESH   Normal weight        NA                 0.0679408   -0.0675779    0.1862567
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Normal weight        NA                -0.0457320   -0.3182485    0.1704483
