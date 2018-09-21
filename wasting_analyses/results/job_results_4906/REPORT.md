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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
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

agecat        studyid                    country                        mbmi                   wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    0       28    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    1       51    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      0       14    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      1       15    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              0        2    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              1       12    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    0        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    1        8     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      1        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              0        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              1        7     23
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    0       40    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    1       70    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      0       22    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      1       25    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              0        8    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              1       10    175
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    0       17     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    1       50     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      1        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              1       23     93
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    0        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    1       17     34
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      1        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              1        8     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    0        8     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    1       37     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      1        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              0        5     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              1       27     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    0        6     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    1       28     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      1        3     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1        6     45
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    0      270    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    1      179    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      0      171    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      1       92    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              0       17    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              1       15    744
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    0      139    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    1      152    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      0       50    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      1       43    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              0       13    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              1       24    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    0       73    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    1      111    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      0       37    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      1       44    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              0       14    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              1       23    302
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    0       79    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    1      135    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      0       22    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      1       20    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              0       15    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              1       39    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    0      144    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    1      242    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      0        6    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      1        9    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0      111    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1      190    702
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    0      580    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    1       25    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      0      135    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      1        8    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              0       32    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              1        1    781
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    0      296   3956
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    1     2100   3956
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      0       23   3956
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      1      160   3956
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              0      168   3956
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              1     1209   3956
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    0      775   2666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    1     1141   2666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      0      101   2666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      1      100   2666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              0      199   2666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              1      350   2666
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    0       42     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    1        6     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      0       23     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      1        7     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              0        0     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              1        0     78
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    0        6     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    1       31     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                      0        6     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                      1        9     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              0        0     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              1        8     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                    1        4     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                      0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                      1        2     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              1        7     14
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                    0       12     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                    1       36     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                      0       11     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                      1       12     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese              0        2     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese              1        7     80
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                    0        8     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                    1       24     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                      0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                      1        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              0        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              1       10     43
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                    1        6     11
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                      0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                      1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese              1        5     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    0        3     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    1       12     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      0        0     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      1        0     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              0        1     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              1       11     27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    1        7     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      1        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1        3     12
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    0       86    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    1      102    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                      0       54    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                      1       49    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              0        6    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              1        9    306
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    0       45    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    1      111    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                      0       14    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                      1       31    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              0        5    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              1       17    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    0       16    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    1       92    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                      0       15    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                      1       34    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              0        4    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              1       18    179
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    0       14    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    1      126    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      0        4    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      1       16    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              0        2    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              1       35    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    0       54    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    1      124    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      0        3    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      1        5    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0       42    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1      108    336
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                    0      227   3814
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                    1     2081   3814
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                      0       16   3814
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                      1      157   3814
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese              0      138   3814
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese              1     1195   3814
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    0      192   1789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    1     1093   1789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      0       24   1789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      1       95   1789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              0       44   1789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              1      341   1789
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                    0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                      0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                      1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese              0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese              1        0      4
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    0       22     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    1       20     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      0        8     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      1        6     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              1        4     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    1        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    0       28     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    1       34     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      0       11     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      1       13     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              0        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              1        3     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    0        9     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    1       26     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      1        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              1       13     50
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    0        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    1       11     23
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      1        3     23
6-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              1        3     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    0        5     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    1       25     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      1        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              0        4     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              1       16     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    0        5     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    1       21     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      1        2     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1        3     33
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    0      184    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    1       77    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      0      117    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      1       43    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              0       11    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              1        6    438
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    0       94    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    1       41    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      0       36    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      1       12    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              0        8    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              1        7    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    0       57    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    1       19    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      0       22    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      1       10    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              0       10    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              1        5    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    0       65    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    1        9    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      0       18    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      1        4    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              0       13    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    0       90    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    1      118    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      0        3    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      1        4    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0       69    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1       82    366
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    0      580    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    1       25    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      0      135    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      1        8    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              0       32    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              1        1    781
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    0       69    142
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    1       19    142
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      0        7    142
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      1        3    142
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              0       30    142
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              1       14    142
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    0      583    877
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    1       48    877
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      0       77    877
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      1        5    877
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              0      155    877
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              1        9    877
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    0       38     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    1        6     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      0       23     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      1        7     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              0        0     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              1        0     74


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/383dd29d-2609-411c-a4c8-6ed9c6469c6d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/383dd29d-2609-411c-a4c8-6ed9c6469c6d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/383dd29d-2609-411c-a4c8-6ed9c6469c6d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/383dd29d-2609-411c-a4c8-6ed9c6469c6d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level    baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.6363636   0.5362335   0.7364938
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.5319149   0.3779503   0.6858794
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.5555556   0.2937267   0.8173844
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.4002062   0.3520469   0.4483656
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.3502179   0.2940557   0.4063801
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.4825987   0.3015633   0.6636342
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.5251285   0.4639152   0.5863417
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.4753690   0.3793778   0.5713603
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.6982028   0.5337393   0.8626663
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.6001740   0.5274970   0.6728510
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.5180613   0.4109014   0.6252212
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.5719449   0.4265968   0.7172931
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.6287079   0.5653219   0.6920938
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.5109878   0.3715022   0.6504734
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.7647886   0.6497050   0.8798721
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.6269430   0.5765029   0.6773831
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.6000000   0.3102120   0.8897880
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.6312292   0.5725732   0.6898853
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.8771561   0.8641586   0.8901537
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.8704836   0.8293352   0.9116320
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.8811536   0.8640803   0.8982269
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.5964048   0.5746235   0.6181862
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.5128383   0.4540867   0.5715898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.6493222   0.6106576   0.6879868
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.5425532   0.4710034   0.6141030
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.4757282   0.3780364   0.5734199
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.6000000   0.3449982   0.8550017
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.7115385   0.6399635   0.7831134
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.6888889   0.5565481   0.8212297
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.7727273   0.5964259   0.9490287
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.9012519   0.8889576   0.9135462
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           NA                0.9009337   0.8626790   0.9391885
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.8995207   0.8831801   0.9158614
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.8510745   0.8318529   0.8702961
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.8087056   0.7486558   0.8687554
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.8864202   0.8555776   0.9172627
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.2950192   0.2376229   0.3524154
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.2687500   0.1996612   0.3378388
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.3529412   0.1170851   0.5887972
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.3037037   0.2251033   0.3823041
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.2500000   0.1270597   0.3729403
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.4666667   0.1865148   0.7468185
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.2500000   0.1514093   0.3485907
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.3125000   0.1324872   0.4925128
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.3333333   0.1209556   0.5457111
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.0760697   0.0555576   0.0965819
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.0609756   0.0103160   0.1116352
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.0548780   0.0194551   0.0903010


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6000000   0.5192868   0.6807132
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3844086   0.3477135   0.4211037
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5894040   0.5323948   0.6464131
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6258065   0.5718723   0.6797406
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6282051   0.5902579   0.6661523
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8768959   0.8667536   0.8870382
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5967742   0.5781484   0.6154000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5228758   0.4664267   0.5793250
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.9001049   0.8905121   0.9096977
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.8546674   0.8383989   0.8709359
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2876712   0.2441703   0.3311721
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0706956   0.0538314   0.0875597


