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
![](/tmp/01983648-6c31-42a5-a97b-656143ab1de0/44b9a94a-7ad1-4760-97a2-5d4b4d011c7d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/01983648-6c31-42a5-a97b-656143ab1de0/44b9a94a-7ad1-4760-97a2-5d4b4d011c7d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3749062   0.2924268   0.4573856
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4775699   0.3985532   0.5565866
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3071321   0.2573813   0.3568830
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4593559   0.4118646   0.5068473
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3277052   0.2877821   0.3676282
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3178368   0.2828333   0.3528403
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2354526   0.2179607   0.2529444
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2170346   0.1756712   0.2583981
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2971007   0.1954778   0.3987237
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2430399   0.2325778   0.2535019
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0586512   0.0412085   0.0760939
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2094145   0.1564373   0.2623918
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3009097   0.2189386   0.3828807
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1865131   0.1390776   0.2339487
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3246889   0.2817693   0.3676086
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2332198   0.1974129   0.2690268
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2354456   0.1743524   0.2965389
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1391464   0.1248932   0.1533997
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2870821   0.1823246   0.3918396
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1819491   0.1722944   0.1916038
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1684436   0.1174754   0.2194118
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2420331   0.1666776   0.3173886
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2159893   0.2023678   0.2296108
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2760984   0.2317116   0.3204852
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1456237   0.1145052   0.1767421
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1188167   0.0941760   0.1434575
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2249640   0.1851814   0.2647465
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2170346   0.1756712   0.2583981
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0963710   0.0863333   0.1064088
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0553166   0.0382093   0.0724238


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.8926117   0.7594546   1.0491156
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9950514   0.8989123   1.1014726
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1753105   1.1457230   1.2056620
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0396384   0.9808834   1.1019129
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0992782   1.0363714   1.1660034
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0418108   1.0039359   1.0811146
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0069978   0.9961844   1.0179287
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0409890   0.9232653   1.1737235
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9679241   0.9474375   0.9888536
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0083737   0.9838096   1.0335512
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.3444400   1.1230063   1.6095358
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0716039   0.9457983   1.2141436
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0436673   0.8620505   1.2635472
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1142592   1.0594217   1.1719352
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0992465   1.0185168   1.1863751
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1280312   1.0435658   1.2193331
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0969758   0.8759018   1.3738480
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0082796   0.9927107   1.0240927
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           0.9834900   0.9437210   1.0249349
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0030179   0.9716371   1.0354121
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0883960   0.9542876   1.2413509
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1300283   0.8998630   1.4190649
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2120051   1.0639083   1.3807170
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0644763   0.9766686   1.1601784
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1072222   0.9934195   1.2340616
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1068040   1.0135803   1.2086020
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.7168152   0.6093230   0.8432704
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0409890   0.9232653   1.1737235
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0014068   0.9225409   1.0870147
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.3838389   1.1429250   1.6755344


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0402605   -0.1002454    0.0197244
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0023633   -0.0508833    0.0461567
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0538435    0.0365155    0.0711715
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0182082   -0.0084690    0.0448853
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0325340    0.0132622    0.0518057
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0132890    0.0015252    0.0250528
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0016477   -0.0008873    0.0041826
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0088960   -0.0172730    0.0350651
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0095298   -0.0148242   -0.0042354
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0020352   -0.0039575    0.0080278
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0202018    0.0087779    0.0316257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0149949   -0.0116234    0.0416132
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0131399   -0.0443433    0.0706231
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0213108    0.0074641    0.0351576
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0322243    0.0073320    0.0571165
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0298594    0.0115824    0.0481364
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0228325   -0.0301246    0.0757897
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0011521   -0.0010086    0.0033128
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0047397   -0.0167254    0.0072460
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0005491   -0.0052341    0.0063323
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0148897   -0.0074661    0.0372456
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0314712   -0.0239581    0.0869004
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0457908    0.0095500    0.0820317
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0178018   -0.0059429    0.0415465
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0156141   -0.0003369    0.0315651
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0126901    0.0020038    0.0233764
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0637064   -0.0997844   -0.0276283
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0088960   -0.0172730    0.0350651
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0001356   -0.0077698    0.0080409
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0212326    0.0096476    0.0328177


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.1203079   -0.3167344    0.0468162
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0049732   -0.1124556    0.0921245
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1491610    0.1271887    0.1705802
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0381271   -0.0194892    0.0924873
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0903122    0.0350949    0.1423696
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0401328    0.0039205    0.0750287
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0069492   -0.0038302    0.0176129
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0393751   -0.0831124    0.1480106
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0331389   -0.0554786   -0.0112720
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0083042   -0.0164569    0.0324621
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2561959    0.1095331    0.3787028
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0668194   -0.0573078    0.1763742
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0418402   -0.1600249    0.2085772
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1025427    0.0560888    0.1467105
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0902860    0.0181801    0.1570963
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1134997    0.0417470    0.1798796
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0884029   -0.1416805    0.2721174
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0082116   -0.0073428    0.0235259
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0167872   -0.0596353    0.0243282
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0030088   -0.0291908    0.0342010
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0812167   -0.0479021    0.1944260
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1150664   -0.1112803    0.2953106
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1749209    0.0600693    0.2757386
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0605709   -0.0238888    0.1380636
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0968389   -0.0066240    0.1896677
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0964977    0.0133983    0.1725978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.3950597   -0.6411657   -0.1858592
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0393751   -0.0831124    0.1480106
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0014048   -0.0839628    0.0800492
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2773725    0.1250519    0.4031755
