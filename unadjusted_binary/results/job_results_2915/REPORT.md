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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/1343add9-e20f-42e9-838f-00b4ecd4476e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1343add9-e20f-42e9-838f-00b4ecd4476e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1343add9-e20f-42e9-838f-00b4ecd4476e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1343add9-e20f-42e9-838f-00b4ecd4476e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level    baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.6196319    0.5449561   0.6943077
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.7187500    0.5626637   0.8748363
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.5254237    0.3977544   0.6530930
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.6338028    0.5543997   0.7132060
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.5918367    0.4539358   0.7297376
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.5490196    0.4121727   0.6858665
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.6653019    0.6172829   0.7133210
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.7718310    0.7257077   0.8179543
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.5540541    0.4251287   0.6829794
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.6584270    0.6143300   0.7025240
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.8018868    0.7259497   0.8778239
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.5128205    0.4018076   0.6238334
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.4680851    0.4204983   0.5156719
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.5118110    0.4248109   0.5988111
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.3277311    0.2433336   0.4121286
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.4948240    0.4502061   0.5394419
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.5882353    0.4711826   0.7052880
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.4068627    0.3394065   0.4743190
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.3570850    0.3303568   0.3838132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.3684211    0.2150177   0.5218244
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.3311567    0.3029779   0.3593355
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         NA                0.3566929    0.3262982   0.3870876
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           NA                0.4124169    0.3099526   0.5148811
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   NA                0.2096774   -0.5709007   0.9902555
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.1675868    0.1470941   0.1880795
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.2294455    0.1871861   0.2717049
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.1658093    0.1453533   0.1862652
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.4577758    0.4458687   0.4696829
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.5551257    0.5122867   0.5979647
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.3672360    0.3486198   0.3858522
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         NA                0.6319018    0.5948602   0.6689435
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           NA                0.6827586    0.6069616   0.7585557
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                0.5250000    0.3701525   0.6798475
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.3558282    0.2821851   0.4294713
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.4375000    0.2652814   0.6097186
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.2711864    0.1575230   0.3848499
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.3169014    0.2402170   0.3935858
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.3877551    0.2510482   0.5244620
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.3725490    0.2395820   0.5055160
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.4350282    0.3618498   0.5082067
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.5714286    0.3116959   0.8311612
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.3384615    0.2232029   0.4537202
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.4051282    0.3679142   0.4423422
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.5197740    0.4625236   0.5770244
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.2702703    0.1884113   0.3521292
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.3303371    0.2866030   0.3740712
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.4716981    0.3765908   0.5668054
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.2948718    0.1935980   0.3961456
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.2529551    0.2114981   0.2944121
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.2913386    0.2122544   0.3704227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.1764706    0.1079257   0.2450155
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.3146998    0.2732568   0.3561428
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.3970588    0.2806874   0.5134302
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.2450980    0.1860323   0.3041638
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.2048583    0.1823441   0.2273725
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.2368421    0.1016393   0.3720449
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.1772388    0.1543744   0.2001032
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.0979021    0.0835804   0.1122238
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           NA                0.1434034    0.1112448   0.1755621
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.0908192    0.0755085   0.1061298
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.3017267    0.2907501   0.3127034
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.3713733    0.3297222   0.4130244
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.2290047    0.2127648   0.2452445
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.4257426    0.3290074   0.5224777
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.5294118    0.2913931   0.7674304
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.3658537    0.2179515   0.5137559
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.4787234    0.3774102   0.5800366
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.3333333    0.1640997   0.5025670
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.2903226    0.1300188   0.4506263
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.4766355    0.4232452   0.5300258
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.5732484    0.5204676   0.6260292
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.4200000    0.2461558   0.5938442
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.5910931    0.5296929   0.6524934
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.7142857    0.5876132   0.8409582
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.3469388    0.2134687   0.4804088
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.3148789    0.2612708   0.3684870
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.3835616    0.2718947   0.4952286
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.1894737    0.1105840   0.2683633
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.2761905    0.2267664   0.3256146
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.3170732    0.1744952   0.4596512
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.2200000    0.1536424   0.2863576
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.2344140    0.2050856   0.2637423
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.2083333    0.0458041   0.3708625
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.2217742    0.1919129   0.2516355
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         NA                0.3566929    0.3262982   0.3870876
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           NA                0.4124169    0.3099526   0.5148811
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   NA                0.2096774   -0.5709007   0.9902555
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.0772999    0.0633244   0.0912755
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.1004464    0.0701509   0.1307420
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.0825348    0.0652561   0.0998136
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.2542291    0.2409612   0.2674970
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.3287197    0.2745572   0.3828823
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.2050546    0.1860881   0.2240211
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         NA                0.5876106    0.5469924   0.6282289
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           NA                0.6747967    0.5919533   0.7576402
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                0.5128205    0.3558414   0.6697996


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
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     0.9337868   0.7167295    1.2165787
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.8662309   0.6553580    1.1449559
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.1601213   1.0909623    1.2336646
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     0.8327859   0.6498734    1.0671807
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.2178827   1.0845077    1.3676603
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.7788571   0.6209366    0.9769409
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.0934145   0.8969451    1.3329191
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.7001528   0.5308276    0.9234899
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.1887768   0.9554804    1.4790364
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.8222373   0.6808210    0.9930277
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.0317460   0.6758376    1.5750823
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.9273890   0.8280261    1.0386754
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           Normal weight     1.1562238   0.9185605    1.4553788
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   Normal weight     0.5878374   0.0142246   24.2926101
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.3691144   1.1405852    1.6434322
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.9893933   0.9055751    1.0809696
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.2126585   1.1178190    1.3155446
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.8022181   0.7577883    0.8492528
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight     1.0804821   0.9530056    1.2250102
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight     0.8308252   0.6150498    1.1223004
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     1.2295259   0.7881201    1.9181517
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     0.7621274   0.4775489    1.2162904
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     1.2235828   0.7978531    1.8764792
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     1.1755991   0.7638142    1.8093842
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.3135436   0.8090196    2.1327008
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.7780220   0.5321560    1.1374827
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.2829865   1.1610678    1.4177073
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     0.6671228   0.4718279    0.9432525
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.4279297   1.1218930    1.8174488
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.8926391   0.6177590    1.2898307
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.1517404   0.8387728    1.5814842
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.6976361   0.4576551    1.0634560
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.2617067   0.9149873    1.7398096
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.7788313   0.5918016    1.0249688
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.1561265   0.6464472    2.0676530
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.8651776   0.7303067    1.0249560
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.4647637   1.1694291    1.8346840
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.9276528   0.8055693    1.0682379
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.2308268   1.0939326    1.3848518
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.7589804   0.7008361    0.8219487
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     1.2435021   0.7514032    2.0578797
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     0.8593307   0.5404546    1.3663483
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     0.6962963   0.4017104    1.2069107
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.6064516   0.3357274    1.0954827
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.2026976   1.0529584    1.3737310
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     0.8811765   0.5697376    1.3628589
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.2084149   0.9839161    1.4841373
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.5869444   0.3940371    0.8742924
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.2181243   0.8694057    1.7067140
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.6017351   0.3837505    0.9435431
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.1480235   0.7075646    1.8626682
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.7965517   0.5609195    1.1311688
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     0.8887411   0.4033066    1.9584623
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.9460793   0.7872329    1.1369774
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           Normal weight     1.1562238   0.9185605    1.4553788
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   Normal weight     0.5878374   0.0142246   24.2926101
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.2994372   0.9643658    1.7509301
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     1.0677219   0.9295899    1.2263795
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.2930059   1.0877744    1.5369587
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.8065740   0.7253055    0.8969483
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight     1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight     1.1483740   0.9974596    1.3221216
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight     0.8727217   0.6376565    1.1944411


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0093957   -0.0544586    0.0356672
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0263648   -0.0783907    0.0256611
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0210423    0.0057435    0.0363411
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0061199   -0.0174755    0.0297153
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0166651   -0.0453874    0.0120573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0153538   -0.0420968    0.0113892
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0116692   -0.0299030    0.0065645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0006967   -0.0399308    0.0385375
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0017022   -0.0040852    0.0074897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0186272   -0.0252536   -0.0120008
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0037015   -0.0135820    0.0209850
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0093715   -0.0529678    0.0342247
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0260738   -0.0246343    0.0767819
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0170595   -0.0572437    0.0231247
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0218141    0.0067221    0.0369060
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0194244   -0.0050198    0.0438687
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0063183   -0.0310933    0.0184567
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0113885   -0.0358139    0.0130368
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0121078   -0.0272068    0.0029913
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0008741   -0.0057961    0.0040478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0154006   -0.0213559   -0.0094453
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0043589   -0.0626452    0.0539274
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0658202   -0.1279619   -0.0036785
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0166259   -0.0079115    0.0411634
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0171801   -0.0503848    0.0160246
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0150977   -0.0468381    0.0166427
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0133446   -0.0429296    0.0162403
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0063885   -0.0266950    0.0139180
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0006967   -0.0399308    0.0385375
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0027775   -0.0017788    0.0073339
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0103899   -0.0177851   -0.0029947
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0107388   -0.0081576    0.0296352


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0153968   -0.0920297    0.0558585
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0434033   -0.1329385    0.0390561
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0306585    0.0077268    0.0530603
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0092092   -0.0269519    0.0440969
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0369170   -0.1025925    0.0248465
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0320225   -0.0893817    0.0223167
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0337832   -0.0879451    0.0176824
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0019570   -0.1186997    0.1026029
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0100553   -0.0248886    0.0438077
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0424166   -0.0576348   -0.0274175
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0058236   -0.0217481    0.0326513
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0270496   -0.1609259    0.0913882
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0760224   -0.0842863    0.2126299
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0408152   -0.1416358    0.0511016
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0510937    0.0148338    0.0860190
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0555363   -0.0170071    0.1229051
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0256179   -0.1311322    0.0700538
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0375474   -0.1212733    0.0399267
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0628157   -0.1440178    0.0126226
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0090090   -0.0609386    0.0403788
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0537870   -0.0747819   -0.0332022
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0103443   -0.1585883    0.1189315
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.1594082   -0.3222514   -0.0166202
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0337061   -0.0178581    0.0826582
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0299350   -0.0895680    0.0264343
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0503624   -0.1617350    0.0503331
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0507698   -0.1695075    0.0559127
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0280166   -0.1210257    0.0572758
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0019570   -0.1186997    0.1026029
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0346858   -0.0228612    0.0889951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0426098   -0.0733638   -0.0127369
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0179473   -0.0141829    0.0490596
