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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mbmi             wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0       30    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       63    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       14    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1       15    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       15     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     23
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0       48    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       80    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       22    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       25    175
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0       20     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       73     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     93
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0        5     34
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       25     34
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        3     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0       13     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       64     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        7     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       34     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        3     45
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0       86    207
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1       39    207
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0       55    207
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       27    207
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      152    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      176    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       50    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       43    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       87    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      134    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       37    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       44    302
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       94    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      174    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       22    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       20    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0      255    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      432    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        6    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        9    702
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0      143    176
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1        0    176
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0       33    176
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1        0    176
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0      227   1962
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1     1637   1962
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0       12   1962
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1       86   1962
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      974   2666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1491   2666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      101   2666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      100   2666
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0       42     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1        6     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0       23     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1        7     78
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0        6     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       39     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                0        6     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        9     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       11     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     14
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              0       14     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              1       43     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                0       11     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                1       12     80
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              0        9     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              1       34     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     43
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              1       11     11
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                1        0     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0        4     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       23     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       10     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        1     12
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0       32     91
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1       26     91
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                0       20     91
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       13     91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0       50    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      128    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       14    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       31    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       20    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      110    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       15    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       34    179
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       16    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      161    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0        4    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       16    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0       96    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      232    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        3    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        5    336
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              0      188   1909
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              1     1627   1909
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                0       10   1909
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                1       84   1909
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      236   1789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1434   1789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0       24   1789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1       95   1789
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                1        0      4
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0       24     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       24     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0        8     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        6     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0       34     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       37     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       11     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       13     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       39     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     50
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0        5     23
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       14     23
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        3     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0        9     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       41     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        6     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       24     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        2     33
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0       54    116
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1       13    116
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0       35    116
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       14    116
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      102    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1       48    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       36    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       12    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       67    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1       24    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       22    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       10    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       78    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1       13    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       18    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0      159    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      200    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        3    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        4    366
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0      143    176
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1        0    176
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0       33    176
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1        0    176
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0       39     53
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1       10     53
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0        2     53
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1        2     53
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      738    877
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1       57    877
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0       77    877
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1        5    877
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0       38     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1        6     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0       23     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1        7     74


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/1058305b-6067-4e30-bfd6-150cbeed71ee/666adeae-d948-40ee-825d-33830e111d20/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1058305b-6067-4e30-bfd6-150cbeed71ee/666adeae-d948-40ee-825d-33830e111d20/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1058305b-6067-4e30-bfd6-150cbeed71ee/666adeae-d948-40ee-825d-33830e111d20/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1058305b-6067-4e30-bfd6-150cbeed71ee/666adeae-d948-40ee-825d-33830e111d20/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.6774194   0.5768557   0.7779831
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.5172414   0.3618476   0.6726352
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.6250000   0.5312352   0.7187648
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5319149   0.3779503   0.6858794
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.3120000   0.2241434   0.3998566
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.3292683   0.2317022   0.4268344
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.5365854   0.4780574   0.5951134
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.4623656   0.3638762   0.5608549
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.6063348   0.5400676   0.6726021
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.5432099   0.4323617   0.6540581
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.6492537   0.5923744   0.7061331
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.4761905   0.3222340   0.6301469
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.6288210   0.5904220   0.6672199
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.6000000   0.3523180   0.8476820
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.8782189   0.8634070   0.8930308
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.8775510   0.8156053   0.9394968
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.6048682   0.5854705   0.6242658
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.4975124   0.4322744   0.5627505
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.1250000   0.0290888   0.2209112
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.2333333   0.0868920   0.3797747
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.8666667   0.7613735   0.9719599
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.6000000   0.3771424   0.8228576
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.7543860   0.6366726   0.8720993
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5217391   0.3196842   0.7237941
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.4482759   0.3185144   0.5780373
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.3939394   0.2247795   0.5630993
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.7191011   0.6526289   0.7855734
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.6888889   0.5565481   0.8212297
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.8461538   0.7852611   0.9070465
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.6938776   0.5657047   0.8220504
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.8964187   0.8822641   0.9105734
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                0.8936170   0.8306439   0.9565901
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.8586826   0.8420281   0.8753372
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.7983193   0.7270040   0.8696346
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.5000000   0.3485042   0.6514958
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4285714   0.1923941   0.6647488
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.5211268   0.3887216   0.6535319
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5416667   0.3131455   0.7701879
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1940299   0.0943300   0.2937297
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.2857143   0.1632185   0.4082101
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.3200000   0.2435094   0.3964906
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.2500000   0.1270597   0.3729403
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2637363   0.1740755   0.3533970
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.3125000   0.1324872   0.4925128
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0716981   0.0538446   0.0895517
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.0609756   0.0103160   0.1116352
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.1363636   0.0329768   0.2397505
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.2333333   0.0877343   0.3789324


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6393443   0.5530901   0.7255985
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6000000   0.5192868   0.6807132
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3188406   0.2532736   0.3844075
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5894040   0.5323948   0.6464131
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6258065   0.5718723   0.6797406
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6282051   0.5902579   0.6661523
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8781855   0.8637774   0.8925937
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5967742   0.5781484   0.6154000
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1666667   0.0842830   0.2490503
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8000000   0.6995926   0.9004074
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6875000   0.5825226   0.7924774
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4285714   0.3254972   0.5316457
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8044693   0.7471161   0.8618224
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8962808   0.8824705   0.9100911
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.8546674   0.8383989   0.8709359
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2327586   0.1548379   0.3106793
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0706956   0.0538314   0.0875597
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1756757   0.0897916   0.2615597


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.7635468   0.5460098   1.0677533
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     0.8510638   0.6142955   1.1790900
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.0553471   0.7011570   1.5884565
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.8616813   0.6782339   1.0947472
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     0.8958909   0.7106751   1.1293776
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     0.7334428   0.5245827   1.0254596
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     0.9541667   0.6286319   1.4482784
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     0.9992395   0.9292872   1.0744575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.8225139   0.7186365   0.9414064
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.8666667   0.6926702   5.0304525
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.6923077   0.4683665   1.0233224
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     0.6916077   0.4555175   1.0500610
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     0.8787879   0.5234410   1.4753682
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.9579861   0.7740550   1.1856229
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     0.8200371   0.6725676   0.9998413
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     0.9968746   0.9274210   1.0715294
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.9297024   0.8484841   1.0186951
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.8571429   0.4568613   1.6081334
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.0394144   0.6352743   1.7006549
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.4725275   0.7540956   2.8754142
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.7812500   0.4520464   1.3501968
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.1848958   0.6069821   2.3130472
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.8504493   0.3572482   2.0245419
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.7111111   0.6408783   4.5685760


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0380751   -0.0833803    0.0072301
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0250000   -0.0744272    0.0244272
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0068406   -0.0451028    0.0587839
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0163953   -0.0417725    0.0089818
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0169309   -0.0515998    0.0177381
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0234473   -0.0463683   -0.0005263
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0006158   -0.0068812    0.0056495
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0000334   -0.0032146    0.0031479
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0080940   -0.0132904   -0.0028975
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0416667   -0.0265326    0.1098659
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0666667   -0.1342155    0.0008822
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0668860   -0.1389733    0.0052014
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0197044   -0.0975242    0.0581153
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0060966   -0.0360118    0.0238185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0416846   -0.0817081   -0.0016610
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0001380   -0.0033163    0.0030404
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0040152   -0.0089320    0.0009016
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0161290   -0.0810894    0.0488313
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0051890   -0.0616084    0.0719865
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0387288   -0.0285201    0.1059777
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0169697   -0.0526533    0.0187139
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0126865   -0.0397556    0.0651286
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0010026   -0.0060302    0.0040251
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0393120   -0.0337215    0.1123456


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0595533   -0.1326431    0.0088199
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0416667   -0.1277222    0.0378221
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0214545   -0.1564268    0.1719742
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0315180   -0.0812990    0.0159712
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0287254   -0.0893744    0.0285470
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0374673   -0.0751624   -0.0010938
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0009803   -0.0110044    0.0089444
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0000380   -0.0036671    0.0035780
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0135629   -0.0223131   -0.0048875
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.2500000   -0.2838955    0.5618802
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0833333   -0.1747478    0.0009676
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0972887   -0.2109711    0.0057216
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0459770   -0.2445414    0.1209068
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0085506   -0.0513998    0.0325522
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0518162   -0.1038936   -0.0021957
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0001539   -0.0037063    0.0033859
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0046980   -0.0104745    0.0010455
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0333333   -0.1758408    0.0919028
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0098592   -0.1255562    0.1289827
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.1663903   -0.1815942    0.4118919
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0560000   -0.1803315    0.0552349
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0458953   -0.1620130    0.2166045
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0141814   -0.0877429    0.0544053
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.2237762   -0.3205992    0.5437500
