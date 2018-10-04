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

agecat        studyid                    country                        mbmi                   ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                     0       62     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                     1      101     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                       0        9     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                       1       23     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese               0       28     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese               1       31     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                     0       73     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                     1       15     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                       0        6     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                       1        4     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese               0       92     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese               1       31     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                     0       52     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                     1       90     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                       0       20     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                       1       29     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese               0       23     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese               1       28     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                     0       85     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                     1       49     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                       0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                       1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese               0       71     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese               1       33     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                     0       54     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                     1      105     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                       0        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                       1        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese               0       48     290
0-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese               1       78     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                     0       37     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                     1       72     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                       0        1     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                       1        7     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese               0       73     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese               1       80     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                     0       19     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                     1      158     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                       0        3     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                       1       11     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               0       14     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               1       51     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                     0      327    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                     1      650    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                       0       81    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                       1      274    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese               0       33    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese               1       41    1406
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                     0      152     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                     1      293     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                       0       21     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                       1       85     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese               0       38     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese               1       40     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                     0      225     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                     1      198     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                       0       62     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                       1       65     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese               0       80     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese               1       39     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                     0      244     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                     1      239     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                       0       28     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                       1       40     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese               0      121     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese               1       83     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                     0      794    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                     1      441    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                       0       24    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                       1       14    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               0      717    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               1      355    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                     0     1634    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                     1      906    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                       0      265    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                       1      186    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese               0      147    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese               1       39    3177
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                     0     6785   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                     1     1366   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                       0      403   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                       1      120   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese               0     4216   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese               1      838   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                     0     3647    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                     1     3079    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                       0      230    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                       1      287    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese               0     1630    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese               1      946    9819
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                     0      240     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                     1      412     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                       0       46     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                       1       99     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese               0       19     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese               1       21     837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                     0      105     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                     1       58     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                       0       18     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                       1       14     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese               0       43     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese               1       16     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                     0       77     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                     1       11     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                       0        7     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                       1        3     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese               0       96     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese               1       27     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                     0       97     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                     1       45     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                       0       30     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                       1       19     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese               0       32     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese               1       19     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                     0      110     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                     1       24     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                       0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                       1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese               0       87     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese               1       17     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                     0       84     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                     1       75     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                       0        2     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                       1        3     290
0-6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese               0       76     290
0-6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese               1       50     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                     0       63     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                     1       46     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                       0        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                       1        5     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese               0      101     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese               1       52     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                     0      100     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                     1       77     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                       0        6     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                       1        8     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               0       43     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               1       22     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                     0      580    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                     1      395    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                       0      170    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                       1      184    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese               0       54    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese               1       20    1403
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                     0      298     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                     1      147     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                       0       56     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                       1       50     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese               0       55     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese               1       23     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                     0      316     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                     1      107     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                       0       90     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                       1       37     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese               0       98     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese               1       21     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                     0      331     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                     1      152     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                       0       41     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                       1       27     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese               0      154     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese               1       50     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                     0      982    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                     1      253    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                       0       29    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                       1        9    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               0      882    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               1      190    2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                     0     7353   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                     1      798   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                       0      448   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                       1       75   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese               0     4595   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese               1      459   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                     0     4691    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                     1     2027    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                       0      325    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                       1      192    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese               0     1983    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese               1      589    9807
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                     0      135     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                     1       80     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                       0       31     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                       1       16     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese               0        8     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese               1        1     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                     0       58     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                     1       43     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                       0        8     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                       1        9     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese               0       26     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese               1       15     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                     0       67     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                     1        4     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                       0        5     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                       1        1     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese               0       87     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese               1        4     168
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                     0       49     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                     1       45     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                       0       20     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                       1       10     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese               0       22     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese               1        9     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                     0       83     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                     1       25     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                       0        0     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                       1        0     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese               0       71     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese               1       16     195
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                     0       48     148
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                     1       30     148
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                       0        2     148
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                       1        0     148
6-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese               0       40     148
6-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese               1       28     148
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                     0       33     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                     1       26     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                       0        0     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                       1        2     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese               0       67     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese               1       28     156
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                     0       17     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                     1       81     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                       0        2     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                       1        3     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               0       13     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               1       29     145
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                     0      280     742
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                     1      255     742
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                       0       67     742
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                       1       90     742
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese               0       29     742
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese               1       21     742
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                     0      101     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                     1      146     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                       0       14     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                       1       35     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese               0       32     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese               1       17     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                     0      198     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                     1       91     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                       0       45     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                       1       28     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese               0       77     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese               1       18     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                     0      228     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                     1       87     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                       0       28     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                       1       13     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese               0      117     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese               1       33     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                     0      614    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                     1      188    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                       0       19    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                       1        5    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               0      579    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese               1      165    1570
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                     0     1634    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                     1      906    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                       0      265    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                       1      186    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese               0      147    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese               1       39    3177
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                     0     6780   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                     1      568   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                       0      403   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                       1       45   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese               0     4213   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese               1      379   12388
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                     0     3086    6168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                     1     1052    6168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                       0      194    6168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                       1       95    6168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese               0     1384    6168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese               1      357    6168
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                     0      233     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                     1      332     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                       0       40     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                       1       83     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese               0       19     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese               1       20     727


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
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/0f44a285-947e-413d-89fa-d35b59f38845/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0f44a285-947e-413d-89fa-d35b59f38845/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.5273831    0.3997130   0.6550531
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.6085489    0.4988266   0.7182711
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5511415    0.4212114   0.6810717
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4966873    0.3886534   0.6047213
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3225414    0.2487176   0.3963653
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4044998    0.3381944   0.4708053
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3364789    0.3076181   0.3653397
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2121501   -0.5960632   1.0203634
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1468344    0.1274721   0.1661967
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3579726    0.3392015   0.3767437
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5318262    0.3862939   0.6773585
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1520012    0.0608752   0.2431273
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2618896    0.1899698   0.3338095
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4000964    0.2556967   0.5444961
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2712990    0.1899809   0.3526170
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2006365    0.1317919   0.2694811
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1691078    0.1117349   0.2264807
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2651438    0.2034131   0.3268744
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1771449    0.1542805   0.2000093
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0689395    0.0557723   0.0821066
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2176659    0.2015357   0.2337961
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4303343    0.2585197   0.6021488
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2935269    0.1332200   0.4538338
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4167464    0.2431160   0.5903767
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3358472    0.2097077   0.4619868
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2035281    0.1240696   0.2829866
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1182866    0.0718641   0.1647091
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2162613    0.0537016   0.3788210
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2121489   -0.5916636   1.0159615
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0531996    0.0429730   0.0634262
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2046611    0.1855924   0.2237298
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5141666    0.3619362   0.6663971


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6096427   0.5495478   0.6697376
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.6073122   0.5456605   0.6689638
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6849319   0.6416823   0.7281816
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6648294   0.6279021   0.7017566
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4534295   0.4156922   0.4911667
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4811020   0.4454433   0.5167607
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3455062   0.3262565   0.3647558
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3581202   0.3081587   0.4080817
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1675782   0.1486060   0.1865504
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.4394835   0.4296668   0.4493002
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6358851   0.6032620   0.6685082
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3484583   0.2898243   0.4070923
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3443081   0.2843757   0.4042406
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4179288   0.3573915   0.4784661
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4266793   0.3926699   0.4606888
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3505110   0.3132126   0.3878095
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2480260   0.2153378   0.2807142
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3035092   0.2706977   0.3363207
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1926909   0.1767221   0.2086596
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0968056   0.0837720   0.1098393
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2866303   0.2776832   0.2955774
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4213881   0.3443947   0.4983816
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4131519   0.3353900   0.4909138
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4911363   0.4468557   0.5354169
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5758029   0.5235463   0.6280595
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3001248   0.2580730   0.3421766
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2651681   0.2267768   0.3035593
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2281841   0.2074240   0.2489442
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3576426   0.3076810   0.4076041
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0805015   0.0662718   0.0947312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2441589   0.2334420   0.2548758
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5983752   0.5627152   0.6340352


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.8650691   0.7001254    1.0688722
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          1.0020363   0.8598108    1.1677881
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8046661   0.6355246    1.0188238
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.7470899   0.6095098    0.9157250
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.7113376   0.5758598    0.8786881
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8407777   0.7286398    0.9701737
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9738724   0.9127055    1.0391386
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.5923992   0.0145713   24.0840313
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.8762142   0.8353512    0.9190761
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8145303   0.7774995    0.8533247
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.8363559   0.6405249    1.0920592
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.4362107   0.2468969    0.7706853
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          0.7606258   0.6243698    0.9266169
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9573314   0.6813433    1.3451125
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.6358381   0.4540787    0.8903525
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.5724114   0.4152410    0.7890715
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6818148   0.4964260    0.9364364
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8735937   0.7110538    1.0732886
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9193218   0.8338397    1.0135671
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          0.7121431   0.6527395    0.7769529
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.7593960   0.7105166    0.8116379
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          1.0212302   0.7093316    1.4702728
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.7104575   0.4314438    1.1699089
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8485351   0.5708952    1.2611979
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.5832677   0.4098404    0.8300823
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6781448   0.4723626    0.9735748
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.4460815   0.3123256    0.6371194
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9477490   0.4493571    1.9989183
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.5931869   0.0148981   23.6184291
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.6608522   0.6028040    0.7244902
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8382291   0.7722986    0.9097879
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.8592713   0.6443340    1.1459074
