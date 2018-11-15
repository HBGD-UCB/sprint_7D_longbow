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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        mbmi                   pers_wast   n_cell       n
------------  -------------------------  -----------------------------  --------------------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                  0      150     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                  1        8     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                    0       27     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                    1        5     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese            0       58     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese            1        0     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                  0       84     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                  1        1     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                    0       10     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                    1        0     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese            0      120     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese            1        1     216
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                  0      130     240
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                  1       11     240
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                    0       42     240
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                    1        7     240
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese            0       47     240
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese            1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                  0      130     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                  1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                    0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                    1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese            0      104     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese            1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                  0      153     283
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                  1        1     283
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                    0        5     283
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                    1        0     283
0-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese            0      124     283
0-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese            1        0     283
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                  0      106     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                  1        1     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                    0        8     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                    1        0     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese            0      149     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese            1        1     265
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                  0      175     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                    0       14     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                    1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            0       64     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            1        0     253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                  0      814    1256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                  1       59    1256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                    0      275    1256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                    1       42    1256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese            0       62    1256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese            1        4    1256
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                  0      341     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                  1       29     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                    0       77     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                    1       18     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese            0       69     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese            1        0     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                  0      399     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                  1        7     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                    0      109     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                    1        8     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese            0      116     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese            1        0     639
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                  0      446     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                  1       18     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                    0       59     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                    1        8     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese            0      199     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese            1        0     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                  0     1088    2120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                  1       30    2120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                    0       35    2120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                    1        0    2120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            0      940    2120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            1       27    2120
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                  0     1166    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                  1      139    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                    0      182    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                    1       47    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese            0       94    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese            1        5    1633
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                  0     8078   13714
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                  1       64   13714
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                    0      520   13714
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                    1        2   13714
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese            0     5006   13714
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese            1       44   13714
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                  0     5426    8044
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                  1      100    8044
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                    0      400    8044
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                    1       20    8044
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese            0     2077    8044
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese            1       21    8044
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                  0      560     716
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                  1        4     716
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                    0      115     716
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                    1        2     716
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese            0       35     716
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese            1        0     716
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                  0      153     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                  1        5     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                    0       30     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                    1        2     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese            0       58     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese            1        0     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                  0       85     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                  1        0     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                    0       10     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                    1        0     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese            0      120     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese            1        1     216
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                  0      131     239
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                  1       10     239
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                    0       42     239
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                    1        7     239
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese            0       47     239
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese            1        2     239
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                  0      129     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                  1        4     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                    0        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                    1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese            0      103     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese            1        1     237
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                  0      154     283
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                  1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                    0        5     283
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                    1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese            0      124     283
0-6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese            1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                  0      105     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                  1        1     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                    0        7     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                    1        0     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese            0      149     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese            1        1     263
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                  0      175     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                    0       14     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                    1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            0       64     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            1        0     253
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                  0      398     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                  1        6     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                    0      111     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                    1        6     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese            0      113     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese            1        2     636
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                  0     1029    2016
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                  1       28    2016
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                    0       30    2016
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                    1        2    2016
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            0      906    2016
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            1       21    2016
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                  0      141     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                  1       11     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                    0       25     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                    1        5     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese            0       51     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese            1        1     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                  0       73     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                  1        1     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                    0        9     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                    1        0     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese            0      112     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese            1        1     196
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                  0      120     230
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                  1       14     230
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                    0       38     230
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                    1        9     230
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese            0       45     230
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese            1        4     230
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                  0      126     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                  1        2     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                    0        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                    1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese            0      103     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese            1        0     231
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                  0      134     250
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                  1        1     250
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                    0        5     250
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                    1        0     250
6-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese            0      109     250
6-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese            1        1     250
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                  0      101     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                  1        1     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                    0        7     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                    1        0     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese            0      141     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese            1        1     251
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                  0      165     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                  1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                    0       13     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                    1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            0       60     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            1        0     238
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                  0      675    1108
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                  1       94    1108
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                    0      207    1108
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                    1       73    1108
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese            0       52    1108
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese            1        7    1108
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                  0      306     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                  1       34     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                    0       68     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                    1       20     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese            0       63     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese            1        1     492
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                  0      361     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                  1       18     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                    0       91     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                    1       15     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese            0      110     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese            1        5     600
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                  0      419     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                  1       25     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                    0       54     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                    1       10     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese            0      182     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese            1        7     697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                  0      829    1668
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                  1       43    1668
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                    0       22    1668
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                    1        2    1668
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            0      735    1668
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese            1       37    1668
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                  0     1166    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                  1      139    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                    0      182    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                    1       47    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese            0       94    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese            1        5    1633
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                  0     4270    7037
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                  1        1    7037
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                    0      280    7037
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                    1        0    7037
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese            0     2485    7037
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese            1        1    7037
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                  0     1324    1962
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                  1       65    1962
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                    0      103    1962
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                    1        6    1962
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese            0      456    1962
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese            1        8    1962
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                  0      542     692
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                  1        4     692
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                    0      110     692
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                    1        2     692
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese            0       34     692
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese            1        0     692


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/28c989e9-8f02-45fd-afa4-7fa61f67ddd9/42755049-e339-4342-8404-063989001b22/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/28c989e9-8f02-45fd-afa4-7fa61f67ddd9/42755049-e339-4342-8404-063989001b22/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/28c989e9-8f02-45fd-afa4-7fa61f67ddd9/42755049-e339-4342-8404-063989001b22/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/28c989e9-8f02-45fd-afa4-7fa61f67ddd9/42755049-e339-4342-8404-063989001b22/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level    baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  --------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight         NA                0.1065134    0.0820823   0.1309446
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight           NA                0.2052402    0.0910824   0.3193980
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Overweight or Obese   NA                0.0505051   -0.0254111   0.1264212
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight         NA                0.0180963    0.0145815   0.0216111
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight           NA                0.0476190    0.0272512   0.0679869
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Overweight or Obese   NA                0.0100095    0.0057497   0.0142694
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight         NA                0.1222367    0.1008578   0.1436156
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight           NA                0.2607143    0.2202664   0.3011622
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Overweight or Obese   NA                0.1186441    0.0343650   0.2029232
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight         NA                0.0474934    0.0260625   0.0689244
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight           NA                0.1415094    0.0751018   0.2079170
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Overweight or Obese   NA                0.0434783    0.0061752   0.0807814
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight         NA                0.0563063    0.0348496   0.0777630
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight           NA                0.1562500    0.0672302   0.2452698
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Overweight or Obese   NA                0.0370370    0.0100937   0.0639804
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight         NA                0.1065134    0.0820823   0.1309446
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight           NA                0.2052402    0.0910824   0.3193980
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Overweight or Obese   NA                0.0505051   -0.0254111   0.1264212
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight         NA                0.0467963    0.0356865   0.0579061
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight           NA                0.0550459    0.0122193   0.0978724
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Overweight or Obese   NA                0.0172414    0.0053944   0.0290884


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1169626   0.0922087   0.1417166
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0175286   0.0146606   0.0203965
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1570397   0.1416255   0.1724539
6-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0633333   0.0438284   0.0828382
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1169626   0.0922087   0.1417166
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0402650   0.0315644   0.0489656


