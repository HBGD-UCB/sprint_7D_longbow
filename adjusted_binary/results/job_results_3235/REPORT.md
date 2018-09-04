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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/592cdb5d-249c-404d-a114-100f9a548e4f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/592cdb5d-249c-404d-a114-100f9a548e4f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/592cdb5d-249c-404d-a114-100f9a548e4f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/592cdb5d-249c-404d-a114-100f9a548e4f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level    baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.6196319    0.5449561   0.6943077
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.7187500    0.5626637   0.8748363
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.5254237    0.3977544   0.6530930
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.6390182    0.5599625   0.7180740
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.6143943    0.4793110   0.7494777
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.5798918    0.4469165   0.7128671
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.6656638    0.6184189   0.7129087
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.7708790    0.7243982   0.8173598
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.5521818    0.4222537   0.6821099
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.6601372    0.6160467   0.7042276
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.8042128    0.7286568   0.8797687
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.4955882    0.3867684   0.6044079
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.4713549    0.4243037   0.5184061
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.5620588    0.4872844   0.6368332
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.3299613    0.2565513   0.4033713
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.4963610    0.4517348   0.5409872
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.6829181    0.5914105   0.7744257
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.4173807    0.3497569   0.4850045
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.3575285    0.3305378   0.3845191
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.3619272    0.2677066   0.4561479
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.3376925    0.3088948   0.3664902
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         NA                0.3562748    0.3259445   0.3866051
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           NA                0.4102439    0.3100546   0.5104331
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   NA                0.2007645   -0.6248005   1.0263296
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.1676722    0.1472004   0.1881439
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.2271744    0.1921525   0.2621963
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.1707598    0.1497049   0.1918147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.4584502    0.4465439   0.4703564
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.5696676    0.5324452   0.6068899
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.3683806    0.3495556   0.3872056
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         NA                0.6318972    0.5948792   0.6689152
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           NA                0.6828613    0.6071958   0.7585268
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                0.5223117    0.3678791   0.6767442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.3525705    0.2803395   0.4248015
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.4470762    0.3125752   0.5815772
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.2659112    0.1605463   0.3712761
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.3162072    0.2410164   0.3913980
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.3936089    0.2634397   0.5237782
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.3786385    0.2529041   0.5043729
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.4350282    0.3618498   0.5082067
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.5714286    0.3116959   0.8311612
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.3384615    0.2232029   0.4537202
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.4052468    0.3682412   0.4422523
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.5192657    0.4619208   0.5766105
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.2699817    0.1886039   0.3513595
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.3324792    0.2887382   0.3762202
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.4671194    0.3742608   0.5599781
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.2875712    0.1901421   0.3850003
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.2538818    0.2130555   0.2947081
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.3236675    0.2553190   0.3920161
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.1661637    0.1090191   0.2233083
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.3138761    0.2725135   0.3552388
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.4488583    0.3503849   0.5473316
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.2736371    0.2122462   0.3350280
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.2048583    0.1823441   0.2273725
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.2368421    0.1016393   0.3720449
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.1772388    0.1543744   0.2001032
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.0975685    0.0831937   0.1119433
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           NA                0.1400626    0.1134658   0.1666594
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.0935172    0.0779241   0.1091102
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.3024515    0.2914592   0.3134439
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.3856247    0.3489028   0.4223466
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.2330843    0.2164054   0.2497632
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.4257426    0.3290074   0.5224777
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.5294118    0.2913931   0.7674304
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.3658537    0.2179515   0.5137559
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.4787234    0.3774102   0.5800366
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.3333333    0.1640997   0.5025670
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.2903226    0.1300188   0.4506263
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.4766175    0.4233111   0.5299239
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.5718218    0.5196365   0.6240071
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.4178060    0.2441631   0.5914489
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.5916371    0.5304180   0.6528562
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.7154180    0.5907252   0.8401109
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.3367296    0.2093740   0.4640852
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.3156877    0.2622956   0.3690799
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.3935525    0.2919221   0.4951828
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.2034566    0.1241684   0.2827448
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.2802642    0.2311853   0.3293431
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.4156808    0.3104372   0.5209243
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.1890632    0.1303397   0.2477866
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.2344140    0.2050856   0.2637423
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.2083333    0.0458041   0.3708625
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.2217742    0.1919129   0.2516355
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         NA                0.3563046    0.3259687   0.3866405
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           NA                0.4100979    0.3096517   0.5105442
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   NA                0.2008884   -0.6281496   1.0299263
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.0777672    0.0639676   0.0915669
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.1044419    0.0785341   0.1303498
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.0852049    0.0676822   0.1027276
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.2547498    0.2414848   0.2680148
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.3493556    0.3020339   0.3966773
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.2039631    0.1849004   0.2230257
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         NA                0.5875958    0.5469877   0.6282040
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           NA                0.6755652    0.5926284   0.7585020
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                0.5102913    0.3531874   0.6673953


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6102362   0.5501413   0.6703311
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6074380   0.5457864   0.6690897
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6863442   0.6430946   0.7295939
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4514200   0.4136828   0.4891573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3454158   0.3261661   0.3646654
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1692890   0.1503168   0.1882613
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4391486   0.4293319   0.4489653
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6356033   0.6029802   0.6682264
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3464567   0.2878227   0.4050907
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3429752   0.2830428   0.4029076
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4179688   0.3574314   0.4785061
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4269423   0.3929328   0.4609518
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2466368   0.2139486   0.2793250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1927505   0.1767818   0.2087193
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0970280   0.0839943   0.1100616
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2863261   0.2773790   0.2952732
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4932615   0.4489809   0.5375420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2280255   0.2072654   0.2487856
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0800775   0.0658478   0.0943072
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2438392   0.2331223   0.2545561
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5983494   0.5626894   0.6340094


