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
![](/tmp/a17d8dd8-3732-488d-b9b9-8c243b15b9a3/c2ac66e1-4833-4438-b676-82d16ed3c9be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a17d8dd8-3732-488d-b9b9-8c243b15b9a3/c2ac66e1-4833-4438-b676-82d16ed3c9be/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.5948664   0.5300876   0.6596452
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5399987   0.4161684   0.6638290
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6569104   0.6129884   0.7008323
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6359501   0.5946558   0.6772445
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4346596   0.3802481   0.4890711
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4566971   0.4168488   0.4965454
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3834930   0.3006749   0.4663111
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3529415   0.2992945   0.4065884
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1733465   0.1494903   0.1972027
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.4426570   0.4281224   0.4571915
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6261012   0.5899792   0.6622232
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3246673   0.2129714   0.4363631
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3719065   0.2986381   0.4451749
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4097103   0.3475933   0.4718273
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3957827   0.3631045   0.4284609
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3277986   0.2876074   0.3679899
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2362649   0.2000922   0.2724376
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2956264   0.2613360   0.3299168
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2753808   0.2570781   0.2936834
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0947898   0.0802239   0.1093558
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2930531   0.2787917   0.3073144
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5122927   0.4065851   0.6180002
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4071806   0.3259633   0.4883979
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3388850   0.1659406   0.5118293
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4628906   0.4135174   0.5122639
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5518463   0.4950852   0.6086074
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2880050   0.2294048   0.3466052
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2346050   0.1496610   0.3195491
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3102053   0.2165356   0.4038749
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3489716   0.2944530   0.4034901
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0867251   0.0675905   0.1058598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2405470   0.2173104   0.2637836
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5828536   0.5433785   0.6223287


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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0258375   0.9886564   1.0644168
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1248879   0.9277468   1.3639204
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0448065   1.0279941   1.0618939
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0449670   1.0196181   1.0709461
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0385599   0.9510094   1.1341705
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0498648   1.0049306   1.0968082
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9007095   0.7291348   1.1126579
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0086551   0.9655208   1.0537164
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9765936   0.9056884   1.0530498
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9920743   0.9683352   1.0163953
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0151767   0.9916320   1.0392804
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0671131   0.7964039   1.4298403
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9222082   0.8203582   1.0367031
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0201569   0.9828264   1.0589053
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0787289   1.0381513   1.1208926
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0670012   1.0100414   1.1271732
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0438993   0.9711997   1.1220409
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0259952   0.9875904   1.0658936
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.6999419   0.6653935   0.7362841
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0236118   0.9541983   1.0980747
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9770452   0.9410359   1.0144325
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           0.6986897   0.5807173   0.8406280
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0348815   0.9665735   1.1080168
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2184171   0.7671131   1.9352300
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0656113   1.0204095   1.1128154
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0399870   1.0015616   1.0798867
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0408887   0.8946546   1.2110252
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1203759   0.8136241   1.5427791
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.7350792   0.5447850   0.9918436
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0201295   0.9667714   1.0764326
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9233482   0.8081978   1.0549050
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0136862   0.9304781   1.1043351
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0265860   0.9989841   1.0549506


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0153699   -0.0064771    0.0372168
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0674393   -0.0359276    0.1708062
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0294339    0.0188305    0.0400372
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0285968    0.0132064    0.0439871
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0167604   -0.0214559    0.0549768
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0227731    0.0027680    0.0427783
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0380772   -0.1190448    0.0428904
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0030547   -0.0123243    0.0184338
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0040574   -0.0171501    0.0090353
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0035084   -0.0142291    0.0072123
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0095021   -0.0051689    0.0241732
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0217894   -0.0731291    0.1167079
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0289313   -0.0720776    0.0142150
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0082585   -0.0069935    0.0235105
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0311595    0.0153875    0.0469316
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0219629    0.0039575    0.0399683
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0103719   -0.0066909    0.0274346
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0076849   -0.0035942    0.0189639
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0826302   -0.0939087   -0.0713518
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0022382   -0.0044147    0.0088910
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0067270   -0.0177320    0.0042780
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.1543591   -0.2450708   -0.0636474
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0142031   -0.0135416    0.0419477
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0740183   -0.0825220    0.2305585
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0303708    0.0106287    0.0501130
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0220667    0.0014497    0.0426837
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0117761   -0.0319034    0.0554557
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0282408   -0.0466001    0.1030817
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0821798   -0.1744712    0.0101116
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0070246   -0.0116295    0.0256788
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0066476   -0.0182438    0.0049485
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0032922   -0.0173100    0.0238943
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0154958   -0.0003336    0.0313252


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0251867   -0.0114737    0.0605184
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1110225   -0.0778803    0.2668194
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0428850    0.0272318    0.0582863
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0430320    0.0192406    0.0662462
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0371283   -0.0515143    0.1182983
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0474964    0.0049064    0.0882636
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1102359   -0.3714885    0.1012511
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0085808   -0.0357105    0.0509780
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0239674   -0.1041325    0.0503773
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0079890   -0.0327002    0.0161308
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0149498   -0.0084386    0.0377958
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0628922   -0.2556444    0.3006212
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0843539   -0.2189796    0.0354037
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0197586   -0.0174737    0.0556285
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0729830    0.0367492    0.1078539
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0627939    0.0099416    0.1128249
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0420532   -0.0296544    0.1087669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0253366   -0.0125656    0.0618200
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.4286900   -0.5028701   -0.3581714
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0230671   -0.0480001    0.0893151
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0234941   -0.0626587    0.0142271
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.4312506   -0.7220081   -0.1895869
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0337058   -0.0345825    0.0974866
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1792630   -0.3035888    0.4832656
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0615715    0.0200013    0.1013783
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0384496    0.0015592    0.0739769
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0392825   -0.1177498    0.1742534
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1074424   -0.2290688    0.3518190
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.3603975   -0.8355865   -0.0082235
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0197323   -0.0343707    0.0710055
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0830151   -0.2373209    0.0520473
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0135014   -0.0747163    0.0944777
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0258975   -0.0010169    0.0520883