### Parameter: RR


agecat        studyid                    country                        intervention_level    baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     0.8358663   0.6012549   1.1620235
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.8730159   0.5311732   1.4348554
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     0.8750936   0.7159708   1.0695811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     1.2058750   0.8132835   1.7879801
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     0.9052433   0.7169098   1.1430523
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     1.3295847   1.0220463   1.7296630
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     0.8631851   0.6791571   1.0970783
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.9529651   0.7191852   1.2627382
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     0.8127587   0.6075062   1.0873581
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     1.2164451   1.0148867   1.4580333
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     0.9570248   0.5865140   1.5615934
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     1.0068367   0.8903835   1.1385209
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     0.9923930   0.9444274   1.0427947
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     1.0045573   0.9803484   1.0293641
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     0.8598828   0.7625122   0.9696873
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     1.0887273   1.0153576   1.1673986
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     0.8768323   0.6869472   1.1192052
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     1.1058823   0.7086812   1.7257065
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     0.9681682   0.7794242   1.2026180
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     1.0859951   0.8463273   1.3935333
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     0.9996470   0.9560435   1.0452391
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.9980791   0.9756637   1.0210096
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     0.9502171   0.8792626   1.0268974
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     1.0415306   0.9992137   1.0856397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     0.9109578   0.6599115   1.2575081
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     1.1963331   0.5964601   2.3995113
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     0.8231707   0.4720661   1.4354135
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     1.5365854   0.7988788   2.9555102
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.2500000   0.6218966   2.5124757
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     1.3333333   0.6302141   2.8209109
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     0.8015752   0.3346533   1.9199653
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.7214177   0.3584089   1.4520942


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0363636   -0.0990902   0.0263629
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0157976   -0.0451721   0.0135768
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0049385   -0.0383439   0.0284670
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0107701   -0.0569938   0.0354537
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0029014   -0.0401685   0.0343657
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0012621   -0.0331813   0.0357056
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0002603   -0.0084959   0.0079753
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0003694   -0.0112137   0.0119525
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0196774   -0.0646129   0.0252582
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0014660   -0.0370775   0.0400096
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0011470   -0.0090220   0.0067279
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0035929   -0.0063686   0.0135544
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0073479   -0.0428532   0.0281574
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0006734   -0.0456215   0.0442747
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0264228   -0.0392338   0.0920793
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0053742   -0.0153652   0.0046169


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0606061   -0.1712012   0.0395457
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0410960   -0.1202779   0.0324893
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0094936   -0.0757846   0.0527125
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0182728   -0.0998559   0.0572588
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0046363   -0.0660181   0.0532111
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0020091   -0.0543494   0.0553551
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0002968   -0.0097329   0.0090511
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0006189   -0.0189800   0.0198409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0376330   -0.1274107   0.0449956
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0020561   -0.0534973   0.0546801
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0012743   -0.0100618   0.0074367
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0042038   -0.0075217   0.0157929
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0255428   -0.1565687   0.0906394
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0022222   -0.1620994   0.1356597
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0955882   -0.1740688   0.3033111
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0760186   -0.2261275   0.0557131
