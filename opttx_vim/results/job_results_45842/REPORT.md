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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        mbmi             ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0       90     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1      132     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0        9     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1       23     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      165     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1       46     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        6     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        4     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0       75     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1      118     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       20     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1       29     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      156     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1       82     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0      102     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1      183     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        3     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      110     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1      152     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        1     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        7     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0       33     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1      209     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0        3     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1       11     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      360    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1      691    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0       81    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1      274    1406
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      190     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1      333     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       21     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       85     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      305     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1      237     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0       62     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       65     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      365     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1      322     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       28     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1       40     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1511    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      796    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       24    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1       14    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0     1781    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1      945    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      265    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1      186    3177
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0    11001   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1     2204   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      403   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1      120   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     5277    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1     4025    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      230    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1      287    9819
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      259     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1      433     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0       46     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1       99     837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      148     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       74     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       18     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1       14     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      173     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               1       38     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        7     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        3     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               0      129     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               1       64     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 0       30     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 1       19     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               0      197     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               1       41     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight               0      160     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight               1      125     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                 0        2     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                 1        3     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      164     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1       98     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        5     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      143     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1       99     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0        6     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        8     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      634    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1      415    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0      170    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1      184    1403
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      353     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1      170     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       56     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       50     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      414     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1      128     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0       90     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       37     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      485     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1      202     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       41     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1       27     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1864    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      443    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       29    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        9    2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight               0    11948   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight               1     1257   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                 0      448   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                 1       75   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     6674    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1     2616    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      325    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1      192    9807
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               0      143     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               1       81     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 0       31     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 1       16     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0       84     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       58     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0        8     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        9     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      154     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        8     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        5     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        1     168
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0       71     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1       54     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       20     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1       10     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      154     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1       41     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     195
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0       88     148
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1       58     148
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        2     148
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        0     148
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      100     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1       54     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        0     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        2     156
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0       30     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1      110     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0        2     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        3     145
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      309     742
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1      276     742
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0       67     742
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       90     742
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      133     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1      163     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       14     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       35     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      275     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1      109     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0       45     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       28     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      345     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1      120     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       28     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1       13     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1193    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      353    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       19    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        5    1570
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0     1781    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1      945    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      265    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1      186    3177
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0    10993   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1      947   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      403   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1       45   12388
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     4470    6168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1     1409    6168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      194    6168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       95    6168
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      252     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1      352     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0       40     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1       83     727


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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/e4826dd3-6053-4ff4-840a-0de6d28fd714/b6be23f1-d34e-4111-83cb-10c6440dc13c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e4826dd3-6053-4ff4-840a-0de6d28fd714/b6be23f1-d34e-4111-83cb-10c6440dc13c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.5950477   0.5302441   0.6598514
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5999629   0.4803777   0.7195480
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6569104   0.6129884   0.7008323
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6361595   0.5948702   0.6774488
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4499380   0.3949977   0.5048783
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4627294   0.4238742   0.5015845
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3689881   0.2882831   0.4496930
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3497445   0.2966864   0.4028026
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1758314   0.1514302   0.2002326
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.4492405   0.4350151   0.4634659
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6273750   0.5912815   0.6634685
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3415643   0.2377165   0.4454121
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3681833   0.2893605   0.4470060
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4094143   0.3472997   0.4715290
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3957827   0.3631045   0.4284609
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3323327   0.2925718   0.3720937
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2568759   0.2123612   0.3013906
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3105649   0.2521241   0.3690058
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1920226   0.1758008   0.2082443
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0982211   0.0828843   0.1135580
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2833278   0.2736478   0.2930078
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.4319106   0.3038048   0.5600163
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4089711   0.3276950   0.4902472
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3735104   0.2046136   0.5424072
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4628906   0.4135174   0.5122639
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5509023   0.4941200   0.6076846
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3069842   0.2344486   0.3795198
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2458832   0.1656193   0.3261472
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2735307   0.1734428   0.3736186
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3505924   0.2969540   0.4042308
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0841973   0.0626848   0.1057099
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2355257   0.2115121   0.2595393
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5834467   0.5439713   0.6229221


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6102362   0.5501413   0.6703311
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.6074380   0.5457864   0.6690897
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6863442   0.6430946   0.7295939
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4514200   0.4136828   0.4891573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3454158   0.3261661   0.3646654
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1692890   0.1503168   0.1882613
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.4391486   0.4293319   0.4489653
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6356033   0.6029802   0.6682264
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3464567   0.2878227   0.4050907
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3429752   0.2830428   0.4029076
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4179688   0.3574314   0.4785061
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4269423   0.3929328   0.4609518
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2466368   0.2139486   0.2793250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1927505   0.1767818   0.2087193
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0970280   0.0839943   0.1100616
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2863261   0.2773790   0.2952732
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3579336   0.3007518   0.4151153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4213836   0.3443902   0.4983771
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4129032   0.3351414   0.4906651
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4932615   0.4489809   0.5375420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2280255   0.2072654   0.2487856
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0800775   0.0658478   0.0943072
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2438392   0.2331223   0.2545561
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5983494   0.5626894   0.6340094


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0255248   0.9883179   1.064132
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0124594   0.8576957   1.195149
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0448065   1.0279941   1.061894
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0446231   1.0192658   1.070611
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0032938   0.9197754   1.094396
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0361784   0.9976217   1.076225
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9361164   0.7558908   1.159313
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0178751   0.9761055   1.061432
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9627919   0.8949029   1.035831
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9775357   0.9552975   1.000291
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0131155   0.9893972   1.037402
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0143236   0.7897685   1.302726
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9315339   0.8159488   1.063493
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0208943   0.9834209   1.059796
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0787289   1.0381513   1.120893
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0524438   0.9949467   1.113264
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9601397   0.8526729   1.081151
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9766436   0.8382015   1.137952
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0037911   0.9921270   1.015592
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           0.9878522   0.9208449   1.059735
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0105824   0.9971898   1.024155
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           0.8287215   0.6391791   1.074471
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0303507   0.9623247   1.103185
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1054665   0.7350229   1.662610
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0656113   1.0204095   1.112815
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0417693   1.0031967   1.081825
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9765362   0.8065078   1.182410
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0689865   0.8060995   1.417607
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8336377   0.5787432   1.200795
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0154134   0.9724997   1.060221
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9510696   0.8143592   1.110730
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0352974   0.9452309   1.133946
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0255425   0.9978110   1.054045


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0151885   -0.0066886   0.0370656
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0074752   -0.0920116   0.1069619
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0294339    0.0188305   0.0400372
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0283874    0.0129776   0.0437972
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0014820   -0.0376210   0.0405851
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0167408   -0.0008322   0.0343138
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0235723   -0.1024338   0.0552892
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0062517   -0.0083126   0.0208161
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0065424   -0.0194807   0.0063960
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0100919   -0.0204264   0.0002427
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0082284   -0.0066201   0.0230768
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0048924   -0.0805722   0.0903571
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0252081   -0.0739698   0.0235537
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0085544   -0.0067332   0.0238421
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0311595    0.0153875   0.0469316
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0174288   -0.0013673   0.0362249
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0102392   -0.0406911   0.0202128
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0072537   -0.0547422   0.0402348
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0007280   -0.0015130   0.0029689
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0011932   -0.0081061   0.0057198
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0029983   -0.0007813   0.0067779
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0739770   -0.1860554   0.0381015
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0124125   -0.0154820   0.0403071
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0393928   -0.1131072   0.1918929
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0303708    0.0106287   0.0501130
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0230108    0.0023983   0.0436232
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0072030   -0.0659289   0.0515229
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0169626   -0.0523174   0.0862426
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0455052   -0.1449402   0.0539298
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0054038   -0.0096384   0.0204460
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0041198   -0.0173334   0.0090938
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0083134   -0.0131178   0.0297447
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0149027   -0.0010414   0.0308467


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0248895   -0.0118202   0.0602674
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0123061   -0.1659147   0.1632841
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0428850    0.0272318   0.0582863
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0427169    0.0189017   0.0659541
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0032830   -0.0872220   0.0862539
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0349153   -0.0023840   0.0708266
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0682432   -0.3229424   0.1374200
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0175612   -0.0244794   0.0578767
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0386460   -0.1174397   0.0345917
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0229806   -0.0467943   0.0002914
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0129458   -0.0107164   0.0360539
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0141213   -0.2661938   0.2323792
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0734982   -0.2255671   0.0597019
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0204667   -0.0168586   0.0564219
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0729830    0.0367492   0.1078539
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0498305   -0.0050790   0.1017402
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0415152   -0.1727827   0.0750599
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0239150   -0.1930306   0.1212279
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0037768   -0.0079355   0.0153529
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0122971   -0.0859592   0.0563683
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0104716   -0.0028181   0.0235852
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.2066780   -0.5645068   0.0693095
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0294566   -0.0391503   0.0935340
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0954045   -0.3605018   0.3985359
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0615715    0.0200013   0.1013783
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0400945    0.0031865   0.0756361
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0240276   -0.2399136   0.1542697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0645345   -0.2405417   0.2945858
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1995619   -0.7278820   0.1672181
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0151794   -0.0282779   0.0568002
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0514478   -0.2279594   0.0996913
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0340940   -0.0579426   0.1181238
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0249063   -0.0021938   0.0512736
