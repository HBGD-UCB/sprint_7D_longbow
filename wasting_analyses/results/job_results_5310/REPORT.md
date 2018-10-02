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
![](/tmp/6e323b8e-1026-4b69-a917-d399e05a4174/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6e323b8e-1026-4b69-a917-d399e05a4174/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6e323b8e-1026-4b69-a917-d399e05a4174/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6e323b8e-1026-4b69-a917-d399e05a4174/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.6210276   0.3963068   0.8457484
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5349465   0.4297110   0.6401821
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.7443025   0.6276681   0.8609369
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4511559   0.3889122   0.5133996
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3588934   0.3030536   0.4147331
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3223296   0.2513701   0.3932891
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5492958   0.4196243   0.6789672
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.5151515   0.4516712   0.5786318
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5116279   0.4024013   0.6208545
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.6529534   0.5205215   0.7853854
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.5889737   0.5139700   0.6639774
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.5292314   0.4287731   0.6296897
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.6674321   0.5348205   0.8000437
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.6190461   0.5508197   0.6872725
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.6146722   0.4974332   0.7319112
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.6427538   0.5958003   0.6897072
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5620636   0.4717565   0.6523706
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6577070   0.5805933   0.7348208
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5484529   0.5169857   0.5799200
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3182313   0.1779751   0.4584875
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.5417714   0.4598154   0.6237273
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.5944368   0.5733992   0.6154744
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.5987558   0.5262802   0.6712315
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.6112432   0.5644596   0.6580268
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.5274200   0.3957293   0.6591108
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4385848   0.3761746   0.5009951
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4704273   0.3515076   0.5893470
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3133699   0.2507284   0.3760114
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2251512   0.1788607   0.2714418
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2417252   0.1754937   0.3079567
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.6632581   0.6078747   0.7186415
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.5925218   0.5603781   0.6246655
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5933830   0.5435538   0.6432122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4656321   0.4367645   0.4944998
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.4116513   0.3974088   0.4258938
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.4292517   0.4074083   0.4510952
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5673210   0.4840311   0.6506108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.5140670   0.4240741   0.6040600
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4405742   0.3217343   0.5594140
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7612536   0.6246232   0.8978840
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7005740   0.6247001   0.7764479
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7604413   0.6366059   0.8842768
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.8181818   0.6839633   0.9524003
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.7941176   0.7155043   0.8727310
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.8181818   0.7131862   0.9231774
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7193204   0.6582772   0.7803637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6967619   0.5709789   0.8225449
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6712951   0.5622704   0.7803198
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.6463023   0.5929102   0.6996943
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3500000   0.2035859   0.4964141
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.7500000   0.6059063   0.8940937
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.8544936   0.8360842   0.8729030
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.8606559   0.7989123   0.9223996
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.8507461   0.8086729   0.8928193
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7575758   0.6103183   0.9048332
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7412587   0.6689680   0.8135495
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7777778   0.6475058   0.9080497
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4443561   0.3674075   0.5213047
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3743174   0.3072261   0.4414086
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3586422   0.2795431   0.4377412
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.7514909   0.6887203   0.8142616
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7483930   0.7051729   0.7916131
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.7142230   0.6518556   0.7765903
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6926418   0.6605609   0.7247227
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.6746865   0.6573117   0.6920614
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.6735564   0.6476247   0.6994880
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.5000000   0.1136329   0.8863671
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5000000   0.3633864   0.6366136
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.6000000   0.3701212   0.8298788
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3429756   0.2621714   0.4237797
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2618891   0.1975241   0.3262541
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2594124   0.1764207   0.3424041
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3125000   0.1302849   0.4947151
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3120000   0.2311418   0.3928582
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2682927   0.1329833   0.4036021
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.5748618   0.5104613   0.6392623
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4410390   0.3163346   0.5657434
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6610404   0.5609512   0.7611296
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5116852   0.4751881   0.5481823
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3548379   0.1633399   0.5463359
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4962960   0.4057941   0.5867978
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
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          0.8613893   0.5710723   1.2992951
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.1985015   0.8091024   1.7753080
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.7954975   0.6465743   0.9787216
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7144528   0.5511757   0.9260982
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9378399   0.7185622   1.2240329
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9314252   0.6773642   1.2807774
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.9020148   0.7098044   1.1462747
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.8105193   0.6138153   1.0702594
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          0.9275043   0.7387605   1.1644696
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          0.9209509   0.6991985   1.2130326
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8744618   0.7330167   1.0432005
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0232644   0.8913065   1.1747586
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.5802345   0.3720297   0.9049603
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9878176   0.8402648   1.1612810
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0072658   0.8879429   1.1426234
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0282728   0.9451370   1.1187214
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8315666   0.6247395   1.1068660
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8919405   0.6257655   1.2713356
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.7184839   0.5396321   0.9566131
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7713734   0.5497413   1.0823580
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8933503   0.8086787   0.9868873
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8946487   0.7947248   1.0071365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.8840698   0.8234913   0.9491047
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9218688   0.8508222   0.9988481
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.9061308   0.7219688   1.1372694
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7765871   0.5721032   1.0541587
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9202898   0.7459791   1.1353312
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9989330   0.7842860   1.2723255
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.9705882   0.8013534   1.1755631
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.0000000   0.8119831   1.2315527
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9686391   0.7937218   1.1821041
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9332351   0.7772055   1.1205888
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.5415423   0.3535521   0.8294904
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.1604478   0.9414564   1.4303784
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0072117   0.9345225   1.0855548
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9956143   0.9433302   1.0507963
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.9784615   0.7872206   1.2161610
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0266667   0.7943188   1.3269791
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8423814   0.6566535   1.0806407
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8071053   0.6098782   1.0681133
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9958776   0.8997017   1.1023346
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9504080   0.8422383   1.0724700
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9740772   0.9238511   1.0270338
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9724454   0.9156376   1.0327777
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.0000000   0.4406005   2.2696295
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2000000   0.5065261   2.8428939
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.7635795   0.5434472   1.0728799
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7563583   0.5085003   1.1250294
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9984000   0.5273877   1.8900755
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.8585366   0.3971134   1.8561073
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.7672088   0.5659499   1.0400379
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1499119   0.9528112   1.3877853
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.6934691   0.4023443   1.1952435
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9699244   0.7974087   1.1797630
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8303870   0.7007173   0.9840524
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8476395   0.6953803   1.0332370


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0210276   -0.2188974    0.1768422
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0667473   -0.1149202   -0.0185744
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0291058   -0.1461229    0.0879114
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0635495   -0.1856243    0.0585253
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0416256   -0.1627951    0.0795438
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0143850   -0.0432217    0.0144518
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0062307   -0.0194710    0.0070097
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0027178   -0.0067604    0.0121961
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0796988   -0.2019578    0.0425601
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0576556   -0.1090888   -0.0062224
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0563901   -0.1061753   -0.0066050
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0426317   -0.0692088   -0.0160547
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0444452   -0.1072031    0.0183128
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0482491   -0.1734287    0.0769304
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0137125   -0.1347982    0.1073731
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0139633   -0.0510937    0.0231671
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0047928   -0.0259744    0.0163887
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001409   -0.0087035    0.0084217
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0075758   -0.1429684    0.1278169
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0643137   -0.1269080   -0.0017194
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0147888   -0.0709274    0.0413498
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0167198   -0.0462334    0.0127938
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0263158   -0.3268414    0.3794730
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0553043   -0.1196519    0.0090432
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0094697   -0.1730023    0.1540629
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0165962   -0.0576227    0.0244303
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0070887   -0.0225133    0.0083359
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0796104   -0.1554859   -0.0037349


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0350460   -0.4224851    0.2468672
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1736363   -0.3060276   -0.0546655
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0559522   -0.3064224    0.1464973
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1078199   -0.3364316    0.0816852
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0665152   -0.2789301    0.1106202
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0228925   -0.0698901    0.0220406
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0114910   -0.0362303    0.0126578
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0045513   -0.0114515    0.0203010
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1780100   -0.4869975    0.0667722
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.2254689   -0.4445712   -0.0395984
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0929199   -0.1782253   -0.0137908
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.1007841   -0.1654879   -0.0396725
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0850014   -0.2125784    0.0291531
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0676702   -0.2588406    0.0944687
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0170455   -0.1792690    0.1228621
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0197961   -0.0738780    0.0315623
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0074712   -0.0410345    0.0250101
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001649   -0.0102376    0.0098073
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0101010   -0.2077661    0.1552139
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1692276   -0.3471114   -0.0148330
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0200743   -0.0992551    0.0534030
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0247363   -0.0693600    0.0180253
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0500000   -0.9284701    0.5320125
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1922484   -0.4374607    0.0111338
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0312500   -0.7392300    0.3885360
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0297281   -0.1061641    0.0414261
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0140482   -0.0451173    0.0160972
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1583757   -0.3198565   -0.0166515