### Parameter: RR


agecat        studyid                    country                        intervention_level    baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  ----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     1.1599629   0.9048600    1.4869858
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     0.8479611   0.6465210    1.1121649
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     0.9614661   0.7471769    1.2372130
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.9074730   0.6991958    1.1777920
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.1580606   1.0921521    1.2279466
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     0.8295205   0.6459998    1.0651773
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.2182510   1.0857277    1.3669499
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.7507352   0.5969209    0.9441842
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.1924324   1.0099423    1.4078972
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.7000273   0.5485360    0.8933566
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.3758496   1.1709746    1.6165697
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.8408814   0.6987015    1.0119937
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.0123032   0.7719661    1.3274646
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.9445191   0.8428368    1.0584688
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           Normal weight     1.1514815   0.9200187    1.4411770
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   Normal weight     0.5635104   0.0092154   34.4579951
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.3548721   1.1672621    1.5726359
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     1.0184145   0.9285137    1.1170197
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.2425944   1.1582482    1.3330828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.8035347   0.7588093    0.8508962
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight     1.0806525   0.9533643    1.2249355
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight     0.8265769   0.6114920    1.1173153
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     1.2680477   0.8819636    1.8231421
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     0.7542072   0.4833387    1.1768734
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     1.2447817   0.8292410    1.8685536
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     1.1974379   0.7981454    1.7964865
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.3135436   0.8090196    2.1327008
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.7780220   0.5321560    1.1374827
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.2813567   1.1594599    1.4160688
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     0.6662156   0.4723528    0.9396434
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.4049585   1.1072730    1.7826754
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.8649299   0.6013761    1.2439865
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.2748749   0.9790266    1.6601246
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.6544923   0.4476880    0.9568275
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.4300491   1.1064944    1.8482157
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.8717996   0.6720546    1.1309119
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.1561265   0.6464472    2.0676530
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.8651776   0.7303067    1.0249560
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.4355306   1.1859526    1.7376310
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.9584768   0.8314415    1.1049216
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.2749967   1.1514877    1.4117533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.7706500   0.7112352    0.8350281
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     1.2435021   0.7514032    2.0578797
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     0.8593307   0.5404546    1.3663483
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     0.6962963   0.4017104    1.2069107
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.6064516   0.3357274    1.0954827
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.1997498   1.0526634    1.3673883
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     0.8766065   0.5639174    1.3626799
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.2092176   0.9876103    1.4805508
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.5691489   0.3848286    0.8417525
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.2466511   0.9155327    1.6975242
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.6444868   0.4214043    0.9856642
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.4831747   1.0921082    2.0142759
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.6745891   0.4726664    0.9627730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     0.8887411   0.4033066    1.9584623
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.9460793   0.7872329    1.1369774
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           Normal weight     1.1509756   0.9189042    1.4416572
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   Normal weight     0.5638107   0.0090846   34.9912853
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.3430069   1.0503931    1.7171357
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     1.0956397   0.9543711    1.2578193
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.3713674   1.1861308    1.5855321
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.8006407   0.7194216    0.8910290
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight     1.1497106   0.9986215    1.3236591
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight     0.8684393   0.6334434    1.1906145


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0093957   -0.0544586    0.0356672
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0315802   -0.0834957    0.0203352
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0206804    0.0058771    0.0354838
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0044097   -0.0191156    0.0279351
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0199349   -0.0485019    0.0086322
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0168908   -0.0439187    0.0101371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0121127   -0.0308208    0.0065954
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0002786   -0.0402429    0.0396858
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0016169   -0.0046963    0.0079300
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0193016   -0.0260261   -0.0125771
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0037061   -0.0135851    0.0209973
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0061138   -0.0489312    0.0367037
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0267680   -0.0227590    0.0762950
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0170595   -0.0572437    0.0231247
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0216955    0.0066664    0.0367246
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0172823   -0.0069959    0.0415606
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0072450   -0.0316708    0.0171807
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0105649   -0.0351878    0.0140580
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0121078   -0.0272068    0.0029913
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0005405   -0.0056049    0.0045238
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0161254   -0.0222022   -0.0100486
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0043589   -0.0626452    0.0539274
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0658202   -0.1279619   -0.0036785
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0166439   -0.0083180    0.0416059
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0177241   -0.0505756    0.0151274
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0159066   -0.0478667    0.0160536
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0174184   -0.0472860    0.0124493
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0063885   -0.0266950    0.0139180
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0003084   -0.0403042    0.0396875
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0023103   -0.0025287    0.0071493
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0109106   -0.0184457   -0.0033755
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0107535   -0.0081630    0.0296701


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0153968   -0.0920297    0.0558585
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0519892   -0.1414193    0.0304340
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0301313    0.0080219    0.0517480
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0066357   -0.0294112    0.0414203
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0441603   -0.1095622    0.0173865
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0352281   -0.0932408    0.0197062
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0350670   -0.0906847    0.0177145
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0007825   -0.1196793    0.1054888
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0095509   -0.0285577    0.0462475
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0439523   -0.0594084   -0.0287216
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0058308   -0.0217529    0.0326699
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0176466   -0.1491280    0.0987908
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0780464   -0.0779828    0.2114917
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0408152   -0.1416358    0.0511016
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0508160    0.0147663    0.0855467
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0494118   -0.0226036    0.1163556
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0293753   -0.1334110    0.0651109
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0348318   -0.1193053    0.0432664
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0628157   -0.1440178    0.0126226
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0055711   -0.0590830    0.0452371
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0563185   -0.0777673   -0.0352965
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0103443   -0.1585883    0.1189315
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.1594082   -0.3222514   -0.0166202
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0337426   -0.0186777    0.0834654
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0308829   -0.0898699    0.0249116
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0530606   -0.1653563    0.0484142
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0662683   -0.1864336    0.0417262
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0280166   -0.1210257    0.0572758
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0008662   -0.1198718    0.1054930
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0288503   -0.0323144    0.0863910
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0447453   -0.0761189   -0.0142863
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0179720   -0.0141917    0.0491157
