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

unadjusted

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
![](/tmp/c51d82ce-3700-43c5-811a-605beffa081b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c51d82ce-3700-43c5-811a-605beffa081b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c51d82ce-3700-43c5-811a-605beffa081b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c51d82ce-3700-43c5-811a-605beffa081b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           >=160                NA                0.5000000   0.2166145   0.7833855
0-24 months   ki0047075b-MAL-ED          PERU                           <145                 NA                0.6190476   0.4719279   0.7661673
0-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            NA                0.5185185   0.4241215   0.6129155
0-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            NA                0.3750000   0.2687305   0.4812695
0-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            NA                0.3333333   0.1997442   0.4669225
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.4315789   0.3626119   0.5005460
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.7603306   0.6693218   0.8513393
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.7111913   0.6354269   0.7869558
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.6041190   0.5372988   0.6709392
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.5026178   0.4642693   0.5409663
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                NA                0.2941176   0.0772564   0.5109789
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145                 NA                0.8833333   0.8020054   0.9646613
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            NA                0.8217054   0.7555734   0.8878375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            NA                0.7464789   0.6748396   0.8181182
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            NA                0.6393443   0.5186939   0.7599946
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.1515152   0.0290913   0.2739390
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                0.5862069   0.4826378   0.6897760
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                0.4212766   0.3580997   0.4844535
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                0.3923445   0.3260981   0.4585909
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                0.2285714   0.1481934   0.3089494
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1303704   0.1049639   0.1557769
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.4857143   0.3200996   0.6513290
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.4076087   0.3365925   0.4786249
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.2753846   0.2410362   0.3097331
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.2134969   0.1853580   0.2416359
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.2622186   0.2499414   0.2744958
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.4843750   0.3619309   0.6068191
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.5236593   0.4686769   0.5786417
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.3811275   0.3575636   0.4046913
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.3435351   0.3262741   0.3607960
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.5526316   0.3944795   0.7107837
0-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.8472727   0.8047403   0.8898051
0-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.7397849   0.6998908   0.7796790
0-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.6839378   0.6375379   0.7303377
0-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.5546875   0.4685548   0.6408202
0-24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.1282051   0.0757293   0.1806810
0-24 months   ki1135781-COHORTS          INDIA                          <145                 NA                0.3699422   0.2979814   0.4419030
0-24 months   ki1135781-COHORTS          INDIA                          [145-150)            NA                0.2656250   0.2273583   0.3038917
0-24 months   ki1135781-COHORTS          INDIA                          [150-155)            NA                0.2061538   0.1750460   0.2372616
0-24 months   ki1135781-COHORTS          INDIA                          [155-160)            NA                0.1156627   0.0848844   0.1464409
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.3076923   0.2283408   0.3870438
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.7737003   0.7283402   0.8190604
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.6369295   0.6065681   0.6672909
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.5418502   0.5128591   0.5708413
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.4501992   0.4066708   0.4937276
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1943662   0.1626308   0.2261016
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.6283501   0.6134616   0.6432386
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.4903554   0.4789779   0.5017330
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.3820212   0.3707419   0.3933006
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.2760522   0.2597569   0.2923476
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.1526316   0.1207224   0.1845408
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.4462810   0.3267868   0.5657752
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.3854545   0.3257028   0.4452062
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.2974828   0.2470424   0.3479232
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.2335958   0.1857090   0.2814826
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0887130   0.0807725   0.0966534
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.2031250   0.1045522   0.3016978
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.1261830   0.0896276   0.1627383
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.1167793   0.1011733   0.1323854
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.1094288   0.0980781   0.1207795
0-6 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0519481   0.0168887   0.0870075
0-6 months    ki1135781-COHORTS          INDIA                          <145                 NA                0.1856287   0.1266440   0.2446135
0-6 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                0.1326733   0.1030794   0.1622671
0-6 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                0.1029641   0.0794308   0.1264974
0-6 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                0.0716049   0.0464875   0.0967223
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1483051   0.1192242   0.1773860
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.4739048   0.4598665   0.4879431
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.3523913   0.3416004   0.3631822
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.2717197   0.2611876   0.2822517
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.1946465   0.1801910   0.2091020
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.2418301   0.1592646   0.3243955
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.4909091   0.4096597   0.5721585
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.4306569   0.3286236   0.5326903
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.3031496   0.2610645   0.3452347
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.2553191   0.2066991   0.3039392
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0743494   0.0521757   0.0965232
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.2592593   0.0939162   0.4246023
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.2800000   0.2012668   0.3587332
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.1730382   0.1397720   0.2063044
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.1250000   0.0992090   0.1507910
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                NA                0.1239083   0.0993437   0.1484729
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)            NA                0.3750000   0.1813185   0.5686815
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)            NA                0.2742857   0.1571690   0.3914025
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)            NA                0.1908784   0.1262578   0.2554990
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1205508   0.1102637   0.1308379
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.3250000   0.1798420   0.4701580
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.2335025   0.1744219   0.2925832
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.1592845   0.1383504   0.1802186
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.1610092   0.1455796   0.1764387
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.5185185   0.3298933   0.7071437
6-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.7108434   0.6132267   0.8084601
6-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.5776699   0.5101640   0.6451758
6-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.5645933   0.4973186   0.6318680
6-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.4210526   0.3099586   0.5321466
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.2831858   0.2000964   0.3662752
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.6988636   0.6310734   0.7666539
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.5446293   0.5066561   0.5826026
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.4850575   0.4518403   0.5182746
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.3787129   0.3314025   0.4260232
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.0784754   0.0531021   0.1038488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.3189902   0.2967912   0.3411893
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.2295005   0.2156689   0.2433321
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.1744210   0.1623738   0.1864683
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.1050565   0.0910554   0.1190575


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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          PERU                           >=160                >=160             1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <145                 >=160             1.2380952   0.6696458   2.289090
0-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            >=160             1.0370370   0.5718241   1.880728
0-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            >=160             0.7500000   0.3979809   1.413384
0-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            >=160             0.6666667   0.3329993   1.334671
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160             1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             1.7617416   1.4569152   2.130346
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             1.6478824   1.4098513   1.926101
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             1.3997879   1.2221903   1.603192
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             1.1646022   1.0238196   1.324744
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                >=160             1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145                 >=160             3.0033333   1.4285623   6.314048
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            >=160             2.7937984   1.3306860   5.865629
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            >=160             2.5380282   1.2066403   5.338448
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            >=160             2.1737705   1.0154879   4.653210
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160             1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             3.8689655   1.6919796   8.846971
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             2.7804255   1.2223895   6.324307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             2.5894737   1.1342864   5.911535
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             1.5085714   0.6249769   3.641395
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             3.7256494   2.5155911   5.517774
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             3.1265440   2.4073409   4.060612
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.1123252   1.6760039   2.662236
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.6376185   1.2943114   2.071985
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             1.8472182   1.4284552   2.388745
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             1.9970333   1.7801543   2.240335
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.4534721   1.3450093   1.570682
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.3101094   1.2231535   1.403247
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160             1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160             1.5331602   1.1465778   2.050083
0-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             1.3386585   1.0004516   1.791198
0-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             1.2376018   0.9222527   1.660779
0-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             1.0037202   0.7247849   1.390005
0-24 months   ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <145                 >=160             2.8855491   1.8340624   4.539864
0-24 months   ki1135781-COHORTS          INDIA                          [145-150)            >=160             2.0718750   1.3424950   3.197528
0-24 months   ki1135781-COHORTS          INDIA                          [150-155)            >=160             1.6080000   1.0395113   2.487384
0-24 months   ki1135781-COHORTS          INDIA                          [155-160)            >=160             0.9021687   0.5536836   1.469988
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             2.5145260   1.9301772   3.275783
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             2.0700207   1.5924882   2.690749
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             1.7610132   1.3532447   2.291653
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.4631474   1.1108979   1.927090
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160             1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             3.2328156   2.7416186   3.812017
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             2.5228432   2.1407951   2.973072
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             1.9654715   1.6652672   2.319795
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             1.4202688   1.1966600   1.685661
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160             1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             2.9239099   2.2172821   3.855734
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             2.5253918   1.9677628   3.241043
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             1.9490255   1.4368670   2.643738
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             1.5304552   1.1271323   2.078100
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             2.2896882   1.3978689   3.750475
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             1.4223737   1.0503398   1.926183
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.3163732   1.1207940   1.546081
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.2335151   1.0755816   1.414639
0-6 months    ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <145                 >=160             3.5733533   1.6947724   7.534259
0-6 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160             2.5539604   1.2546362   5.198888
0-6 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160             1.9820593   0.9719913   4.041764
0-6 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160             1.3783951   0.6442367   2.949184
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160             1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             3.1954726   2.6231407   3.892679
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             2.3761242   1.9482122   2.898024
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             1.8321668   1.5003619   2.237350
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             1.3124735   1.0686877   1.611871
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160             1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             2.0299754   1.4716052   2.800208
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             1.7808246   1.2321988   2.573721
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             1.2535646   0.8605031   1.826169
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             1.0557792   0.7485710   1.489063
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             3.4870370   1.7246298   7.050457
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             3.7660000   2.4995724   5.674073
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.3273642   1.6321636   3.318677
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.6812500   1.1698620   2.416184
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                >=160             1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)            >=160             3.0264317   1.7026559   5.379413
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)            >=160             2.2136186   1.5015836   3.263293
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)            >=160             1.5404810   1.0609538   2.236744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             2.6959591   1.7109269   4.248104
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             1.9369639   1.4830485   2.529809
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.3213061   1.1296652   1.545458
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.3356127   1.1747704   1.518477
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160             1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160             1.3709122   0.9292682   2.022452
6-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             1.1140777   0.7602869   1.632501
6-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             1.0888585   0.7425500   1.596677
6-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             0.8120301   0.5180901   1.272738
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             2.4678622   1.8118065   3.361476
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             1.9232224   1.4225091   2.600183
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             1.7128592   1.2672751   2.315114
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.3373298   0.9721728   1.839643
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160             1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             4.0648434   2.9117818   5.674516
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             2.9244890   2.1098151   4.053737
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             2.2226202   1.6073618   3.073384
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             1.3387182   0.9371805   1.912296


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           >=160                NA                -0.0379310   -0.3153569   0.2394949
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.1561965    0.1121890   0.2002040
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                NA                 0.4613836    0.2495853   0.6731818
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                 0.2386194    0.1166470   0.3605918
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                 0.0955728    0.0718871   0.1192585
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.0535548    0.0443842   0.0627255
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                 0.1695046    0.0141410   0.3248682
0-24 months   ki1135781-COHORTS          INDIA                          >=160                NA                 0.0827078    0.0313409   0.1340747
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                 0.2639231    0.1860193   0.3418270
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.2495373    0.2181186   0.2809561
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.1379667    0.1011476   0.1747859
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.0127098    0.0067512   0.0186685
0-6 months    ki1135781-COHORTS          INDIA                          >=160                NA                 0.0554237    0.0204422   0.0904053
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.1734932    0.1446697   0.2023167
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.0669100    0.0094558   0.1243642
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                 0.0614395    0.0402547   0.0826242
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                NA                 0.0281252    0.0123079   0.0439424
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.0220567    0.0143450   0.0297684
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                 0.0505331   -0.1337296   0.2347957
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                 0.2069221    0.1254719   0.2883722
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.1186896    0.0932797   0.1440996


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           >=160                NA                -0.0820896   -0.8847867   0.3787532
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.2657417    0.1795445   0.3428831
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160                NA                 0.6106986    0.1942686   0.8119031
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                 0.6116336    0.1373845   0.8251498
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                 0.4229949    0.3118740   0.5161717
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.1695989    0.1401445   0.1980443
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                 0.2347267   -0.0142828   0.4226036
0-24 months   ki1135781-COHORTS          INDIA                          >=160                NA                 0.3921419    0.0949870   0.5917280
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                 0.4617145    0.3062072   0.5823662
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.5621431    0.4854352   0.6274160
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.4747678    0.3550722   0.5722484
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.1253152    0.0649445   0.1817881
0-6 months    ki1135781-COHORTS          INDIA                          >=160                NA                 0.5161853    0.0634279   0.7500709
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.5391365    0.4404860   0.6203935
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.2167195   -0.0129023   0.3942868
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                 0.4524630    0.2818377   0.5825501
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160                NA                 0.1849932    0.0830313   0.2756175
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.1546674    0.0993524   0.2065851
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                 0.0888023   -0.3001238   0.3613829
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                 0.4221970    0.2295007   0.5667013
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.6019811    0.4521164   0.7108528
