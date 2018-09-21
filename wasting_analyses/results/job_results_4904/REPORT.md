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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mhtcm           wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  -------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0        4     122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        5     122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0       33     122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       51     122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        7     122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       22     122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0        5      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       12      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0        1      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        4      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0        0      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1      23
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       12     175
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       17     175
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       44     175
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       49     175
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       14     175
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       39     175
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        3      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        6      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0       14      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       45      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        3      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       22      93
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0      34
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        3      34
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0        4      34
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       23      34
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0        2      34
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        2      34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0        9      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       46      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        4      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1       13      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        5      77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        1      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       19      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        2      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        9      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        5      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        9      45
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      151     744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1      124     744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      187     744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1      104     744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0      120     744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       58     744
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       36     231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        2     231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0      119     231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1        7     231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       63     231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1        4     231
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       32     421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       39     421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0      128     421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1      136     421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       42     421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       44     421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0       16     302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       31     302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       72     302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1      105     302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0       36     302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       42     302
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0       17     310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       34     310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0       72     310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      117     310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0       27     310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       43     310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      160     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      285     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       45     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       55     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       57     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1      103     705
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0      507    1350
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      617    1350
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       33    1350
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       18    1350
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0       78    1350
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1       97    1350
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0        1      32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        2      32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0       10      32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1       10      32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0        7      32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        2      32
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      648     781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1       30     781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       30     781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        1     781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       69     781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        3     781
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0      466    3957
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3345    3957
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0        4    3957
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1       32    3957
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0       18    3957
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1       92    3957
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      854    2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1253    2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       71    2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      106    2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0      151    2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      236    2671
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0       25     373
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       25     373
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      144     373
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      112     373
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0       37     373
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       30     373
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  0      143     700
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  1       66     700
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   0      240     700
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   1       69     700
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              0      138     700
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              1       44     700
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0      108    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      213    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0      380    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      553    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      176    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      259    1689
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  0       40      78
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  1        9      78
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   0        8      78
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   1        1      78
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              0       17      78
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              1        3      78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     1188   15078
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1     1028   15078
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     5336   15078
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     3722   15078
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     2176   15078
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1     1628   15078
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0        2      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        4      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0        9      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       29      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        1      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       15      60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       10      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1      14
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  0        6      80
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       11      80
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   0       15      80
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   1       20      80
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              0        4      80
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       24      80
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        2      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        2      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   0        4      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       20      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        3      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       12      43
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  1        1      11
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   1        9      11
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              1        1      11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0        3      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       16      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        1      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        5      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        2      27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1        6      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        4      12
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0       57     306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1       75     306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0       54     306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1       57     306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0       35     306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       28     306
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       11      75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        0      75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0       42      75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1        0      75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       22      75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1        0      75
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       10     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       29     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0       42     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1       97     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       12     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       33     223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0        6     179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       27     179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       21     179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1       81     179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0        8     179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       36     179
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0        2     197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       32     197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0       12     197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      107     197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0        6     197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       38     197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0       61     336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      154     336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       14     336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       34     336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       24     336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       49     336
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  0      110     371
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  1      201     371
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   0       13     371
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   1        7     371
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              0       10     371
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              1       30     371
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0        0       7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        0       7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0        2       7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1        3       7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0        2       7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        0       7
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  0      365    3815
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3311    3815
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   0        2    3815
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   1       32    3815
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              0       15    3815
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              1       90    3815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      204    1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1198    1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       17    1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      105    1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0       40    1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      228    1792
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0        8     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       25     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   0       37     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      106     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0        8     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       28     212
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                  0       87     471
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                  1       66     471
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                   0      120     471
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                   1       69     471
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm              0       85     471
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm              1       44     471
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0       42     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      121     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0       98     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      289     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0       58     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      144     752
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                  0        2       4
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                  1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                   0        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                   1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm              0        2       4
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm              1        0       4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0      462    9436
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1     1028    9436
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     1798    9436
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     3722    9436
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0      798    9436
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1     1628    9436
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0        2      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        1      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0       24      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       22      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        6      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1        7      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0        4       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1        2       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0        1       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        0       9
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0        6      95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1        6      95
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       29      95
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       29      95
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       10      95
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       15      95
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        1      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        4      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0       10      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       25      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        0      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       10      50
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0      23
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        2      23
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0        4      23
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       14      23
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0        2      23
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        1      23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0        6      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       30      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        3      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        8      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        3      50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        1      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       13      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        2      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        8      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        4      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        5      33
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0       94     438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1       49     438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      133     438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1       47     438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0       85     438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       30     438
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       25     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        2     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0       77     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1        7     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       41     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1        4     156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       22     198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       10     198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0       86     198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1       39     198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       30     198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       11     198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0       10     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1        4     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       51     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1       24     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0       28     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1        6     123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0       15     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1        2     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0       60     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1       10     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0       21     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1        5     113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0       99     369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      131     369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       31     369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       21     369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       33     369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       54     369
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0      397     979
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      416     979
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       20     979
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       11     979
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0       68     979
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1       67     979
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0        1      25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        2      25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0        8      25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1        7      25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0        5      25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        2      25
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      648     781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1       30     781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       30     781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        1     781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       69     781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        3     781
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0      101     142
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1       34     142
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0        2     142
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1        0     142
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0        3     142
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1        2     142
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      650     879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1       55     879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       54     879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1        1     879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0      111     879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1        8     879
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0       17     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1        0     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      107     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1        6     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0       29     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1        2     161
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  0       56     229
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  1        0     229
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   0      120     229
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   1        0     229
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              0       53     229
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              1        0     229
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0       66     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1       92     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0      282     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      264     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      118     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      115     937
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  0       38      74
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  1        9      74
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   0        8      74
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   1        1      74
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              0       15      74
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              1        3      74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0      726    5642
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1        0    5642
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     3538    5642
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1        0    5642
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     1378    5642
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1        0    5642


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d119cad0-a338-42ca-a242-df17039a69aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d119cad0-a338-42ca-a242-df17039a69aa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d119cad0-a338-42ca-a242-df17039a69aa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d119cad0-a338-42ca-a242-df17039a69aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.6145743   0.3947538   0.8343948
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5302692   0.4247643   0.6357741
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.7468681   0.6278520   0.8658842
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4514663   0.3889536   0.5139789
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3590221   0.3029912   0.4150531
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3223562   0.2508210   0.3938914
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5492958   0.4196243   0.6789672
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.5151515   0.4516712   0.5786318
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5116279   0.4024013   0.6208545
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.6519852   0.5186423   0.7853281
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.5894357   0.5143345   0.6645368
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.5302285   0.4295334   0.6309235
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.6666667   0.5335945   0.7997388
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.6190476   0.5507547   0.6873405
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.6142857   0.4967880   0.7317834
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.6426688   0.5958019   0.6895357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5643758   0.4739517   0.6547998
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6579012   0.5802121   0.7355904
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5488516   0.5173835   0.5803196
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3543095   0.2131019   0.4955170
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.5543745   0.4722055   0.6365434
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.5948881   0.5738267   0.6159495
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6075910   0.5347198   0.6804622
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.6153733   0.5682619   0.6624848
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.5275508   0.3991283   0.6559734
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4383705   0.3761183   0.5006228
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4712736   0.3536864   0.5888608
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3144364   0.2514276   0.3774453
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2241680   0.1776449   0.2706912
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2415281   0.1749501   0.3081061
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.6636883   0.6086047   0.7187719
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.5925732   0.5604456   0.6247007
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5930580   0.5433328   0.6427831
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4665953   0.4378044   0.4953863
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.4115696   0.3973353   0.4258039
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.4297109   0.4079099   0.4515120
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5674703   0.4835920   0.6513486
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.5137400   0.4227984   0.6046816
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4431770   0.3225325   0.5638216
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7435897   0.6056205   0.8815590
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6978417   0.6216977   0.7739857
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7333333   0.6032537   0.8634129
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.8181818   0.6839633   0.9524003
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.7941176   0.7155043   0.8727310
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.8181818   0.7131862   0.9231774
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7187933   0.6576841   0.7799024
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7032201   0.5772647   0.8291756
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6734876   0.5643671   0.7826081
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.6463023   0.5929102   0.6996943
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3500000   0.2035859   0.4964141
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.7500000   0.6059063   0.8940937
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.8544936   0.8360842   0.8729030
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.8606562   0.7989125   0.9223998
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.8507459   0.8086727   0.8928190
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7575758   0.6103183   0.9048332
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7412587   0.6689680   0.8135495
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7777778   0.6475058   0.9080497
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4454193   0.3689169   0.5219217
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3744512   0.3078932   0.4410093
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3598269   0.2815017   0.4381522
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.7519928   0.6895537   0.8144319
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7483904   0.7052051   0.7915757
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.7139021   0.6516530   0.7761512
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6923296   0.6601851   0.7244742
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.6746933   0.6573078   0.6920788
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.6734106   0.6474344   0.6993867
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.5000000   0.1136329   0.8863671
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5000000   0.3633864   0.6366136
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.6000000   0.3701212   0.8298788
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3430088   0.2621780   0.4238396
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2617362   0.1973552   0.3261173
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2596022   0.1766029   0.3426015
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3125000   0.1302849   0.4947151
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3120000   0.2311418   0.3928582
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2682927   0.1329833   0.4036021
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.5752083   0.5105459   0.6398706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4446486   0.3149905   0.5743067
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6585636   0.5559478   0.7611794
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5107714   0.4742751   0.5472677
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2690524   0.0862309   0.4518739
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4714166   0.3814795   0.5613537
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5822785   0.4987729   0.6657841
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.4835165   0.4395612   0.5274717
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.4935622   0.4261855   0.5609390


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6000000   0.5192868   0.6807132
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3844086   0.3477135   0.4211037
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5894040   0.5323948   0.6464131
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6258065   0.5718723   0.6797406
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6283688   0.5905159   0.6662217
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5422222   0.5133413   0.5711031
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5971546   0.5785503   0.6157590
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4477212   0.3954919   0.4999504
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2557143   0.2227697   0.2886589
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4230004   0.4118551   0.4341457
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5228758   0.4664267   0.5793250
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8044693   0.7471161   0.8618224
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7053571   0.6558827   0.7548316
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6415094   0.5927496   0.6902692
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.8543527   0.8380828   0.8706225
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7500000   0.6917133   0.8082867
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3800425   0.3361595   0.4239255
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6759220   0.6625668   0.6892772
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2876712   0.2441703   0.3311721
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5582656   0.5057575   0.6107737
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5045965   0.4711801   0.5380129
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          0.8628237   0.5731340   1.2989367
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2152610   0.8220558   1.7965438
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.7952358   0.6459528   0.9790189
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7140207   0.5499299   0.9270737
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9378399   0.7185622   1.2240329
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9314252   0.6773642   1.2807774
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.9040630   0.7103684   1.1505718
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.8132523   0.6150823   1.0752696
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          0.9285714   0.7389693   1.1668210
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          0.9214286   0.6987693   1.2150370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8781751   0.7366185   1.0469348
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0237018   0.8912953   1.1757781
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.6455470   0.4315887   0.9655741
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0100626   0.8616580   1.1840271
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0213534   0.9012895   1.1574114
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0344354   0.9507521   1.1254842
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8309541   0.6278653   1.0997338
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8933235   0.6309689   1.2647643
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.7129200   0.5343357   0.9511904
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7681301   0.5463668   1.0799043
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8928486   0.8085810   0.9858983
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8935790   0.7941309   1.0054809
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.8820697   0.8218426   0.9467105
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9209499   0.8502459   0.9975335
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.9053161   0.7198825   1.1385152
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7809696   0.5738813   1.0627868
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9384768   0.7567310   1.1638729
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9862069   0.7629357   1.2748179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.9705882   0.8013534   1.1755631
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.0000000   0.8119831   1.2315527
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9783344   0.8025324   1.1926474
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9369698   0.7804916   1.1248198
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.5415423   0.3535521   0.8294904
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.1604478   0.9414564   1.4303784
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0072119   0.9345227   1.0855550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9956141   0.9433300   1.0507959
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.9784615   0.7872206   1.2161610
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0266667   0.7943188   1.3269791
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8406714   0.6567050   1.0761733
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8078387   0.6123703   1.0657005
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9952095   0.8994897   1.1011154
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9493470   0.8416644   1.0708064
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9745261   0.9241692   1.0276269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9726733   0.9157190   1.0331700
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.0000000   0.4406005   2.2696295
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2000000   0.5065261   2.8428939
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.7630598   0.5429523   1.0723967
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7568382   0.5088719   1.1256350
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9984000   0.5273877   1.8900755
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.8585366   0.3971134   1.8561073
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.7730219   0.5654787   1.0567380
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1449134   0.9450572   1.3870343
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.5267570   0.2659563   1.0433031
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9229503   0.7528506   1.1314824
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8303870   0.7007173   0.9840524
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8476395   0.6953803   1.0332370


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0145743   -0.2083577    0.1792091
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0670577   -0.1154465   -0.0186688
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0291058   -0.1461229    0.0879114
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0625812   -0.1853039    0.0601414
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0408602   -0.1624525    0.0807321
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0143000   -0.0429818    0.0143818
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0066294   -0.0198675    0.0066088
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0022665   -0.0072326    0.0117656
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0798297   -0.1990624    0.0394031
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0587222   -0.1105392   -0.0069051
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0568203   -0.1063413   -0.0072994
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0435949   -0.0701430   -0.0170469
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0445945   -0.1077039    0.0185149
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0305853   -0.1567104    0.0955399
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0137125   -0.1347982    0.1073731
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0134361   -0.0505909    0.0237186
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0047928   -0.0259744    0.0163887
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001409   -0.0087035    0.0084216
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0075758   -0.1429684    0.1278169
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0653768   -0.1276051   -0.0031486
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0152907   -0.0711518    0.0405704
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0164076   -0.0459808    0.0131656
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0263158   -0.3268414    0.3794730
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0553376   -0.1197108    0.0090356
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0094697   -0.1730023    0.1540629
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0169427   -0.0580899    0.0242045
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0061749   -0.0216179    0.0092682
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0796104   -0.1554859   -0.0037349


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0242905   -0.4033965    0.2524059
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1744437   -0.3073945   -0.0550128
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0559522   -0.3064224    0.1464973
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1061771   -0.3360524    0.0841469
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0652921   -0.2785263    0.1123786
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0227573   -0.0694965    0.0219392
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0122263   -0.0369633    0.0119206
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0037955   -0.0122423    0.0195792
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1783022   -0.4790685    0.0613038
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.2296397   -0.4504343   -0.0424560
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0936288   -0.1784766   -0.0148899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.1030612   -0.1677049   -0.0419962
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0852870   -0.2135356    0.0294081
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0428963   -0.2358326    0.1199191
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0170455   -0.1792690    0.1228621
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0190487   -0.0731626    0.0323366
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0074712   -0.0410345    0.0250101
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001650   -0.0102376    0.0098073
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0101010   -0.2077661    0.1552139
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1720251   -0.3489093   -0.0183359
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0207556   -0.0995339    0.0523785
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0242744   -0.0689899    0.0185707
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0500000   -0.9284701    0.5320125
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1923640   -0.4376764    0.0110906
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0312500   -0.7392300    0.3885360
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0303488   -0.1070043    0.0409986
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0122372   -0.0433392    0.0179376
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1583757   -0.3198565   -0.0166515
