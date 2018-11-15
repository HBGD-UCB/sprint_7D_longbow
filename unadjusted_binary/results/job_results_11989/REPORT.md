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

unadjusted

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
```




# Results Detail

## Results Plots
![](/tmp/7e830fec-1851-4fc8-82ba-5dcede1ce0fb/04275d23-3df0-495c-b70c-e896d629bc5d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e830fec-1851-4fc8-82ba-5dcede1ce0fb/04275d23-3df0-495c-b70c-e896d629bc5d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e830fec-1851-4fc8-82ba-5dcede1ce0fb/04275d23-3df0-495c-b70c-e896d629bc5d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e830fec-1851-4fc8-82ba-5dcede1ce0fb/04275d23-3df0-495c-b70c-e896d629bc5d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level    baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  --------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight         NA                0.1772152   0.1175532   0.2368772
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight           NA                0.1666667   0.0330361   0.3002972
Birth       ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   NA                0.1551724   0.0618019   0.2485430
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         NA                0.1039709   0.0966058   0.1113360
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight           NA                0.1529412   0.1217016   0.1841807
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   NA                0.0760095   0.0656742   0.0863448
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight         NA                0.1895425   0.1273091   0.2517759
6 months    ki0047075b-MAL-ED         BANGLADESH   Underweight           NA                0.3125000   0.1515699   0.4734301
6 months    ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   NA                0.1071429   0.0259665   0.1883192
6 months    ki0047075b-MAL-ED         INDIA        Normal weight         NA                0.1970803   0.1303272   0.2638334
6 months    ki0047075b-MAL-ED         INDIA        Underweight           NA                0.1632653   0.0595562   0.2669744
6 months    ki0047075b-MAL-ED         INDIA        Overweight or Obese   NA                0.2040816   0.0909947   0.3171685
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight         NA                0.2701754   0.2442538   0.2960971
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight           NA                0.3639344   0.3268045   0.4010644
6 months    ki1000304b-SAS-CompFeed   INDIA        Overweight or Obese   NA                0.1791045   0.1236550   0.2345540
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight         NA                0.2540107   0.2098527   0.2981687
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight           NA                0.3763441   0.2777896   0.4748986
6 months    ki1017093-NIH-Birth       BANGLADESH   Overweight or Obese   NA                0.2000000   0.1062084   0.2937916
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight         NA                0.1648649   0.1270238   0.2027059
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight           NA                0.1980198   0.1202346   0.2758050
6 months    ki1017093b-PROVIDE        BANGLADESH   Overweight or Obese   NA                0.1081081   0.0502925   0.1659237
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight         NA                0.1986755   0.1619067   0.2354443
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight           NA                0.3731343   0.2572474   0.4890213
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Overweight or Obese   NA                0.1794872   0.1255865   0.2333878
6 months    ki1119695-PROBIT          BELARUS      Normal weight         NA                0.0588387   0.0454760   0.0722015
6 months    ki1119695-PROBIT          BELARUS      Underweight           NA                0.0930693   0.0662215   0.1199172
6 months    ki1119695-PROBIT          BELARUS      Overweight or Obese   NA                0.0580497   0.0442241   0.0718753
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         NA                0.1758763   0.1651609   0.1865917
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight           NA                0.2127072   0.1705488   0.2548655
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   NA                0.1296784   0.1145596   0.1447973
6 months    ki1148112-LCNI-5          MALAWI       Normal weight         NA                0.3640553   0.3270716   0.4010390
6 months    ki1148112-LCNI-5          MALAWI       Underweight           NA                0.4275862   0.3470130   0.5081595
6 months    ki1148112-LCNI-5          MALAWI       Overweight or Obese   NA                0.2000000   0.0759668   0.3240332
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight         NA                0.4850746   0.4002545   0.5698947
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight           NA                0.6551724   0.4817702   0.8285746
24 months   ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   NA                0.2857143   0.1589261   0.4125024
24 months   ki0047075b-MAL-ED         INDIA        Normal weight         NA                0.4360902   0.3516249   0.5205555
24 months   ki0047075b-MAL-ED         INDIA        Underweight           NA                0.3913043   0.2499564   0.5326523
24 months   ki0047075b-MAL-ED         INDIA        Overweight or Obese   NA                0.3829787   0.2436953   0.5222622
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight         NA                0.5547945   0.4977243   0.6118648
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight           NA                0.7125000   0.6132064   0.8117936
24 months   ki1017093-NIH-Birth       BANGLADESH   Overweight or Obese   NA                0.3333333   0.2108122   0.4558545
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight         NA                0.3489011   0.2998951   0.3979071
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight           NA                0.4200000   0.3231802   0.5168198
24 months   ki1017093b-PROVIDE        BANGLADESH   Overweight or Obese   NA                0.1785714   0.1075798   0.2495631
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight         NA                0.2724458   0.2238451   0.3210465
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight           NA                0.3720930   0.2274791   0.5167070
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Overweight or Obese   NA                0.1891892   0.1260283   0.2523500
24 months   ki1119695-PROBIT          BELARUS      Normal weight         NA                0.0894378   0.0568842   0.1219914
24 months   ki1119695-PROBIT          BELARUS      Underweight           NA                0.0985915   0.0083975   0.1887856
24 months   ki1119695-PROBIT          BELARUS      Overweight or Obese   NA                0.0778878   0.0440982   0.1116774
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         NA                0.6851852   0.6297131   0.7406573
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight           NA                0.6800000   0.4969017   0.8630983
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   NA                0.5731707   0.4659726   0.6803688
24 months   ki1148112-LCNI-5          MALAWI       Normal weight         NA                0.4400000   0.3940972   0.4859028
24 months   ki1148112-LCNI-5          MALAWI       Underweight           NA                0.4842105   0.3836294   0.5847916
24 months   ki1148112-LCNI-5          MALAWI       Overweight or Obese   NA                0.3125000   0.1517648   0.4732352


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
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight           Normal weight     1.4709998   1.1850072   1.8260147
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   Normal weight     0.7310651   0.6271484   0.8522007
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   Underweight           Normal weight     1.6487069   0.8951628   3.0365812
6 months    ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   Normal weight     0.5652709   0.2475405   1.2908239
6 months    ki0047075b-MAL-ED         INDIA        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA        Underweight           Normal weight     0.8284203   0.4032839   1.7017295
6 months    ki0047075b-MAL-ED         INDIA        Overweight or Obese   Normal weight     1.0355253   0.5408912   1.9824922
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight           Normal weight     1.3470300   1.1911136   1.5233558
6 months    ki1000304b-SAS-CompFeed   INDIA        Overweight or Obese   Normal weight     0.6629192   0.4859740   0.9042907
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight           Normal weight     1.4816072   1.0819925   2.0288125
6 months    ki1017093-NIH-Birth       BANGLADESH   Overweight or Obese   Normal weight     0.7873684   0.4774949   1.2983365
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight           Normal weight     1.2011037   0.7620698   1.8930681
6 months    ki1017093b-PROVIDE        BANGLADESH   Overweight or Obese   Normal weight     0.6557377   0.3664242   1.1734813
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight           Normal weight     1.8781095   1.3083005   2.6960894
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Overweight or Obese   Normal weight     0.9034188   0.6348797   1.2855436
6 months    ki1119695-PROBIT          BELARUS      Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT          BELARUS      Underweight           Normal weight     1.5817691   1.2149882   2.0592739
6 months    ki1119695-PROBIT          BELARUS      Overweight or Obese   Normal weight     0.9865897   0.8461219   1.1503771
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight           Normal weight     1.2094136   0.9829312   1.4880811
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   Normal weight     0.7373276   0.6464434   0.8409893
6 months    ki1148112-LCNI-5          MALAWI       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5          MALAWI       Underweight           Normal weight     1.1745089   0.9481652   1.4548850
6 months    ki1148112-LCNI-5          MALAWI       Overweight or Obese   Normal weight     0.5493671   0.2930477   1.0298808
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight           Normal weight     1.3506631   0.9835196   1.8548598
24 months   ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   Normal weight     0.5890110   0.3655773   0.9490030
24 months   ki0047075b-MAL-ED         INDIA        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA        Underweight           Normal weight     0.8973013   0.5955693   1.3518992
24 months   ki0047075b-MAL-ED         INDIA        Overweight or Obese   Normal weight     0.8782098   0.5816333   1.3260116
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight           Normal weight     1.2842593   1.0800087   1.5271375
24 months   ki1017093-NIH-Birth       BANGLADESH   Overweight or Obese   Normal weight     0.6008230   0.4101873   0.8800573
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight           Normal weight     1.2037795   0.9189926   1.5768192
24 months   ki1017093b-PROVIDE        BANGLADESH   Overweight or Obese   Normal weight     0.5118110   0.3357340   0.7802323
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight           Normal weight     1.3657505   0.8905379   2.0945481
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Overweight or Obese   Normal weight     0.6944103   0.4755835   1.0139243
24 months   ki1119695-PROBIT          BELARUS      Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT          BELARUS      Underweight           Normal weight     1.1023474   0.5043750   2.4092586
24 months   ki1119695-PROBIT          BELARUS      Overweight or Obese   Normal weight     0.8708597   0.5941359   1.2764698
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight           Normal weight     0.9924324   0.7491873   1.3146541
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   Normal weight     0.8365194   0.6822885   1.0256142
24 months   ki1148112-LCNI-5          MALAWI       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5          MALAWI       Underweight           Normal weight     1.1004785   0.8722295   1.3884566
24 months   ki1148112-LCNI-5          MALAWI       Overweight or Obese   Normal weight     0.7102273   0.4202118   1.2004012


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0064835   -0.0412261    0.0282591
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0047390   -0.0086873   -0.0007908
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0028205   -0.0400502    0.0344092
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0055909   -0.0480423    0.0368604
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0183331    0.0057464    0.0309199
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0141457   -0.0111588    0.0394503
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                -0.0050711   -0.0274084    0.0172663
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0111147   -0.0119238    0.0341532
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0010369   -0.0024933    0.0045671
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0104522   -0.0161762   -0.0047281
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0031696   -0.0143404    0.0206796
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0228105   -0.0740466    0.0284257
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0201610   -0.0738722    0.0335502
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                -0.0000160   -0.0322671    0.0322351
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                -0.0207761   -0.0497431    0.0081909
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                -0.0156365   -0.0443175    0.0130445
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                -0.0040446   -0.0162156    0.0081264
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0247077   -0.0557015    0.0062860
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0002080   -0.0213313    0.0217472


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0379747   -0.2625963    0.1466857
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0477570   -0.0882273   -0.0087917
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0151053   -0.2353941    0.1659028
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0291971   -0.2764898    0.1701879
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0635445    0.0198378    0.1053022
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0527518   -0.0463760    0.1424888
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                -0.0317350   -0.1813491    0.0989310
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0529801   -0.0633125    0.1565540
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0173176   -0.0436444    0.0747186
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0631841   -0.0982616   -0.0292270
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0086312   -0.0402171    0.0551856
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0493451   -0.1664556    0.0560076
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0484722   -0.1860186    0.0731225
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                -0.0000288   -0.0598850    0.0564471
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                -0.0633176   -0.1553794    0.0214086
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                -0.0608875   -0.1785532    0.0450305
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                -0.0473639   -0.2008294    0.0864887
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0374089   -0.0856609    0.0086985
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0004724   -0.0496747    0.0482238
