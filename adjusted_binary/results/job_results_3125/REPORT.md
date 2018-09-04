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

agecat      studyid                    country                        mbmi                   stunted   n_cell       n
----------  -------------------------  -----------------------------  --------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight                0      130     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight                1       28     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight                  0       25     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight                  1        5     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          0       49     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          1        9     246
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight                0       62     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight                1        8     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight                  0        7     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight                  1        2     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          0       96     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          1        9     184
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight                0       96     198
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight                1       21     198
Birth       ki0047075b-MAL-ED          INDIA                          Underweight                  0       32     198
Birth       ki0047075b-MAL-ED          INDIA                          Underweight                  1        7     198
Birth       ki0047075b-MAL-ED          INDIA                          Overweight or Obese          0       38     198
Birth       ki0047075b-MAL-ED          INDIA                          Overweight or Obese          1        4     198
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight                0       88     172
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight                1       11     172
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight                  0        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight                  1        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          0       66     172
Birth       ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          1        7     172
Birth       ki0047075b-MAL-ED          PERU                           Normal weight                0      130     276
Birth       ki0047075b-MAL-ED          PERU                           Normal weight                1       19     276
Birth       ki0047075b-MAL-ED          PERU                           Underweight                  0        3     276
Birth       ki0047075b-MAL-ED          PERU                           Underweight                  1        2     276
Birth       ki0047075b-MAL-ED          PERU                           Overweight or Obese          0      110     276
Birth       ki0047075b-MAL-ED          PERU                           Overweight or Obese          1       12     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                0       81     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                1       15     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  0        5     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          0      119     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          1        8     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                0       70     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                1       11     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  0        5     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  1        2     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          0       28     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          1        5     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight                0       64     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight                1       21     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight                  0       26     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight                  1       13     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese          0        5     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese          1        1     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight                0       22      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight                1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight                  0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight                  1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                0       13      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          1        0      27
Birth       ki1119695-PROBIT           BELARUS                        Normal weight                0     8129   13723
Birth       ki1119695-PROBIT           BELARUS                        Normal weight                1       20   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight                  0      522   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight                  1        1   13723
Birth       ki1119695-PROBIT           BELARUS                        Overweight or Obese          0     5039   13723
Birth       ki1119695-PROBIT           BELARUS                        Overweight or Obese          1       12   13723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                0     5912    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                1      686    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  0      432    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  1       78    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          0     2334    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          1      192    9634
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                0      124     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                1       29     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                  0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                  1       10     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          0       50     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          1        6     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                0       78     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                1        3     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                  0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                  1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          0      115     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          1        3     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                0      110     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                1       27     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight                  0       41     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight                  1        8     235
6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese          0       39     235
6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese          1       10     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                0      123     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                1       10     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                  0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                  1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          0      101     236
6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          1        2     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight                0      113     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight                1       36     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight                  0        3     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight                  1        2     272
6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese          0       96     272
6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese          1       22     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                0       77     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                1       22     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  0        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          0      118     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          1       25     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                0      127     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                1       43     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  0       11     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  1        3     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          0       51     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          1       12     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                0      624    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                1      231    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                  0      194    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                  1      111    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese          0       55    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese          1       12    1227
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                0      279     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                1       95     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                  0       58     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                  1       35     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          0       56     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          1       14     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                0      309     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                1       61     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                  0       81     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                  1       20     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese          0       99     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese          1       12     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                0      363     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                1       90     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  0       42     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  1       25     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          0      160     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          1       35     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0      942    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1       92    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       30    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        4    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          0      822    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          1       93    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight                0     7278   13027
6 months    ki1119695-PROBIT           BELARUS                        Normal weight                1      455   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight                  0      458   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight                  1       47   13027
6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese          0     4511   13027
6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese          1      278   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                0     3997    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                1      853    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  0      285    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  1       77    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          0     1651    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          1      246    7109
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                0      414     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                1      237     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight                  0       83     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight                  1       62     836
6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese          0       32     836
6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese          1        8     836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                0       69     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                1       65     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                  0       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                  1       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          0       35     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          1       14     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                0       59     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                1        3     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                  0        5     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                  1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          0       98     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          1        2     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                0       75     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                1       58     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight                  0       28     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight                  1       18     226
24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese          0       29     226
24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese          1       18     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                0       93     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                1       34     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                  0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                  1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          0       86     228
24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          1       15     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight                0       62     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight                1       44     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight                  0        2     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight                  1        2     201
24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese          0       63     201
24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese          1       28     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                0       54     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                1       38     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  0        2     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  1        5     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          0       96     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          1       39     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                0       37     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                1      111     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  1        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          0       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          1       34     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                0      130     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                1      162     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                  0       23     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                  1       57     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          0       38     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          1       19     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                0      237     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                1      127     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                  0       58     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                  1       42     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese          0       92     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese          1       20     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                0      235     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                1       88     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  0       27     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  1       16     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          0      120     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          1       28     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          1        1       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight                0     2138    4005
24 months   ki1119695-PROBIT           BELARUS                        Normal weight                1      210    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight                  0      128    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight                  1       14    4005
24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese          0     1397    4005
24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese          1      118    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                0       85     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                1      185     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  0        8     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  1       17     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          0       35     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          1       47     377
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                0      252     577
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                1      198     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight                  0       49     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight                  1       46     577
24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese          0       22     577
24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese          1       10     577


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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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
![](/tmp/f01f9f2f-1e59-4fff-9fc6-8b2c481e969e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f01f9f2f-1e59-4fff-9fc6-8b2c481e969e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f01f9f2f-1e59-4fff-9fc6-8b2c481e969e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f01f9f2f-1e59-4fff-9fc6-8b2c481e969e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level    baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  --------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight         NA                0.1772152   0.1175532   0.2368772
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight           NA                0.1666667   0.0330361   0.3002972
Birth       ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   NA                0.1551724   0.0618019   0.2485430
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         NA                0.1040930   0.0967120   0.1114740
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight           NA                0.1580681   0.1299760   0.1861603
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   NA                0.0751994   0.0647454   0.0856535
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight         NA                0.1895425   0.1273091   0.2517759
6 months    ki0047075b-MAL-ED         BANGLADESH   Underweight           NA                0.3125000   0.1515699   0.4734301
6 months    ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   NA                0.1071429   0.0259665   0.1883192
6 months    ki0047075b-MAL-ED         INDIA        Normal weight         NA                0.1970803   0.1303272   0.2638334
6 months    ki0047075b-MAL-ED         INDIA        Underweight           NA                0.1632653   0.0595562   0.2669744
6 months    ki0047075b-MAL-ED         INDIA        Overweight or Obese   NA                0.2040816   0.0909947   0.3171685
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight         NA                0.2714278   0.2452884   0.2975673
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight           NA                0.3631434   0.3279933   0.3982934
6 months    ki1000304b-SAS-CompFeed   INDIA        Overweight or Obese   NA                0.1752218   0.1323084   0.2181353
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight         NA                0.2546827   0.2106173   0.2987482
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight           NA                0.3834170   0.2847344   0.4820996
6 months    ki1017093-NIH-Birth       BANGLADESH   Overweight or Obese   NA                0.1908143   0.0968059   0.2848227
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight         NA                0.1662890   0.1284743   0.2041038
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight           NA                0.1963882   0.1244648   0.2683117
6 months    ki1017093b-PROVIDE        BANGLADESH   Overweight or Obese   NA                0.0955451   0.0454611   0.1456290
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight         NA                0.2008792   0.1639239   0.2378345
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight           NA                0.4759229   0.3779373   0.5739086
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Overweight or Obese   NA                0.2051230   0.1484885   0.2617576
6 months    ki1119695-PROBIT          BELARUS      Normal weight         NA                0.0587332   0.0454765   0.0719900
6 months    ki1119695-PROBIT          BELARUS      Underweight           NA                0.0956059   0.0757282   0.1154836
6 months    ki1119695-PROBIT          BELARUS      Overweight or Obese   NA                0.0584638   0.0447059   0.0722218
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         NA                0.1771307   0.1663916   0.1878699
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight           NA                0.2177029   0.1814010   0.2540048
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   NA                0.1272721   0.1122308   0.1423134
6 months    ki1148112-LCNI-5          MALAWI       Normal weight         NA                0.3640553   0.3270716   0.4010390
6 months    ki1148112-LCNI-5          MALAWI       Underweight           NA                0.4275862   0.3470130   0.5081595
6 months    ki1148112-LCNI-5          MALAWI       Overweight or Obese   NA                0.2000000   0.0759668   0.3240332
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight         NA                0.4808791   0.3964904   0.5652678
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight           NA                0.5860487   0.4440410   0.7280563
24 months   ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   NA                0.2479550   0.1349274   0.3609826
24 months   ki0047075b-MAL-ED         INDIA        Normal weight         NA                0.4462320   0.3631276   0.5293364
24 months   ki0047075b-MAL-ED         INDIA        Underweight           NA                0.4263244   0.2933757   0.5592732
24 months   ki0047075b-MAL-ED         INDIA        Overweight or Obese   NA                0.4585487   0.3306181   0.5864794
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight         NA                0.5548811   0.4980551   0.6117071
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight           NA                0.7146388   0.6168418   0.8124358
24 months   ki1017093-NIH-Birth       BANGLADESH   Overweight or Obese   NA                0.3261984   0.2111464   0.4412503
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight         NA                0.3514190   0.3028456   0.3999924
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight           NA                0.4359680   0.3517008   0.5202352
24 months   ki1017093b-PROVIDE        BANGLADESH   Overweight or Obese   NA                0.1647377   0.1036324   0.2258431
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight         NA                0.2721935   0.2238767   0.3205103
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight           NA                0.4563422   0.3346699   0.5780145
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Overweight or Obese   NA                0.1746906   0.1155729   0.2338083
24 months   ki1119695-PROBIT          BELARUS      Normal weight         NA                0.0893039   0.0565775   0.1220303
24 months   ki1119695-PROBIT          BELARUS      Underweight           NA                0.1058730   0.0275599   0.1841862
24 months   ki1119695-PROBIT          BELARUS      Overweight or Obese   NA                0.0782973   0.0433854   0.1132092
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         NA                0.6851852   0.6297131   0.7406573
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight           NA                0.6800000   0.4969017   0.8630983
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   NA                0.5731707   0.4659726   0.6803688
24 months   ki1148112-LCNI-5          MALAWI       Normal weight         NA                0.4400492   0.3942356   0.4858628
24 months   ki1148112-LCNI-5          MALAWI       Underweight           NA                0.4949114   0.3972889   0.5925339
24 months   ki1148112-LCNI-5          MALAWI       Overweight or Obese   NA                0.3097453   0.1631103   0.4563803


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1707317   0.1236156   0.2178478
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0992319   0.0932615   0.1052022
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.1914894   0.1410749   0.2419038
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2885086   0.2628530   0.3141641
6 months    ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1597938   0.1299995   0.1895881
6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0598756   0.0470544   0.0726968
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1654241   0.1567862   0.1740620
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3672249   0.3345288   0.3999210
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.4159292   0.3515272   0.4803312
24 months   ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3281250   0.2897474   0.3665026
24 months   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.0853933   0.0554084   0.1153781
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.6604775   0.6126125   0.7083424
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4402080   0.3996684   0.4807475


### Parameter: RR


agecat      studyid                   country      intervention_level    baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  --------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight           Normal weight     0.9404762   0.3941728   2.2439285
Birth       ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   Normal weight     0.8756158   0.4394073   1.7448573
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight           Normal weight     1.5185278   1.2541200   1.8386811
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   Normal weight     0.7224254   0.6180652   0.8444067
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   Underweight           Normal weight     1.6487069   0.8951628   3.0365812
6 months    ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   Normal weight     0.5652709   0.2475405   1.2908239
6 months    ki0047075b-MAL-ED         INDIA        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA        Underweight           Normal weight     0.8284203   0.4032839   1.7017295
6 months    ki0047075b-MAL-ED         INDIA        Overweight or Obese   Normal weight     1.0355253   0.5408912   1.9824922
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight           Normal weight     1.3379002   1.2010583   1.4903331
6 months    ki1000304b-SAS-CompFeed   INDIA        Overweight or Obese   Normal weight     0.6455559   0.5013650   0.8312156
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight           Normal weight     1.5054693   1.1043956   2.0521973
6 months    ki1017093-NIH-Birth       BANGLADESH   Overweight or Obese   Normal weight     0.7492236   0.4445342   1.2627512
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight           Normal weight     1.1810053   0.7676008   1.8170560
6 months    ki1017093b-PROVIDE        BANGLADESH   Overweight or Obese   Normal weight     0.5745722   0.3243502   1.0178298
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight           Normal weight     2.3691993   1.7959088   3.1254958
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Overweight or Obese   Normal weight     1.0211261   0.7327760   1.4229430
6 months    ki1119695-PROBIT          BELARUS      Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT          BELARUS      Underweight           Normal weight     1.6277992   1.3184146   2.0097852
6 months    ki1119695-PROBIT          BELARUS      Overweight or Obese   Normal weight     0.9954130   0.8530926   1.1614766
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight           Normal weight     1.2290523   1.0293074   1.4675592
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   Normal weight     0.7185210   0.6291857   0.8205407
6 months    ki1148112-LCNI-5          MALAWI       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5          MALAWI       Underweight           Normal weight     1.1745089   0.9481652   1.4548850
6 months    ki1148112-LCNI-5          MALAWI       Overweight or Obese   Normal weight     0.5493671   0.2930477   1.0298808
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight           Normal weight     1.2187028   0.9055701   1.6401121
24 months   ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   Normal weight     0.5156286   0.3161072   0.8410844
24 months   ki0047075b-MAL-ED         INDIA        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA        Underweight           Normal weight     0.9553874   0.6650506   1.3724746
24 months   ki0047075b-MAL-ED         INDIA        Overweight or Obese   Normal weight     1.0276017   0.7339926   1.4386593
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight           Normal weight     1.2879135   1.0857715   1.5276890
24 months   ki1017093-NIH-Birth       BANGLADESH   Overweight or Obese   Normal weight     0.5878708   0.4072703   0.8485569
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight           Normal weight     1.2405933   0.9784599   1.5729533
24 months   ki1017093b-PROVIDE        BANGLADESH   Overweight or Obese   Normal weight     0.4687787   0.3156256   0.6962474
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight           Normal weight     1.6765360   1.2174918   2.3086588
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Overweight or Obese   Normal weight     0.6417883   0.4379250   0.9405543
24 months   ki1119695-PROBIT          BELARUS      Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT          BELARUS      Underweight           Normal weight     1.1855367   0.6299674   2.2310634
24 months   ki1119695-PROBIT          BELARUS      Overweight or Obese   Normal weight     0.8767510   0.5924273   1.2975302
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight           Normal weight     0.9924324   0.7491873   1.3146541
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   Normal weight     0.8365194   0.6822885   1.0256142
24 months   ki1148112-LCNI-5          MALAWI       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5          MALAWI       Underweight           Normal weight     1.1246728   0.8997924   1.4057565
24 months   ki1148112-LCNI-5          MALAWI       Overweight or Obese   Normal weight     0.7038879   0.4335117   1.1428944


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0064835   -0.0412261    0.0282591
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0048611   -0.0088954   -0.0008269
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0028205   -0.0400502    0.0344092
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0055909   -0.0480423    0.0368604
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0170807    0.0046515    0.0295099
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0134737   -0.0118756    0.0388230
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                -0.0064952   -0.0289339    0.0159434
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0089110   -0.0144849    0.0323068
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0011424   -0.0025762    0.0048610
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0117066   -0.0175448   -0.0058684
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0031696   -0.0143404    0.0206796
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0186149   -0.0697155    0.0324857
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0303028   -0.0833853    0.0227797
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                -0.0001025   -0.0323032    0.0320981
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                -0.0232940   -0.0522135    0.0056255
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                -0.0153841   -0.0443222    0.0135539
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                -0.0039106   -0.0158725    0.0080512
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0247077   -0.0557015    0.0062860
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0001588   -0.0214161    0.0217337


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0379747   -0.2625963    0.1466857
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0489875   -0.0903885   -0.0091585
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0151053   -0.2353941    0.1659028
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0291971   -0.2764898    0.1701879
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0592035    0.0159094    0.1005930
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0502456   -0.0490008    0.1401023
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                -0.0406475   -0.1909677    0.0906998
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0424757   -0.0756247    0.1476090
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0190798   -0.0450639    0.0792865
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0707672   -0.1065964   -0.0360981
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0086312   -0.0402171    0.0551856
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0402690   -0.1570875    0.0647556
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0728556   -0.2090504    0.0479974
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                -0.0001848   -0.0599445    0.0562056
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                -0.0709912   -0.1630755    0.0138026
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                -0.0599049   -0.1788751    0.0470590
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                -0.0457957   -0.1960057    0.0855491
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0374089   -0.0856609    0.0086985
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0003607   -0.0498712    0.0481891
