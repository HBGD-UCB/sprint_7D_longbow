---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mbmi             ever_wasted   n_cell      n
------------  -------------------------  -----------------------------  --------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0      154    254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       68    254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       15    254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1       17    254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0      194    221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       17    221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        8    221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2    221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0      107    242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       86    242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       20    242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       29    242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0      169    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       69    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0    238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0      261    290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       24    290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        3    290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        2    290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      207    270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       55    270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        8    270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0    270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      214    256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       28    256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       10    256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        4    256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      210    410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1       91    410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0       52    410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       57    410
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      282    624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      238    624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       44    624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       60    624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0      364    669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      178    669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       64    669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       63    669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0      469    755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      218    755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       36    755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       32    755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1764   2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      543   2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       25   2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1       13   2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0      512    779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1      143    779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0       91    779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1       33    779
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0     4610   6694
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1     1830   6694
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0      159   6694
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1       95   6694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7048   9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     2233   9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      348   9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      168   9797
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0      651    837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1       41    837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0      120    837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1       25    837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0      178    254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       44    254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       19    254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                1       13    254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              0      199    221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       12    221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                0        8    221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2    221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              0      138    242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              1       55    242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                0       28    242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                1       21    242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              0      195    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              1       43    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                0        0    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                1        0    238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              0      274    290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              1       11    290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                0        5    290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                1        0    290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      236    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       26    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        8    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0    270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      232    256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       10    256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       13    256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        1    256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      246    409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1       54    409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                0       78    409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       31    409
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      341    622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      178    622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       59    622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       44    622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0      414    669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      128    669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       79    669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       48    669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0      512    755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      175    755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       48    755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       20    755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1986   2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      321   2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       30   2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        8   2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              0     4644   6694
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              1     1796   6694
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                0      160   6694
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                1       94   6694
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7587   9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1663   9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      391   9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      118   9759
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              0      220    271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              1        4    271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                0       47    271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                1        0    271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0      174    240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       35    240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       22    240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        9    240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0      191    206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1        6    206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        9    206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        0    206
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0      138    234
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       48    234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       32    234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       16    234
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0      199    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       36    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0    235
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0      249    269
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       15    269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        3    269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        2    269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      211    254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       36    254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        7    254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0    254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      209    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       23    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       10    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        3    245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      219    382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1       60    382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0       63    382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       40    382
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      326    541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      122    541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       56    541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       37    541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0      434    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1       72    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       81    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       27    614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0      585    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1       78    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       49    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       18    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1630   1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      312   1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       24   1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        6   1972
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0      512    779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1      143    779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0       91    779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1       33    779
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0     6389   6692
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1       49   6692
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0      250   6692
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1        4   6692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7351   8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1      751   8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      382   8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1       75   8559
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0      646    823
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1       38    823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0      114    823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1       25    823


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a10ab329-e2f2-4be0-b8fb-c84f4b2425cb/a55a9e78-0561-4522-a628-8db4ee293498/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a10ab329-e2f2-4be0-b8fb-c84f4b2425cb/a55a9e78-0561-4522-a628-8db4ee293498/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3699629   0.2770692   0.4628566
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4720854   0.3888601   0.5553107
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3071321   0.2573813   0.3568830
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4540975   0.4111579   0.4970371
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3246476   0.2850222   0.3642731
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2970361   0.2593964   0.3346757
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2354495   0.2179584   0.2529406
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2170346   0.1756712   0.2583981
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2952030   0.1927731   0.3976330
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2420974   0.2319205   0.2522742
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0587307   0.0412586   0.0762028
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2304570   0.1534439   0.3074701
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2718221   0.2089207   0.3347236
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1865131   0.1390776   0.2339487
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3043509   0.2616256   0.3470763
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2325242   0.1968845   0.2681640
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2589926   0.2135120   0.3044733
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1391387   0.1248854   0.1533919
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2921286   0.1900549   0.3942023
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1827818   0.1738706   0.1916929
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1674863   0.1167051   0.2182675
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2991940   0.2277227   0.3706653
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2159893   0.2023678   0.2296108
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2830560   0.2367133   0.3293988
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1458272   0.1145224   0.1771320
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1176899   0.0929543   0.1424255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1925165   0.1495259   0.2355070
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2170346   0.1756712   0.2583981
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0938161   0.0846851   0.1029471
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0551070   0.0380601   0.0721539


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4752066   0.4121581   0.5382551
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.3609756   0.2943508   0.4276005
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3311258   0.2975342   0.3647175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2371002   0.2198828   0.2543177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2259307   0.1907517   0.2611097
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.2875710   0.1859343   0.3892076
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2450750   0.2365573   0.2535928
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0788530   0.0605839   0.0971222
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2244094   0.1730022   0.2758167
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3140496   0.2554513   0.3726479
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2078240   0.1493922   0.2662557
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2582781   0.2270370   0.2895193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1402985   0.1262390   0.1543580
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.2823424   0.1800585   0.3846263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1824982   0.1748345   0.1901620
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.1833333   0.1342773   0.2323893
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.2735043   0.2162683   0.3307402
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2617801   0.2144185   0.3091417
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1612576   0.1450216   0.1774936
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2259307   0.1907517   0.2611097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0965066   0.0902505   0.1027627
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0765492   0.0583736   0.0947248


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9045385   0.7424279   1.1020463
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0066116   0.9007039   1.1249721
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1753105   1.1457230   1.2056620
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0516775   1.0107791   1.0942307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1096313   1.0451107   1.1781352
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1147663   1.0405803   1.1942413
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0070110   0.9961916   1.0179479
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0409890   0.9232653   1.1737235
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9741463   0.9534988   0.9952410
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0122995   0.9895072   1.0356167
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.3426206   1.1212800   1.6076538
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9737584   0.7525057   1.2600642
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1553496   1.0193478   1.3094967
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1142592   1.0594217   1.1719352
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1727028   1.0771845   1.2766912
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1314056   1.0471763   1.2224099
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9972413   0.8779543   1.1327357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0083359   0.9927503   1.0241662
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           0.9665003   0.9362258   0.9977537
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9984486   0.9742605   1.0232372
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0946167   0.9589806   1.2494370
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9141368   0.7847840   1.0648103
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2120051   1.0639083   1.3807170
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0383109   0.9464642   1.1390706
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1056769   0.9906478   1.2340627
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1174015   1.0222605   1.2213971
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8376303   0.6823883   1.0281895
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0409890   0.9232653   1.1737235
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0286781   0.9566174   1.1061670
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.3891014   1.1471332   1.6821087


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0353172   -0.1080919    0.0374575
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0031212   -0.0493457    0.0555882
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0538435    0.0365155    0.0711715
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0234666    0.0055361    0.0413971
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0355916    0.0161366    0.0550465
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0340897    0.0135950    0.0545845
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0016507   -0.0008856    0.0041871
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0088960   -0.0172730    0.0350651
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0076321   -0.0136370   -0.0016271
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0029777   -0.0025339    0.0084892
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0201223    0.0086820    0.0315627
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0060476   -0.0653801    0.0532850
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0422275    0.0077889    0.0766660
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0213108    0.0074641    0.0351576
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0525623    0.0265251    0.0785995
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0305550    0.0124250    0.0486850
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0007145   -0.0337097    0.0322807
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0011599   -0.0010029    0.0033226
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0097862   -0.0181499   -0.0014225
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0002836   -0.0047662    0.0041990
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0158470   -0.0065446    0.0382386
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0256898   -0.0708092    0.0194297
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0457908    0.0095500    0.0820317
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0108441   -0.0153436    0.0370319
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0154106   -0.0007508    0.0315719
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0138170    0.0031415    0.0244925
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0312588   -0.0706716    0.0081539
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0088960   -0.0172730    0.0350651
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0026905   -0.0041254    0.0095063
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0214422    0.0098670    0.0330175


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.1055361   -0.3469321    0.0925971
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0065681   -0.1102428    0.1110891
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1491610    0.1271887    0.1705802
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0491381    0.0106641    0.0861159
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0987998    0.0431636    0.1512010
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1029510    0.0389978    0.1626483
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0069622   -0.0038230    0.0176314
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0393751   -0.0831124    0.1480106
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0265398   -0.0487690   -0.0047818
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0121500   -0.0106041    0.0343918
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2551880    0.1081621    0.3779755
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0269487   -0.3288935    0.2063896
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1344611    0.0189806    0.2363478
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1025427    0.0560888    0.1467105
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1472691    0.0716539    0.2167252
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1161437    0.0450510    0.1819438
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0027664   -0.1390114    0.1171815
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0082670   -0.0073026    0.0235960
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0346608   -0.0681184   -0.0022513
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0015538   -0.0264195    0.0227095
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0864382   -0.0427740    0.1996395
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0939282   -0.2742360    0.0608656
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1749209    0.0600693    0.2757386
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0368973   -0.0565640    0.1220913
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0955767   -0.0094405    0.1896684
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1050665    0.0217758    0.1812654
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1938442   -0.4654414    0.0274166
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0393751   -0.0831124    0.1480106
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0278786   -0.0453500    0.0959774
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2801101    0.1282616    0.4055081
