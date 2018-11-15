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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        mbmi                   swasted   n_cell       n
----------  -------------------------  -----------------------------  --------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight                0      142     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight                1        7     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight                  0       28     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight                  1        0     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          0       55     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          1        1     233
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight                0       67     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight                1        0     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight                  0        9     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight                  1        0     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          0      100     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          1        0     176
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight                0      111     195
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight                1        4     195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight                  0       36     195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight                  1        2     195
Birth       ki0047075b-MAL-ED          INDIA                          Overweight or Obese          0       41     195
Birth       ki0047075b-MAL-ED          INDIA                          Overweight or Obese          1        1     195
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight                0       93     167
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight                1        2     167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight                  0        0     167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight                  1        0     167
Birth       ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          0       70     167
Birth       ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          1        2     167
Birth       ki0047075b-MAL-ED          PERU                           Normal weight                0      145     269
Birth       ki0047075b-MAL-ED          PERU                           Normal weight                1        0     269
Birth       ki0047075b-MAL-ED          PERU                           Underweight                  0        5     269
Birth       ki0047075b-MAL-ED          PERU                           Underweight                  1        0     269
Birth       ki0047075b-MAL-ED          PERU                           Overweight or Obese          0      119     269
Birth       ki0047075b-MAL-ED          PERU                           Overweight or Obese          1        0     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                0       93     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                1        1     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  0        5     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  1        0     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          0      127     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          1        0     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                0       76     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                1        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  0        7     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          0       32     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          1        0     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight                0       72     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight                1        0     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight                  0       31     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight                  1        2     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese          0        5     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese          1        0     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight                0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight                1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight                  0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight                  1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                0       12      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  0        6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          0        4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          1        0      23
Birth       ki1119695-PROBIT           BELARUS                        Normal weight                0     7568   13664
Birth       ki1119695-PROBIT           BELARUS                        Normal weight                1      543   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight                  0      478   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight                  1       43   13664
Birth       ki1119695-PROBIT           BELARUS                        Overweight or Obese          0     4721   13664
Birth       ki1119695-PROBIT           BELARUS                        Overweight or Obese          1      311   13664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                0     5811    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                1      354    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  0      415    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  1       41    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          0     2276    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          1      132    9029
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                0      152     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                  0       31     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                  1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          0       56     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                0       81     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                  0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                  1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          0      118     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                0      136     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight                  0       46     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight                  1        3     235
6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese          0       48     235
6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese          1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                0      133     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                  0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                  1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          0      103     236
6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight                0      149     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight                1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight                  0        5     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight                  1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese          0      118     272
6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese          1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                0       97     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                1        2     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  0        7     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          0      142     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                0      170     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  0       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          0       63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                0      832    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                1       22    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                  0      288    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                  1       16    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese          0       65    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese          1        2    1225
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                0      370     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                1        3     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                  0       91     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                  1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          0       70     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          1        0     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                0      369     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                1        1     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                  0       98     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                  1        3     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese          0      109     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese          1        1     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                0      453     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  0       67     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          0      195     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0     1026    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1        8    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       33    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        0    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          0      911    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          1        4    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight                0     7724   13024
6 months    ki1119695-PROBIT           BELARUS                        Normal weight                1        6   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight                  0      504   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight                  1        1   13024
6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese          0     4785   13024
6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese          1        4   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                0     4788    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                1       48    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  0      354    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  1        7    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          0     1877    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          1       13    7087
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                0      651     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                1        0     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight                  0      145     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight                  1        0     836
6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese          0       40     836
6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese          1        0     836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                0      134     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                  0       29     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                  1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          0       49     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese          1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                0       62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                  0        6     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                  1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          0       99     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese          1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                0      133     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                1        0     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight                  0       44     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight                  1        2     226
24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese          0       47     226
24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese          1        0     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                0      127     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                  0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                  1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          0      101     228
24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese          1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight                0      105     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight                1        1     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight                  0        4     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight                  1        0     201
24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese          0       91     201
24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese          1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                0       92     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  0        7     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          0      135     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese          1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                0      148     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  0       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          0       55     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          1        0     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                0      288     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                  0       73     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                  1        7     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          0       57     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese          1        0     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                0      359     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                1        5     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                  0       96     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                  1        4     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese          0      113     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese          1        0     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                0      321     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                1        2     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  0       42     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          0      147     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese          1        1     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese          1        0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight                0     2312    3941
24 months   ki1119695-PROBIT           BELARUS                        Normal weight                1        1    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight                  0      140    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight                  1        1    3941
24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese          0     1485    3941
24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese          1        2    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                0      243     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                1       19     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  0       22     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  1        3     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          0       66     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese          1        6     359
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                0      436     561
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                1        0     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight                  0       93     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight                  1        1     561
24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese          0       31     561
24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese          1        0     561


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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cef49479-c93a-4d19-af84-6bafd84f71f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cef49479-c93a-4d19-af84-6bafd84f71f5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cef49479-c93a-4d19-af84-6bafd84f71f5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cef49479-c93a-4d19-af84-6bafd84f71f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid              country    intervention_level    baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ---------  --------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT     BELARUS    Normal weight         NA                0.0669461   0.0331170   0.1007752
Birth      ki1119695-PROBIT     BELARUS    Underweight           NA                0.0825336   0.0313432   0.1337239
Birth      ki1119695-PROBIT     BELARUS    Overweight or Obese   NA                0.0618045   0.0302360   0.0933729
Birth      ki1126311-ZVITAMBO   ZIMBABWE   Normal weight         NA                0.0574209   0.0516133   0.0632286
Birth      ki1126311-ZVITAMBO   ZIMBABWE   Underweight           NA                0.0899123   0.0636555   0.1161690
Birth      ki1126311-ZVITAMBO   ZIMBABWE   Overweight or Obese   NA                0.0548173   0.0457253   0.0639093
6 months   ki1126311-ZVITAMBO   ZIMBABWE   Normal weight         NA                0.0099256   0.0071314   0.0127197
6 months   ki1126311-ZVITAMBO   ZIMBABWE   Underweight           NA                0.0193906   0.0051650   0.0336161
6 months   ki1126311-ZVITAMBO   ZIMBABWE   Overweight or Obese   NA                0.0068783   0.0031519   0.0106047


