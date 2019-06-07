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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        mbmi             ever_swasted   n_cell      n
------------  -------------------------  -----------------------------  --------------  -------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      209    254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       13    254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       24    254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        8    254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      207    221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        4    221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0       10    221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        0    221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0      177    242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1       16    242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       41    242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1        8    242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      229    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1        9    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0    238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0      282    290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1        3    290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        5    290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        0    290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      249    270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1       13    270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        8    270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0    270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      236    256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        6    256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0       13    256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        1    256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      266    410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1       35    410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0       86    410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       23    410
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      449    624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1       71    624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       77    624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       27    624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      512    669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1       30    669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0      116    669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       11    669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      632    755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1       55    755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       57    755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1       11    755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     2155   2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      152   2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       34   2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        4   2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0      625    779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1       30    779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      116    779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1        8    779
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0     5861   6694
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1      579   6694
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      219   6694
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1       35   6694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     8420   9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1      861   9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      438   9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       78   9797
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      685    837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1        7    837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0      143    837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1        2    837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      211    254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       11    254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       27    254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        5    254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      209    221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        2    221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 0       10    221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        0    221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               0      180    242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               1       13    242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 0       42    242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 1        7    242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               0      231    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               1        7    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0    238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight               0      284    290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight               1        1    290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                 0        5    290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                 1        0    290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      258    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1        4    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        8    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0    270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      239    256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        3    256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0       14    256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        0    256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      288    409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1       12    409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0      100    409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1        9    409
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      477    622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1       42    622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       89    622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       14    622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      522    669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1       20    669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0      119    669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1        8    669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      643    755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1       44    755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       62    755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1        6    755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     2230   2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1       77   2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       36   2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        2   2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight               0     5864   6694
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight               1      576   6694
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                 0      221   6694
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                 1       33   6694
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     8637   9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1      613   9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      456   9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       53   9759
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               0      224    271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               1        0    271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 0       47    271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 1        0    271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      207    240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1        2    240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       28    240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        3    240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      195    206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        2    206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        9    206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        0    206
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0      183    234
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1        3    234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       46    234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1        2    234
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      233    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1        2    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0    235
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0      262    269
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1        2    269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        5    269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        0    269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      238    254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1        9    254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        7    254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0    254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      229    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        3    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0       12    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        1    245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      255    382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1       24    382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0       85    382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       18    382
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      417    541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1       31    541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       77    541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       16    541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      496    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1       10    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0      105    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1        3    614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      649    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1       14    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       61    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1        6    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1863   1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1       79   1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       28   1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        2   1972
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0      625    779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1       30    779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      116    779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1        8    779
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0     6435   6692
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1        3   6692
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      252   6692
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1        2   6692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     7839   8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1      263   8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      428   8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       29   8559
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      677    823
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1        7    823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0      137    823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1        2    823


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
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/3768f097-19ba-4893-8376-78062e34cae6/0a4fddc6-7856-4c97-8ce0-88c767d93bf2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3768f097-19ba-4893-8376-78062e34cae6/0a4fddc6-7856-4c97-8ce0-88c767d93bf2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3768f097-19ba-4893-8376-78062e34cae6/0a4fddc6-7856-4c97-8ce0-88c767d93bf2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3768f097-19ba-4893-8376-78062e34cae6/0a4fddc6-7856-4c97-8ce0-88c767d93bf2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0585586   0.0276115   0.0895057
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.2500000   0.0996753   0.4003247
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0829016   0.0439201   0.1218830
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1632653   0.0595626   0.2669680
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1162791   0.0932879   0.1392703
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.2110092   0.1179380   0.3040804
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1365385   0.1070030   0.1660739
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.2596154   0.1752870   0.3439437
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0553506   0.0360855   0.0746156
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0866142   0.0376597   0.1355687
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0800582   0.0597515   0.1003650
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.1617647   0.0741844   0.2493450
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0458015   0.0359581   0.0556449
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.0645161   0.0198013   0.1092310
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0899068   0.0298072   0.1500065
0-24 months   ki1119695-PROBIT          BELARUS        Underweight          NA                0.1377953   0.0495010   0.2260896
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0927702   0.0868677   0.0986727
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.1511628   0.1202541   0.1820714
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0495495   0.0209465   0.0781526
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301989   0.2823011
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0673575   0.0319236   0.1027914
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446763   0.2410380
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0400000   0.0170477   0.0629523
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.0825688   0.0088981   0.1562395
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0809249   0.0574431   0.1044066
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1359223   0.0696853   0.2021593
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0369004   0.0210177   0.0527831
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0629921   0.0207072   0.1052771
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0640466   0.0457263   0.0823669
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.0882353   0.0207757   0.1556949
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0894410   0.0292809   0.1496010
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          NA                0.1299213   0.0426434   0.2171991
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0662703   0.0612007   0.0713398
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.1041257   0.0775910   0.1306604
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0860215   0.0463993   0.1256437
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.1747573   0.0918489   0.2576656
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0691964   0.0456740   0.0927188
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1720430   0.0952661   0.2488199
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0211161   0.0101649   0.0320673
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.0895522   0.0211337   0.1579708
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0458015   0.0359581   0.0556449
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.0645161   0.0198013   0.1092310
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0324611   0.0286020   0.0363203
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0634573   0.0411051   0.0858095


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0826772   0.0487426   0.1166117
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.0991736   0.0614374   0.1369097
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1414634   0.0976910   0.1852359
0-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0612855   0.0430966   0.0794744
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.0487805   0.0359763   0.0615847
0-24 months   ki1119695-PROBIT          BELARUS        NA                   NA                0.0917239   0.0322246   0.1512233
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0958457   0.0900162   0.1016752
0-6 months    ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0629921   0.0330555   0.0929287
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0826446   0.0478818   0.1174075
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0513447   0.0345770   0.0681125
0-6 months    ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0418535   0.0266676   0.0570395
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    ki1119695-PROBIT          BELARUS        NA                   NA                0.0909770   0.0313462   0.1506078
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0682447   0.0632414   0.0732480
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1099476   0.0559115   0.1639838
6-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.0487805   0.0359763   0.0615847
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0341161   0.0302702   0.0379621


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     4.269231   1.9172672    9.506412
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.969388   0.8935400    4.340587
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.814679   1.3451058    2.448179
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     1.901409   1.2870303    2.809067
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     1.564829   0.8057378    3.039067
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     2.020588   1.1112781    3.673947
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.408602   0.7417226    2.675070
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT          BELARUS        Underweight          Normal weight     1.532645   0.7922879    2.964833
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     1.629433   1.3153322    2.018541
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     3.153409   1.1694063    8.503450
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     2.120879   0.8925630    5.039564
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     2.064220   0.5489885    7.761556
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     1.679612   0.9525624    2.961586
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     1.707087   0.7690289    3.789382
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     1.377674   0.6090195    3.116460
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          Normal weight     1.452592   0.7514597    2.807899
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     1.571228   1.2041697    2.050175
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     2.031553   1.6858285    2.448179
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.486299   1.4187907    4.357008
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.240938   1.6843541   10.678014
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.408602   0.7417226    2.675070
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     1.954872   1.3479207    2.835125


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0241186    0.0032585   0.0449787
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0162720   -0.0065276   0.0390716
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0251843    0.0024533   0.0479154
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0205128    0.0051916   0.0358340
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0059349   -0.0040953   0.0159652
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0073590   -0.0009086   0.0156266
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0029790   -0.0038647   0.0098226
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0018171   -0.0012462   0.0048804
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0030755    0.0013981   0.0047528
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0134426   -0.0034159   0.0303011
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0152871   -0.0061918   0.0367661
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0113447   -0.0135098   0.0361993
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0091073   -0.0026406   0.0208552
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0049531   -0.0036567   0.0135629
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0021786   -0.0041367   0.0084939
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0015360   -0.0014333   0.0045053
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0019744    0.0005556   0.0033933
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0239261    0.0065389   0.0413134
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0176797    0.0034933   0.0318662
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0062811   -0.0002381   0.0128003
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0029790   -0.0038647   0.0098226
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0016550    0.0004349   0.0028751


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2917203    0.0252675   0.4853356
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1640760   -0.0913332   0.3597107
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1780273    0.0612924   0.2802453
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1306122    0.0295812   0.2211249
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0968410   -0.0799060   0.2446600
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0841824   -0.0136139   0.1725431
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0610687   -0.0788764   0.1828610
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0198105   -0.0187090   0.0568735
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0320880    0.0145165   0.0493461
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2134009   -0.0806932   0.4274618
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1849741   -0.1072848   0.4000936
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.2209524   -0.3996528   0.5663816
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1011561   -0.0369306   0.2208539
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1183448   -0.1080833   0.2985040
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0328967   -0.0669351   0.1233873
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0168834   -0.0198275   0.0522728
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0289316    0.0080116   0.0494104
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.2176139    0.1313053   0.2953474
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.2035049    0.0323440   0.3443906
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.2292609   -0.0217519   0.4186077
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0610687   -0.0788764   0.1828610
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0485112    0.0124746   0.0832327
