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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        mbmi             ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      194     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1       28     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       21     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            1       11     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      209     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        2     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            0       10     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          0      154     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          1       39     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight            0       35     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight            1       14     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          0      217     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          1       21     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight          0      275     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight          1       10     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight            0        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight            1        2     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      242     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1       20     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      222     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1       20     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      843    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1      199    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      226    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            1      121    1389
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      423     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1       97     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       64     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            1       40     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      480     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1       62     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       99     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            1       28     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      632     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1       55     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       52     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1       16     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     2195    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1      112    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       35    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        3    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          0     2424    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          1      302    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            0      374    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            1       77    3177
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          0    13183   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          1       22   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight            0      522   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight            1        1   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     8874    9795
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      405    9795
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      467    9795
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       49    9795
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          0      665     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          1       27     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            0      130     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            1       15     837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      215     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1        7     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       30     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            1        2     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      211     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        0     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            0       10     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          0      180     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          1       13     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight            0       45     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight            1        4     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          0      231     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight          0      283     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight          1        2     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight            0        5     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight            1        0     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      259     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        8     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      238     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1        4     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       14     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      974    1381
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1       63    1381
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      311    1381
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            1       33    1381
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      488     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1       31     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       89     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            1       14     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      522     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1       20     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            0      117     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            1       10     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      673     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1       14     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       65     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1        3     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     2289    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1       18    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       38    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0    2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight          0    13191   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight          1       14   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight            0      522   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight            1        1   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     9137    9755
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      109    9755
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      497    9755
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       12    9755
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          0      224     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight            0       47     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight            1        0     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      184     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1       24     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       20     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            1       11     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      195     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        2     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            0        9     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     206
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          0      153     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          1       33     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight            0       34     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight            1       14     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          0      219     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          1       16     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight          0      255     269
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight          1        9     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight            0        3     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight            1        2     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      228     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1       19     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      214     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       10     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      777    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1      178    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      211    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            1      110    1276
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      371     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1       78     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       57     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            1       36     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      455     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1       50     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       83     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            1       25     613
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      615     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1       48     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       52     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1       15     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     1835    1971
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1      106    1971
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       27    1971
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        3    1971
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          0     2424    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          1      302    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            0      374    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            1       77    3177
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          0    13188   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          1        9   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight            0      523   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight            1        0   13720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     7788    8558
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      314    8558
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      418    8558
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       38    8558
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          0      657     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          1       27     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            0      124     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            1       15     823


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
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
```




# Results Detail

## Results Plots
![](/tmp/fb529451-f856-4cac-aa23-c0d4da763899/61a4a635-2eaf-4cb0-9241-23e795fa7e45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb529451-f856-4cac-aa23-c0d4da763899/61a4a635-2eaf-4cb0-9241-23e795fa7e45/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb529451-f856-4cac-aa23-c0d4da763899/61a4a635-2eaf-4cb0-9241-23e795fa7e45/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb529451-f856-4cac-aa23-c0d4da763899/61a4a635-2eaf-4cb0-9241-23e795fa7e45/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1276808   0.0830401   0.1723215
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.3589575   0.1690572   0.5488578
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.2038017   0.1470543   0.2605492
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.3007317   0.1665022   0.4349613
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1897960   0.1586631   0.2209290
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.3474467   0.2683919   0.4265016
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1853736   0.1518697   0.2188774
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.3839921   0.2878966   0.4800876
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1161514   0.0888964   0.1434065
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.2268064   0.1525981   0.3010147
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0808617   0.0601743   0.1015491
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.3669032   0.2588356   0.4749709
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1108097   0.0916672   0.1299521
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.1747762   0.1184407   0.2311118
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0436499   0.0394882   0.0478116
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.1010203   0.0740834   0.1279572
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0390797   0.0246229   0.0535364
0-24 months   ki1148112-LCNI-5          MALAWI         Underweight          NA                0.1018843   0.0521282   0.1516405
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0598853   0.0367321   0.0830385
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.0943805   0.0418398   0.1469211
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0597194   0.0392981   0.0801408
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1315278   0.0641495   0.1989061
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0358122   0.0202106   0.0514139
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0885207   0.0346037   0.1424378
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0117630   0.0095652   0.0139608
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0236506   0.0102867   0.0370146
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1151628   0.0710225   0.1593031
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.4162058   0.1991738   0.6332377
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1790421   0.1239047   0.2341795
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.2995518   0.1642968   0.4348068
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1855588   0.1580093   0.2131084
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.3392578   0.2664102   0.4121055
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1721577   0.1371054   0.2072101
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.3853339   0.2822959   0.4883718
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1030875   0.0760695   0.1301056
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.2179691   0.1339348   0.3020035
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0726015   0.0526795   0.0925235
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.3493893   0.2378834   0.4608952
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1108818   0.0917325   0.1300312
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.1703718   0.1146971   0.2260465
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0387273   0.0345228   0.0429318
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0910435   0.0627764   0.1193107
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0394477   0.0248205   0.0540749
6-24 months   ki1148112-LCNI-5          MALAWI         Underweight          NA                0.1077472   0.0540631   0.1614313


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1535433   0.1091205   0.1979661
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2190083   0.1667935   0.2712230
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2303816   0.1859599   0.2748032
0-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.1345291   0.1086533   0.1604050
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0940397   0.0732057   0.1148737
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1192949   0.0996089   0.1389809
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0463502   0.0421864   0.0505140
0-24 months   ki1148112-LCNI-5          MALAWI         NA                   NA                0.0501792   0.0353804   0.0649781
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0695148   0.0442283   0.0948014
0-6 months    ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0448430   0.0291486   0.0605375
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0124039   0.0102074   0.0146004
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2008547   0.1494120   0.2522974
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2257053   0.1874344   0.2639762
6-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.1223491   0.0963874   0.1483108
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1192949   0.0996089   0.1389809
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0411311   0.0369233   0.0453389
6-24 months   ki1148112-LCNI-5          MALAWI         NA                   NA                0.0510328   0.0359888   0.0660768


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     2.811366   1.4892124   5.307355
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.475609   0.8720264   2.496969
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.830632   1.6073372   2.084948
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.071450   1.5200900   2.822797
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     1.952679   1.3039887   2.924071
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.537416   3.0698931   6.706471
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.577265   1.1301905   2.201191
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.314331   1.7435844   3.071907
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5          MALAWI         Underweight          Normal weight     2.607094   1.4122005   4.813012
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.576020   0.8799256   2.822783
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.202429   1.1892807   4.078680
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     2.471801   1.1682206   5.230005
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.010591   1.1088358   3.645694
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     3.614065   1.8908737   6.907634
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.673080   0.9667903   2.895352
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.828303   1.5738414   2.123907
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.238261   1.5976753   3.135688
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     2.114409   1.3243930   3.375677
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.812427   3.1546886   7.341280
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.536517   1.0962870   2.153528
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.350887   1.6917815   3.266775
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5          MALAWI         Underweight          Normal weight     2.731395   1.4671333   5.085098


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0258625    0.0019171   0.0498079
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0152065   -0.0134960   0.0439091
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0405855    0.0239833   0.0571878
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0341777    0.0163816   0.0519738
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0183777    0.0030179   0.0337376
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0131780    0.0032018   0.0231542
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0084853    0.0006218   0.0163488
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0027003    0.0013284   0.0040722
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0110996    0.0019671   0.0202320
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0096295   -0.0033377   0.0225968
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0126279    0.0009208   0.0243349
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0090308   -0.0004193   0.0184809
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0006409   -0.0000582   0.0013399
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0312807    0.0053443   0.0572172
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0218126   -0.0078766   0.0515018
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0401465    0.0242296   0.0560634
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0381744    0.0186495   0.0576993
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0192616    0.0034375   0.0350856
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0136999    0.0036926   0.0237071
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0084131    0.0005914   0.0162348
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0024038    0.0010128   0.0037948
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0115851    0.0023344   0.0208358


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1684377    0.0031097   0.3063472
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0694335   -0.0704047   0.1910032
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1761666    0.1290458   0.2207380
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1556708    0.0725060   0.2313786
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1366079    0.0172497   0.2414696
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.1401326    0.0310644   0.2369236
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0711284    0.0051050   0.1327704
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0582586    0.0286139   0.0869987
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.2211983    0.0302208   0.3745668
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1385248   -0.0517387   0.2943690
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1745450    0.0037711   0.3160448
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.2013868   -0.0263457   0.3785885
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0516668   -0.0056584   0.1057242
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2136027    0.0261363   0.3649822
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1085989   -0.0500137   0.2432519
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1778712    0.1259564   0.2267025
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1814957    0.0861528   0.2668913
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1574313    0.0218790   0.2741981
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.1587447    0.0400921   0.2627309
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0705236    0.0048412   0.1318708
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0584424    0.0245045   0.0911995
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.2270130    0.0372366   0.3793813
