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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mhtcm        ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=160                   0        4     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=160                   1        0     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <145                    0       42     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <145                    1       14     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)               0       74     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)               1       17     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)               0       73     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)               1        9     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)               0       18     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)               1        3     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=160                   0       63     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=160                   1        5     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <145                    0        7     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <145                    1        1     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)               0       27     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)               1        6     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)               0       47     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)               1        4     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)               0       55     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)               1        7     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=160                   0       13     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=160                   1        1     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <145                    0       25     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <145                    1        4     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [145-150)               0       55     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [145-150)               1       15     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [150-155)               0       70     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [150-155)               1       18     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [155-160)               0       38     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [155-160)               1        3     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=160                   0        5     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=160                   1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <145                    0       28     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <145                    1        9     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [145-150)               0       80     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [145-150)               1        6     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [150-155)               0       65     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [150-155)               1        9     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [155-160)               0       33     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [155-160)               1        3     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=160                   0       10     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=160                   1        2     290
0-6 months    ki0047075b-MAL-ED          PERU                           <145                    0       31     290
0-6 months    ki0047075b-MAL-ED          PERU                           <145                    1       11     290
0-6 months    ki0047075b-MAL-ED          PERU                           [145-150)               0       94     290
0-6 months    ki0047075b-MAL-ED          PERU                           [145-150)               1       14     290
0-6 months    ki0047075b-MAL-ED          PERU                           [150-155)               0       75     290
0-6 months    ki0047075b-MAL-ED          PERU                           [150-155)               1        5     290
0-6 months    ki0047075b-MAL-ED          PERU                           [155-160)               0       44     290
0-6 months    ki0047075b-MAL-ED          PERU                           [155-160)               1        4     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                   0      109     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                   1       12     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145                    0        9     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145                    1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)               0       11     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)               1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)               0       38     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)               1        5     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)               0       75     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)               1        8     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                   0       60     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                   1        4     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                    0        6     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                    1        4     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)               0       18     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)               1        8     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)               0       56     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)               1       11     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)               0       74     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)               1       15     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                   0      161    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                   1       29    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                    0       67    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                    1       54    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)               0      169    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)               1      106    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)               0      307    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)               1      130    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)               0      292    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)               1       89    1404
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160                   0       15     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160                   1        2     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145                    0       22     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145                    1       38     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)               0       71     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)               1       58     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)               0       99     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)               1       41     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)               0       44     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)               1       17     407
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=160                   0       25     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=160                   1        0     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <145                    0       86     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <145                    1       28     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)               0      175     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)               1       34     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)               0      163     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)               1       26     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)               0       81     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)               1       11     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=160                   0       32     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=160                   1        1     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <145                    0       76     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <145                    1       11     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)               0      206     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)               1       29     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)               0      193     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)               1       16     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)               0       97     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)               1        8     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160                   0       22     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160                   1        0     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145                    0       89     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145                    1       23     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)               0      215     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)               1       29     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)               0      221     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)               1       38     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)               0      103     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)               1       15     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                   0      651    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                   1       24    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                    0       32    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                    1        3    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)               0      163    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)               1       21    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)               0      599    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)               1       51    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)               0      758    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)               1       57    2359
0-6 months    ki1101329-Keneba           GAMBIA                         >=160                   0     1025    2158
0-6 months    ki1101329-Keneba           GAMBIA                         >=160                   1       71    2158
0-6 months    ki1101329-Keneba           GAMBIA                         <145                    0        3    2158
0-6 months    ki1101329-Keneba           GAMBIA                         <145                    1        1    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [145-150)               0       27    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [145-150)               1        5    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [150-155)               0      285    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [150-155)               1       42    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [155-160)               0      632    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [155-160)               1       67    2158
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160                   0        8     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160                   1        2     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <145                    0       28     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <145                    1       15     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)               0       55     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)               1       18     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)               0       56     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)               1       13     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)               0       20     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)               1        4     219
0-6 months    ki1119695-PROBIT           BELARUS                        >=160                   0    11139   13734
0-6 months    ki1119695-PROBIT           BELARUS                        >=160                   1       21   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <145                    0        4   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <145                    1        0   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [145-150)               0       25   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [145-150)               1        0   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [150-155)               0      493   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [150-155)               1        1   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [155-160)               0     2040   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [155-160)               1       11   13734
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                   0     4489    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                   1      437    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                    0       51    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                    1       13    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)               0      277    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)               1       40    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)               0     1437    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)               1      190    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)               0     2588    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)               1      318    9840
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=160                   0       33    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=160                   1        1    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      <145                    0      182    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      <145                    1       49    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [145-150)               0      333    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [145-150)               1       53    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [150-155)               0      290    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [150-155)               1       25    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [155-160)               0       90    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [155-160)               1       14    1070
0-6 months    ki1135781-COHORTS          INDIA                          >=160                   0      146    1872
0-6 months    ki1135781-COHORTS          INDIA                          >=160                   1        8    1872
0-6 months    ki1135781-COHORTS          INDIA                          <145                    0      136    1872
0-6 months    ki1135781-COHORTS          INDIA                          <145                    1       31    1872
0-6 months    ki1135781-COHORTS          INDIA                          [145-150)               0      438    1872
0-6 months    ki1135781-COHORTS          INDIA                          [145-150)               1       67    1872
0-6 months    ki1135781-COHORTS          INDIA                          [150-155)               0      575    1872
0-6 months    ki1135781-COHORTS          INDIA                          [150-155)               1       66    1872
0-6 months    ki1135781-COHORTS          INDIA                          [155-160)               0      376    1872
0-6 months    ki1135781-COHORTS          INDIA                          [155-160)               1       29    1872
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                   0      129    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                   1        1    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <145                    0      285    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <145                    1       42    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)               0      895    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)               1       69    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)               0     1074    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)               1       61    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)               0      487    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)               1       15    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         >=160                   0       59     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=160                   1       15     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <145                    0        2     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <145                    1        3     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [145-150)               0       12     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [145-150)               1       15     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [150-155)               0       39     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [150-155)               1       39     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [155-160)               0       62     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [155-160)               1       25     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                   0      603   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                   1      105   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                    0     2510   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                    1     2261   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)               0     5958   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)               1     3242   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)               0     6505   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)               1     2427   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)               0     2768   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)               1      669   27048
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=160                   0        3     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=160                   1        1     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <145                    0       20     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <145                    1       17     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)               0       38     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)               1       29     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)               0       46     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)               1       24     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)               0       15     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)               1        2     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                   0       59     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                   1        4     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                    0        7     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                    1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)               0       29     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)               1        1     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)               0       45     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)               1        3     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)               0       55     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)               1        0     203
6-24 months   ki0047075b-MAL-ED          INDIA                          >=160                   0       11     194
6-24 months   ki0047075b-MAL-ED          INDIA                          >=160                   1        1     194
6-24 months   ki0047075b-MAL-ED          INDIA                          <145                    0       12     194
6-24 months   ki0047075b-MAL-ED          INDIA                          <145                    1       11     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)               0       29     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)               1       23     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)               0       49     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)               1       23     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)               0       27     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)               1        8     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=160                   0        5     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=160                   1        0     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          <145                    0       19     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          <145                    1       13     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [145-150)               0       66     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [145-150)               1       13     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [150-155)               0       62     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [150-155)               1       10     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [155-160)               0       36     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [155-160)               1        0     224
6-24 months   ki0047075b-MAL-ED          PERU                           >=160                   0        9     228
6-24 months   ki0047075b-MAL-ED          PERU                           >=160                   1        2     228
6-24 months   ki0047075b-MAL-ED          PERU                           <145                    0       14     228
6-24 months   ki0047075b-MAL-ED          PERU                           <145                    1       12     228
6-24 months   ki0047075b-MAL-ED          PERU                           [145-150)               0       48     228
6-24 months   ki0047075b-MAL-ED          PERU                           [145-150)               1       32     228
6-24 months   ki0047075b-MAL-ED          PERU                           [150-155)               0       49     228
6-24 months   ki0047075b-MAL-ED          PERU                           [150-155)               1       19     228
6-24 months   ki0047075b-MAL-ED          PERU                           [155-160)               0       34     228
6-24 months   ki0047075b-MAL-ED          PERU                           [155-160)               1        9     228
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                   0       82     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                   1       21     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                    0        5     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                    1        2     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)               0        7     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)               1        5     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)               0       25     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)               1        6     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)               0       43     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)               1       23     219
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                   0       29     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                   1       25     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                    0        0     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                    1        2     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)               0        1     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)               1       13     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)               0       15     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)               1       34     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)               0       26     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)               1       42     187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                   0      116     881
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                   1       37     881
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                    0       28     881
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                    1       27     881
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)               0       78     881
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)               1       59     881
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)               0      177     881
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)               1       77     881
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)               0      210     881
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)               1       72     881
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                   0       11     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                   1        3     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145                    0        8     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145                    1       12     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)               0       23     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)               1       42     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)               0       34     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)               1       53     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)               0       23     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)               1       17     226
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                   0       18     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                   1        1     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                    0       18     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                    1       41     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)               0       67     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)               1       71     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)               0       82     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)               1       55     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)               0       46     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)               1       21     420
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                   0       28     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                   1        1     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                    0       29     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                    1       22     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)               0      126     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)               1       43     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)               0      120     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)               1       40     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)               0       75     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)               1       13     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                   0       21     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                   1        1     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                    0       62     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                    1       21     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)               0      150     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)               1       41     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)               0      175     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)               1       44     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)               0       95     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)               1       10     620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                   0      498    1819
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                   1       40    1819
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                    0       20    1819
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                    1        7    1819
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)               0       90    1819
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)               1       35    1819
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)               0      411    1819
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)               1       86    1819
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)               0      553    1819
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)               1       79    1819
6-24 months   ki1101329-Keneba           GAMBIA                         >=160                   0      873    2019
6-24 months   ki1101329-Keneba           GAMBIA                         >=160                   1      206    2019
6-24 months   ki1101329-Keneba           GAMBIA                         <145                    0        2    2019
6-24 months   ki1101329-Keneba           GAMBIA                         <145                    1        0    2019
6-24 months   ki1101329-Keneba           GAMBIA                         [145-150)               0        9    2019
6-24 months   ki1101329-Keneba           GAMBIA                         [145-150)               1       10    2019
6-24 months   ki1101329-Keneba           GAMBIA                         [150-155)               0      193    2019
6-24 months   ki1101329-Keneba           GAMBIA                         [150-155)               1       96    2019
6-24 months   ki1101329-Keneba           GAMBIA                         [155-160)               0      420    2019
6-24 months   ki1101329-Keneba           GAMBIA                         [155-160)               1      210    2019
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=160                   0        9     154
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=160                   1        0     154
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <145                    0       17     154
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <145                    1       10     154
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [145-150)               0       41     154
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [145-150)               1       10     154
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [150-155)               0       37     154
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [150-155)               1       11     154
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [155-160)               0       17     154
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [155-160)               1        2     154
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                   0     1605    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                   1      227    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)               0       20    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)               1       12    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)               0      127    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)               1       48    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)               0      479    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)               1      113    2631
6-24 months   ki1119695-PROBIT           BELARUS                        >=160                   0    10591   13522
6-24 months   ki1119695-PROBIT           BELARUS                        >=160                   1      428   13522
6-24 months   ki1119695-PROBIT           BELARUS                        <145                    0        3   13522
6-24 months   ki1119695-PROBIT           BELARUS                        <145                    1        1   13522
6-24 months   ki1119695-PROBIT           BELARUS                        [145-150)               0       20   13522
6-24 months   ki1119695-PROBIT           BELARUS                        [145-150)               1        2   13522
6-24 months   ki1119695-PROBIT           BELARUS                        [150-155)               0      441   13522
6-24 months   ki1119695-PROBIT           BELARUS                        [150-155)               1       37   13522
6-24 months   ki1119695-PROBIT           BELARUS                        [155-160)               0     1889   13522
6-24 months   ki1119695-PROBIT           BELARUS                        [155-160)               1      110   13522
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                   0     3385    7440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                   1      464    7440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                    0       27    7440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                    1       13    7440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)               0      151    7440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)               1       46    7440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)               0      987    7440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)               1      187    7440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)               0     1829    7440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)               1      351    7440
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                   0       13     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                   1       14     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      <145                    0       24     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      <145                    1       59     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)               0       87     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)               1      119     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)               0       91     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)               1      118     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)               0       44     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)               1       32     601
6-24 months   ki1135781-COHORTS          INDIA                          >=160                   0      136    1535
6-24 months   ki1135781-COHORTS          INDIA                          <145                    0      116    1535
6-24 months   ki1135781-COHORTS          INDIA                          [145-150)               0      392    1535
6-24 months   ki1135781-COHORTS          INDIA                          [150-155)               0      531    1535
6-24 months   ki1135781-COHORTS          INDIA                          [155-160)               0      360    1535
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                   0       81    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                   1       32    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                    0       53    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                    1      123    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)               0      301    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)               1      360    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)               0      448    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)               1      422    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)               0      251    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)               1      153    2224
6-24 months   ki1148112-LCNI-5           MALAWI                         >=160                   0      148     587
6-24 months   ki1148112-LCNI-5           MALAWI                         >=160                   1       33     587
6-24 months   ki1148112-LCNI-5           MALAWI                         <145                    0        2     587
6-24 months   ki1148112-LCNI-5           MALAWI                         <145                    1        3     587
6-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)               0       26     587
6-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)               1       20     587
6-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)               0       79     587
6-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)               1       56     587
6-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)               0      154     587
6-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)               1       66     587
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                   0      411   13263
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                   1       35   13263
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                    0     1187   13263
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                    1      556   13263
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)               0     3270   13263
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)               1      974   13263
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)               0     3957   13263
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)               1      836   13263
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)               0     1823   13263
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)               1      214   13263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=160                   0        3     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=160                   1        1     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <145                    0       20     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <145                    1       36     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)               0       36     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)               1       55     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)               0       50     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)               1       32     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)               0       16     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)               1        5     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                   0       58     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                   1       10     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                    0        6     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                    1        2     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)               0       26     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)               1        7     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)               0       44     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)               1        7     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)               0       54     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)               1        8     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=160                   0       10     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=160                   1        4     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <145                    0       13     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <145                    1       16     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)               0       25     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)               1       45     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)               0       44     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)               1       44     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)               0       26     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)               1       15     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=160                   0        5     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=160                   1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <145                    0       17     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <145                    1       20     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [145-150)               0       67     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [145-150)               1       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [150-155)               0       58     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [150-155)               1       16     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [155-160)               0       33     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [155-160)               1        3     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=160                   0        6     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=160                   1        6     290
0-24 months   ki0047075b-MAL-ED          PERU                           <145                    0       16     290
0-24 months   ki0047075b-MAL-ED          PERU                           <145                    1       26     290
0-24 months   ki0047075b-MAL-ED          PERU                           [145-150)               0       52     290
0-24 months   ki0047075b-MAL-ED          PERU                           [145-150)               1       56     290
0-24 months   ki0047075b-MAL-ED          PERU                           [150-155)               0       50     290
0-24 months   ki0047075b-MAL-ED          PERU                           [150-155)               1       30     290
0-24 months   ki0047075b-MAL-ED          PERU                           [155-160)               0       32     290
0-24 months   ki0047075b-MAL-ED          PERU                           [155-160)               1       16     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                   0       84     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                   1       37     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                    0        4     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                    1        5     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)               0        4     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)               1       10     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)               0       23     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)               1       20     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)               0       42     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)               1       41     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                   0       28     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                   1       36     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                    0        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                    1        8     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)               0        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)               1       24     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)               0       15     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)               1       52     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)               0       28     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)               1       61     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                   0      108    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                   1       82    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                    0       29    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                    1       92    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)               0       80    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)               1      197    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)               0      173    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)               1      264    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)               0      190    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)               1      192    1407
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                   0       12     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                   1        5     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145                    0        7     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145                    1       53     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)               0       23     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)               1      106     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)               0       36     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)               1      106     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)               0       22     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)               1       39     409
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                   0       24     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                   1        1     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                    0       30     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                    1       84     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)               0       81     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)               1      128     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)               0       96     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)               1       93     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)               0       55     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)               1       37     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                   0       28     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                   1        5     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                    0       36     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                    1       51     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)               0      136     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)               1       99     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)               0      127     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)               1       82     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)               0       81     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)               1       24     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                   0       20     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                   1        2     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                    0       54     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                    1       58     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)               0      137     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)               1      107     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)               0      162     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)               1       97     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)               0       88     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)               1       30     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                   0      587    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                   1       88    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                    0       18    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                    1       17    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)               0      109    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)               1       75    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)               0      471    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)               1      179    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)               0      641    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)               1      174    2359
0-24 months   ki1101329-Keneba           GAMBIA                         >=160                   0      858    2430
0-24 months   ki1101329-Keneba           GAMBIA                         >=160                   1      369    2430
0-24 months   ki1101329-Keneba           GAMBIA                         <145                    0        1    2430
0-24 months   ki1101329-Keneba           GAMBIA                         <145                    1        6    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [145-150)               0        8    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [145-150)               1       31    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [150-155)               0      175    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [150-155)               1      198    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [155-160)               0      426    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [155-160)               1      358    2430
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=160                   0        9     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=160                   1        2     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <145                    0       15     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <145                    1       34     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [145-150)               0       45     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [145-150)               1       33     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [150-155)               0       38     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [150-155)               1       34     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [155-160)               0       15     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [155-160)               1       10     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                   0     1543    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                   1      559    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <145                    0        0    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <145                    1        3    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)               0       19    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)               1       35    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)               0      112    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)               1      145    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)               0      450    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)               1      311    3177
0-24 months   ki1119695-PROBIT           BELARUS                        >=160                   0    10186   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=160                   1      974   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <145                    0        3   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <145                    1        1   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [145-150)               0       18   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [145-150)               1        7   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [150-155)               0      405   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [150-155)               1       89   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [155-160)               0     1764   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [155-160)               1      287   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                   0     3638    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                   1     1293    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                    0       33    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                    1       31    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)               0      151    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)               1      166    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)               0     1010    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)               1      622    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)               0     1909    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)               1      999    9852
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                   0       17    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                   1       21    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      <145                    0       42    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      <145                    1      233    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)               0      121    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)               1      344    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)               0      122    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)               1      264    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)               0       57    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)               1       71    1292
0-24 months   ki1135781-COHORTS          INDIA                          >=160                   0      136    1906
0-24 months   ki1135781-COHORTS          INDIA                          >=160                   1       20    1906
0-24 months   ki1135781-COHORTS          INDIA                          <145                    0      109    1906
0-24 months   ki1135781-COHORTS          INDIA                          <145                    1       64    1906
0-24 months   ki1135781-COHORTS          INDIA                          [145-150)               0      376    1906
0-24 months   ki1135781-COHORTS          INDIA                          [145-150)               1      136    1906
0-24 months   ki1135781-COHORTS          INDIA                          [150-155)               0      516    1906
0-24 months   ki1135781-COHORTS          INDIA                          [150-155)               1      134    1906
0-24 months   ki1135781-COHORTS          INDIA                          [155-160)               0      367    1906
0-24 months   ki1135781-COHORTS          INDIA                          [155-160)               1       48    1906
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                   0       90    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                   1       40    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                    0       74    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                    1      253    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)               0      350    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)               1      614    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)               0      520    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)               1      615    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)               0      276    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)               1      226    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         >=160                   0      132     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=160                   1       94     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <145                    0        1     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <145                    1       11     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)               0       23     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)               1       70     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)               0       73     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)               1      145     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)               0      130     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)               1      158     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                   0      572   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                   1      138   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                    0     1775   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                    1     3001   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)               0     4703   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)               1     4525   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)               0     5534   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)               1     3421   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)               0     2494   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)               1      951   27114


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
##            ever_stunted
## mhtcm         0
##   >=160     136
##   <145      116
##   [145-150) 392
##   [150-155) 531
##   [155-160) 360
```




# Results Detail

## Results Plots
![](/tmp/66989de0-573c-47a2-87bb-9606c4cf480d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/66989de0-573c-47a2-87bb-9606c4cf480d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/66989de0-573c-47a2-87bb-9606c4cf480d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/66989de0-573c-47a2-87bb-9606c4cf480d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           >=160                NA                0.6594694   0.4611345   0.8578042
0-24 months   ki0047075b-MAL-ED          PERU                           <145                 NA                0.6408872   0.5138973   0.7678770
0-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            NA                0.5259621   0.4363176   0.6156066
0-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            NA                0.3944372   0.2987633   0.4901111
0-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            NA                0.3370615   0.2156174   0.4585056
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.4319654   0.3631632   0.5007676
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.7605297   0.6699771   0.8510822
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.7112534   0.6354844   0.7870224
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.6041165   0.5371623   0.6710708
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.5021280   0.4639737   0.5402824
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                NA                0.2894734   0.1087205   0.4702263
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145                 NA                0.8880613   0.8088318   0.9672908
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            NA                0.8231479   0.7588087   0.8874871
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            NA                0.7502909   0.6809802   0.8196015
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            NA                0.6244702   0.5126392   0.7363012
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.1760540   0.0639787   0.2881294
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                0.6164769   0.5200711   0.7128826
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                0.4221925   0.3599167   0.4844682
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                0.3991671   0.3341428   0.4641914
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                0.2369791   0.1606191   0.3133391
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1293675   0.1042179   0.1545171
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.4645013   0.3374178   0.5915847
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.4033668   0.3367097   0.4700239
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.2763419   0.2422587   0.3104250
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.2122792   0.1843408   0.2402177
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.2625510   0.2503022   0.2747997
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.4922906   0.3825433   0.6020379
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.5242787   0.4719771   0.5765804
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.3814622   0.3580855   0.4048390
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.3439985   0.3268362   0.3611608
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.4800303   0.3608354   0.5992252
0-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.8399823   0.7989479   0.8810168
0-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.7347294   0.6955921   0.7738667
0-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.6769259   0.6315660   0.7222859
0-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.5219254   0.4450562   0.5987947
0-24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.1241094   0.0739970   0.1742217
0-24 months   ki1135781-COHORTS          INDIA                          <145                 NA                0.3491276   0.2821716   0.4160836
0-24 months   ki1135781-COHORTS          INDIA                          [145-150)            NA                0.2622725   0.2247368   0.2998082
0-24 months   ki1135781-COHORTS          INDIA                          [150-155)            NA                0.2046156   0.1738000   0.2354312
0-24 months   ki1135781-COHORTS          INDIA                          [155-160)            NA                0.1133656   0.0832382   0.1434929
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.3015361   0.2293412   0.3737311
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.7703573   0.7263155   0.8143992
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.6380569   0.6079911   0.6681227
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.5404989   0.5116859   0.5693118
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.4454132   0.4028950   0.4879313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1937285   0.1663954   0.2210616
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.6267402   0.6119795   0.6415009
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.4886528   0.4772939   0.5000117
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.3834894   0.3721877   0.3947912
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.2789604   0.2628140   0.2951067
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.1514269   0.1186806   0.1841731
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.4468920   0.3394867   0.5542973
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.3861983   0.3271187   0.4452778
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.2968549   0.2465841   0.3471256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.2322164   0.1860480   0.2783847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0889483   0.0810190   0.0968776
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.2165572   0.1231707   0.3099438
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.1295727   0.0935035   0.1656419
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.1175215   0.1020365   0.1330064
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.1100212   0.0987016   0.1213407
0-6 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0517206   0.0184370   0.0850042
0-6 months    ki1135781-COHORTS          INDIA                          <145                 NA                0.1972253   0.1423107   0.2521399
0-6 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                0.1347072   0.1056557   0.1637588
0-6 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                0.1031242   0.0798348   0.1264135
0-6 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                0.0710762   0.0463784   0.0957740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1500848   0.1252635   0.1749062
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.4706170   0.4567344   0.4844996
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.3506502   0.3398794   0.3614210
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.2730863   0.2624883   0.2836844
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.1973329   0.1830349   0.2116309
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.2431259   0.1641428   0.3221089
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.4849572   0.4125942   0.5573202
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.4238656   0.3231493   0.5245819
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.3012541   0.2604373   0.3420709
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.2526175   0.2035032   0.3017318
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0734817   0.0513893   0.0955741
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.2216686   0.0664924   0.3768447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.2771332   0.2016825   0.3525838
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.1735086   0.1405855   0.2064317
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.1242399   0.0985719   0.1499078
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                NA                0.1252319   0.1010812   0.1493825
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)            NA                0.2549102   0.1809740   0.3288463
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)            NA                0.2781445   0.2001966   0.3560924
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)            NA                0.1875712   0.1241251   0.2510173
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1208905   0.1106306   0.1311504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.3302848   0.2137468   0.4468229
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.2422201   0.1880721   0.2963680
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.1603530   0.1396376   0.1810685
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.1608686   0.1455937   0.1761436
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.4715446   0.2797838   0.6633054
6-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.7028165   0.6054827   0.8001503
6-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.5720543   0.5047641   0.6393446
6-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.5579113   0.4909720   0.6248506
6-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.4071683   0.2985538   0.5157829
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.2863586   0.2067359   0.3659813
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.7014049   0.6355619   0.7672479
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.5453578   0.5076101   0.5831055
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.4853968   0.4523043   0.5184892
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.3786332   0.3318042   0.4254621
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.0752875   0.0529099   0.0976651
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.3239223   0.3016829   0.3461618
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.2297317   0.2159212   0.2435421
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.1743997   0.1623744   0.1864249
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.1054025   0.0915091   0.1192960


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4620690   0.4045891   0.5195488
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5877754   0.5430036   0.6325472
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7555012   0.7137976   0.7972049
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3901345   0.3531446   0.4271245
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2259432   0.2090636   0.2428228
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3157734   0.3065944   0.3249525
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7221362   0.6977013   0.7465711
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2109129   0.1925934   0.2292325
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5716154   0.5540738   0.5891570
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4439035   0.4363886   0.4514185
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2905983   0.2613336   0.3198630
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1014228   0.0954577   0.1073879
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1073718   0.0933439   0.1213997
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3217983   0.3150446   0.3285520
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3087401   0.2746057   0.3428745
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1357889   0.1200421   0.1515357
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1520334   0.1259980   0.1780689
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1426075   0.1346615   0.1505536
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5690516   0.5294273   0.6086758
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4901079   0.4693271   0.5108888
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1971650   0.1890838   0.2052463


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           >=160                >=160             1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           <145                 >=160             0.9718225   0.6778385   1.3933096
0-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            >=160             0.7975535   0.5654963   1.1248376
0-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            >=160             0.5981130   0.4073711   0.8781652
0-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            >=160             0.5111102   0.3197377   0.8170246
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160             1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             1.7606263   1.4560617   2.1288968
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             1.6465517   1.4096822   1.9232225
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             1.3985298   1.2206690   1.6023063
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             1.1624265   1.0218574   1.3223326
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                >=160             1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145                 >=160             3.0678512   1.6329043   5.7637860
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            >=160             2.8436045   1.5162549   5.3329338
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            >=160             2.5919164   1.3802424   4.8672834
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            >=160             2.1572628   1.1295109   4.1201752
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160             1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             3.5016342   1.8179982   6.7444744
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             2.3980846   1.2477290   4.6090212
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             2.2672988   1.1750634   4.3747796
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             1.3460591   0.6593638   2.7479139
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             3.5905561   2.5669957   5.0222496
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             3.1179920   2.4160502   4.0238707
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.1360995   1.6968955   2.6889819
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.6409006   1.2976919   2.0748799
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             1.8750287   1.4931330   2.3546012
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             1.9968645   1.7887093   2.2292430
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.4529073   1.3452622   1.5691660
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.3102161   1.2237986   1.4027358
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160             1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160             1.7498526   1.3586937   2.2536237
0-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             1.5305895   1.1874623   1.9728662
0-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             1.4101733   1.0905462   1.8234796
0-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             1.0872759   0.8150201   1.4504783
0-24 months   ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <145                 >=160             2.8130643   1.7995355   4.3974296
0-24 months   ki1135781-COHORTS          INDIA                          [145-150)            >=160             2.1132369   1.3767857   3.2436202
0-24 months   ki1135781-COHORTS          INDIA                          [150-155)            >=160             1.6486718   1.0712770   2.5372697
0-24 months   ki1135781-COHORTS          INDIA                          [155-160)            >=160             0.9134328   0.5637970   1.4798934
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             2.5547762   1.9973157   3.2678266
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             2.1160213   1.6578002   2.7008962
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             1.7924845   1.4025498   2.2908283
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.4771468   1.1414545   1.9115636
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160             1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             3.2351472   2.8039831   3.7326109
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             2.5223589   2.1878278   2.9080416
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             1.9795200   1.7144046   2.2856329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             1.4399552   1.2391848   1.6732541
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160             1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             2.9512067   2.2510225   3.8691844
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             2.5503947   1.9644340   3.3111386
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             1.9603844   1.4385385   2.6715358
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             1.5335216   1.1383371   2.0658982
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             2.4346417   1.5674513   3.7816043
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             1.4567189   1.0875684   1.9511692
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.3212337   1.1269666   1.5489885
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.2369115   1.0795138   1.4172584
0-6 months    ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <145                 >=160             3.8132809   1.8918297   7.6862685
0-6 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160             2.6045164   1.3206806   5.1363709
0-6 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160             1.9938689   1.0081350   3.9434336
0-6 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160             1.3742330   0.6617965   2.8536207
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160             1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             3.1356733   2.6521185   3.7073936
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             2.3363467   1.9748694   2.7639882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             1.8195464   1.5362240   2.1551212
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             1.3148091   1.1030164   1.5672687
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160             1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             1.9946754   1.4845328   2.6801225
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             1.7433997   1.2308922   2.4693005
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             1.2390869   0.8629284   1.7792165
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             1.0390400   0.7521558   1.4353465
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             3.0166501   1.4085236   6.4607921
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             3.7714583   2.5143744   5.6570325
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.3612493   1.6548109   3.3692660
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.6907594   1.1744773   2.4339911
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                >=160             1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)            >=160             2.0355051   1.4187250   2.9204258
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)            >=160             2.2210357   1.7493811   2.8198540
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)            >=160             1.4977907   1.0538563   2.1287312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             2.7320987   1.9006746   3.9272179
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             2.0036317   1.5776510   2.5446311
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.3264316   1.1365276   1.5480669
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.3306968   1.1717273   1.5112339
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160             1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160             1.4904560   0.9700498   2.2900462
6-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             1.2131499   0.7946252   1.8521094
6-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             1.1831569   0.7744876   1.8074664
6-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             0.8634779   0.5310947   1.4038815
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             2.4493935   1.8264095   3.2848758
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             1.9044575   1.4299412   2.5364387
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             1.6950662   1.2730233   2.2570281
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.3222344   0.9752905   1.7925980
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160             1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             4.3024703   3.1638311   5.8508973
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             3.0513907   2.2594872   4.1208401
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             2.3164484   1.7181931   3.1230094
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             1.4000000   1.0052002   1.9498605


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          PERU                           >=160                NA                -0.1974004   -0.3915880   -0.0032128
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.1558100    0.1113248    0.2002952
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                NA                 0.4660278    0.2897438    0.6423118
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                 0.2140805    0.1019263    0.3262347
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                 0.0965757    0.0730853    0.1200661
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.0532225    0.0440806    0.0623644
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                 0.2421059    0.1250400    0.3591718
0-24 months   ki1135781-COHORTS          INDIA                          >=160                NA                 0.0868035    0.0376683    0.1359388
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                 0.2700793    0.1990759    0.3410827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.2501750    0.2230390    0.2773111
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.1391714    0.1018409    0.1765020
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.0124745    0.0065253    0.0184236
0-6 months    ki1135781-COHORTS          INDIA                          >=160                NA                 0.0556512    0.0223109    0.0889914
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.1717134    0.1471014    0.1963255
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.0656142    0.0117962    0.1194322
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                 0.0623072    0.0412039    0.0834105
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                NA                 0.0268016    0.0122862    0.0413169
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.0217170    0.0140323    0.0294017
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                 0.0975070   -0.0898319    0.2848458
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                 0.2037493    0.1256346    0.2818641
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.1218775    0.0993088    0.1444463


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          PERU                           >=160                NA                -0.4272099   -0.9256959   -0.0577620
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.2650843    0.1784200    0.3426067
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                NA                 0.6168459    0.2915997    0.7927625
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                 0.5487350    0.1542604    0.7592166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                 0.4274335    0.3174644    0.5196845
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.1685464    0.1391945    0.1968974
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                 0.3352635    0.1514076    0.4792851
0-24 months   ki1135781-COHORTS          INDIA                          >=160                NA                 0.4115611    0.1287145    0.6025868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                 0.4724843    0.3323644    0.5831965
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.5635797    0.4983360    0.6203382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.4789134    0.3561634    0.5782607
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.1229947    0.0627387    0.1793769
0-6 months    ki1135781-COHORTS          INDIA                          >=160                NA                 0.5183033    0.0958914    0.7433586
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.5336058    0.4509292    0.6038334
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.2125224   -0.0013226    0.3806981
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                 0.4588534    0.2887559    0.5882713
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                NA                 0.1762872    0.0837030    0.2595165
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.1522851    0.0971924    0.2040159
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                 0.1713500   -0.2333007    0.4432332
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                 0.4157234    0.2325858    0.5551566
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.6181497    0.4878417    0.7153036