### Parameter: RR


agecat        studyid                   country        intervention_level    baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  --------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight           Normal weight     1.9268952   0.9809928   3.7848648
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Overweight or Obese   Normal weight     0.4741661   0.1073138   2.0951041
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight           Normal weight     2.6314286   1.6450453   4.2092557
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Overweight or Obese   Normal weight     0.5531268   0.3464649   0.8830599
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight           Normal weight     2.1328647   1.6045321   2.8351642
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Overweight or Obese   Normal weight     0.9706094   0.4409000   2.1367266
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight           Normal weight     2.9795597   1.5538628   5.7133589
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Overweight or Obese   Normal weight     0.9154590   0.3472439   2.4134766
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight           Normal weight     2.7750000   1.3982600   5.5072913
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Overweight or Obese   Normal weight     0.6577778   0.2893483   1.4953315
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight           Normal weight     1.9268952   0.9809928   3.7848648
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Overweight or Obese   Normal weight     0.4741661   0.1073138   2.0951041
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight           Normal weight     1.1762879   0.5214884   2.6532771
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Overweight or Obese   Normal weight     0.3684350   0.1780884   0.7622304


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.0104492   -0.0111788    0.0320772
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                -0.0005677   -0.0024665    0.0013312
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.0348030    0.0202814    0.0493247
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                 0.0158399   -0.0002689    0.0319488
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0039519   -0.0097003    0.0176042
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.0104492   -0.0111788    0.0320772
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                -0.0065312   -0.0114675   -0.0015950


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.0893382   -0.1062503    0.2503461
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                -0.0323859   -0.1464628    0.0703399
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.2216194    0.1201265    0.3114051
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                 0.2501042   -0.0377805    0.4581284
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0655834   -0.1898888    0.2662051
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.0893382   -0.1062503    0.2503461
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                -0.1622058   -0.2863881   -0.0500114