### Parameter: E(Y)


agecat     studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT     BELARUS    NA                   NA                0.0656470   0.0328690   0.0984250
Birth      ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0583675   0.0535316   0.0632034
6 months   ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0095950   0.0073253   0.0118648


### Parameter: RR


agecat     studyid              country    intervention_level    baseline_level     estimate    ci_lower   ci_upper
---------  -------------------  ---------  --------------------  ---------------  ----------  ----------  ---------
Birth      ki1119695-PROBIT     BELARUS    Normal weight         Normal weight     1.0000000   1.0000000   1.000000
Birth      ki1119695-PROBIT     BELARUS    Underweight           Normal weight     1.2328360   0.7496410   2.027483
Birth      ki1119695-PROBIT     BELARUS    Overweight or Obese   Normal weight     0.9231969   0.8292378   1.027802
Birth      ki1126311-ZVITAMBO   ZIMBABWE   Normal weight         Normal weight     1.0000000   1.0000000   1.000000
Birth      ki1126311-ZVITAMBO   ZIMBABWE   Underweight           Normal weight     1.5658452   1.1495615   2.132875
Birth      ki1126311-ZVITAMBO   ZIMBABWE   Overweight or Obese   Normal weight     0.9546568   0.7861014   1.159354
6 months   ki1126311-ZVITAMBO   ZIMBABWE   Normal weight         Normal weight     1.0000000   1.0000000   1.000000
6 months   ki1126311-ZVITAMBO   ZIMBABWE   Underweight           Normal weight     1.9536011   0.8903746   4.286462
6 months   ki1126311-ZVITAMBO   ZIMBABWE   Overweight or Obese   Normal weight     0.6929894   0.3763350   1.276082


### Parameter: PAR


agecat     studyid              country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -------------------  ---------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1119695-PROBIT     BELARUS    Normal weight        NA                -0.0012992   -0.0044702   0.0018719
Birth      ki1126311-ZVITAMBO   ZIMBABWE   Normal weight        NA                 0.0009466   -0.0023783   0.0042714
6 months   ki1126311-ZVITAMBO   ZIMBABWE   Normal weight        NA                -0.0003305   -0.0018484   0.0011874


### Parameter: PAF


agecat     studyid              country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -------------------  ---------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1119695-PROBIT     BELARUS    Normal weight        NA                -0.0197902   -0.0672923   0.0255977
Birth      ki1126311-ZVITAMBO   ZIMBABWE   Normal weight        NA                 0.0162172   -0.0424143   0.0715509
6 months   ki1126311-ZVITAMBO   ZIMBABWE   Normal weight        NA                -0.0344475   -0.2051430   0.1120708
