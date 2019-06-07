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

**Outcome Variable:** ever_wasted

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




# Results Detail

## Results Plots
![](/tmp/5d3ca567-58a7-4594-8cbc-e9bc7157ebcb/98f0458f-9668-45e9-9c95-89baacc8295d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5d3ca567-58a7-4594-8cbc-e9bc7157ebcb/98f0458f-9668-45e9-9c95-89baacc8295d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5d3ca567-58a7-4594-8cbc-e9bc7157ebcb/98f0458f-9668-45e9-9c95-89baacc8295d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5d3ca567-58a7-4594-8cbc-e9bc7157ebcb/98f0458f-9668-45e9-9c95-89baacc8295d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.3063063   0.2455502   0.3670624
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.5312500   0.3580093   0.7044907
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.4455959   0.3753287   0.5158630
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5918367   0.4539358   0.7297376
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.3023256   0.2503581   0.3542930
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.5229358   0.4414856   0.6043859
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.4576923   0.4148370   0.5005476
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.5769231   0.4818958   0.6719504
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.3284133   0.2888461   0.3679804
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.4960630   0.4090413   0.5830847
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.3173217   0.2824947   0.3521486
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.4705882   0.3518751   0.5893014
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2353706   0.2178996   0.2528416
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.3421053   0.2443123   0.4398983
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2183206   0.1792979   0.2573433
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2661290   0.1687415   0.3635166
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.2841615   0.1832375   0.3850855
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.3740157   0.2265219   0.5215096
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2405991   0.2319024   0.2492958
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3255814   0.2851480   0.3660148
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0592486   0.0416478   0.0768493
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1724138   0.1108938   0.2339338
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1981982   0.1456556   0.2507408
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4062500   0.2357485   0.5767515
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.2849741   0.2211577   0.3487905
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.4285714   0.2897227   0.5674201
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1800000   0.1300412   0.2299588
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.2844037   0.1897807   0.3790267
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.3429672   0.3020945   0.3838400
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.4271845   0.3315765   0.5227924
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2361624   0.2003792   0.2719456
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.3779528   0.2935607   0.4623448
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.2547307   0.2221279   0.2873335
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.2941176   0.1857479   0.4024874
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1391417   0.1248886   0.1533949
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2105263   0.1264891   0.2945635
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.2788820   0.1772089   0.3805551
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                0.3700787   0.2229516   0.5172058
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.1797838   0.1719578   0.1876098
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.2318271   0.1951645   0.2684897
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1674641   0.1167366   0.2181917
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.2903226   0.1302029   0.4504423
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.2580645   0.1950459   0.3210831
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.3333333   0.1996888   0.4669779
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.2150538   0.1982743   0.2318332
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.3883495   0.2735349   0.5031641
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.2723214   0.2310622   0.3135807
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.3978495   0.2982813   0.4974176
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1422925   0.1118285   0.1727565
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.2500000   0.1682683   0.3317317
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1176471   0.0931056   0.1421885
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.2686567   0.1624461   0.3748673
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1606591   0.1441588   0.1771595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2000001   0.1128773   0.2871230
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2183206   0.1792979   0.2573433
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2661290   0.1687415   0.3635166
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0926932   0.0863781   0.0990082
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.1641138   0.1301543   0.1980733
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0555556   0.0383790   0.0727321
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1798561   0.1159691   0.2437431


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4752066   0.4121581   0.5382551
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3609756   0.2943508   0.4276005
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311258   0.2975342   0.3647175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2371002   0.2198828   0.2543177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2259307   0.1907517   0.2611097
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2875710   0.1859343   0.3892076
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2450750   0.2365573   0.2535928
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0788530   0.0605839   0.0971222
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2244094   0.1730022   0.2758167
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3140496   0.2554513   0.3726479
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2078240   0.1493922   0.2662557
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2582781   0.2270370   0.2895193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1402985   0.1262390   0.1543580
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2823424   0.1800585   0.3846263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1824982   0.1748345   0.1901620
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2617801   0.2144185   0.3091417
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612576   0.1450216   0.1774936
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2259307   0.1907517   0.2611097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0965066   0.0902505   0.1027627
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0765492   0.0583736   0.0947248


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.734375   1.1840739   2.540430
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.328192   1.0024707   1.759746
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.729711   1.6174239   1.849793
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.260504   1.0429408   1.523453
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.510484   1.2209357   1.868699
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.483000   1.1263260   1.952623
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.453475   1.0817938   1.952857
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.218983   0.7986806   1.860467
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.316208   1.0427870   1.661322
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.353211   1.1890313   1.540061
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     2.910008   1.8291752   4.629490
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     2.049716   1.2476860   3.367302
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.503896   1.0143191   2.229775
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.580020   1.1844801   2.107646
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.245555   0.9665910   1.605029
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.600394   1.2218993   2.096130
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.154622   0.7817026   1.705446
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.513035   1.0020087   2.284685
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.327008   1.0408489   1.691841
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.289477   1.0944033   1.519323
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.733641   0.9240297   3.252611
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.291667   0.8077416   2.065516
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.805825   1.4377561   2.268121
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.460955   1.0903908   1.957455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.756944   1.1886106   2.597027
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     2.283582   1.4604522   3.570639
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.244873   0.7957071   1.947586
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.218983   0.7986806   1.860467
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.770506   1.4239173   2.201456
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     3.237410   2.0215266   5.184608


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0283394    0.0034487   0.0532300
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0296108   -0.0025935   0.0618151
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0586500    0.0429308   0.0743692
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0198718    0.0021509   0.0375927
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0318259    0.0130062   0.0506456
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0138041    0.0022297   0.0253786
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0017296   -0.0008131   0.0042724
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0076101   -0.0093080   0.0245282
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0034095   -0.0002450   0.0070640
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0044759    0.0022655   0.0066864
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0196045    0.0081455   0.0310635
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0262113    0.0021779   0.0502446
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0290755   -0.0027119   0.0608629
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0278240    0.0085425   0.0471054
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0139459   -0.0034475   0.0313393
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0269169    0.0090120   0.0448218
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0035474   -0.0066769   0.0137718
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0011568   -0.0010052   0.0033187
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0034604   -0.0002928   0.0072136
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0027144    0.0007457   0.0046831
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0158692   -0.0064461   0.0381845
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0154398   -0.0151196   0.0459991
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0467263    0.0134091   0.0800436
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0215788    0.0026255   0.0405320
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0189453    0.0032632   0.0346274
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0138598    0.0033662   0.0243534
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0005985   -0.0016285   0.0028255
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0076101   -0.0093080   0.0245282
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0038134    0.0019380   0.0056889
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0209937    0.0093756   0.0326117


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0846847    0.0073253   0.1560154
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0623113   -0.0083442   0.1280160
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1624764    0.1443946   0.1801761
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0416107    0.0036534   0.0781220
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0883465    0.0345568   0.1391393
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0416885    0.0061020   0.0760008
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0072948   -0.0035151   0.0179883
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0336832   -0.0443698   0.1059028
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0118561   -0.0007313   0.0242852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0182636    0.0092105   0.0272339
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.2486206    0.1007232   0.3721944
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1168010    0.0047988   0.2161982
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0925825   -0.0142172   0.1881359
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1338824    0.0526740   0.2081292
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0390738   -0.0109282   0.0866026
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1023147    0.0320906   0.1674438
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0137349   -0.0266454   0.0525270
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0082450   -0.0073186   0.0235682
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0122561   -0.0010657   0.0254006
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0148737    0.0040370   0.0255925
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0865594   -0.0421507   0.1993732
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0564516   -0.0619620   0.1616616
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1784946    0.0765172   0.2692110
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0734221    0.0068116   0.1355651
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1174991    0.0163952   0.2082106
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1053922    0.0238808   0.1800968
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0037114   -0.0102191   0.0174499
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0336832   -0.0443698   0.1059028
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0395148    0.0200211   0.0586208
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.2742504    0.1211184   0.4007015
