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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mhtcm           wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0        4    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        5    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0       33    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       51    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        7    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       22    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       12     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     23
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       12    175
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       17    175
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       44    175
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       49    175
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       14    175
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       39    175
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        6     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0       14     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       45     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       22     93
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       23     34
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        2     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0        9     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       46     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        4     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1       13     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        5     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       19     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        2     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        9     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        5     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        9     45
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      151    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1      124    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      187    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1      104    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0      120    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       58    744
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       36    231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        2    231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0      119    231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1        7    231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       63    231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1        4    231
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       32    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       39    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0      128    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1      136    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       42    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       44    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0       16    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       31    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       72    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1      105    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0       36    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       42    302
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0       17    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       34    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0       72    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      117    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0       27    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       43    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      160    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      285    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       45    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       55    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       57    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1      103    705
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0      507   1350
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      617   1350
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       33   1350
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       18   1350
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0       78   1350
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1       97   1350
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0        1     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        2     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0       10     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1       10     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0        7     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        2     32
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      648    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1       30    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       30    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        1    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       69    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        3    781
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0      466   3957
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3345   3957
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0        4   3957
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1       32   3957
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0       18   3957
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1       92   3957
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      854   2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1253   2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       71   2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      106   2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0      151   2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      236   2671
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0       25    373
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       25    373
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      144    373
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      112    373
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0       37    373
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       30    373
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  0      143    700
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  1       66    700
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   0      240    700
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   1       69    700
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              0      138    700
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              1       44    700
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0      108   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      213   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0      380   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      553   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      176   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      259   1689
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  0       40     78
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  1        9     78
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   0        8     78
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   1        1     78
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              0       17     78
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              1        3     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0      594   7542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      514   7542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     2670   7542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     1861   7542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     1089   7542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1      814   7542
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0        2     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        4     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0        9     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       29     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        1     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       15     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       10     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     14
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  0        6     80
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       11     80
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   0       15     80
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   1       20     80
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              0        4     80
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       24     80
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   0        4     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       20     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        3     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       12     43
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   1        9     11
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              1        1     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0        3     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       16     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        1     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        5     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        2     27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1        6     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        4     12
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0       57    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1       75    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0       54    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1       57    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0       35    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       28    306
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       11     75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        0     75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0       42     75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1        0     75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       22     75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1        0     75
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       10    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       29    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0       42    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1       97    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       12    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       33    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0        6    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       27    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       21    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1       81    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0        8    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       36    179
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0        2    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       32    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0       12    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      107    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0        6    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       38    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0       61    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      154    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       14    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       34    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       24    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       49    336
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  0      110    371
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  1      201    371
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   0       13    371
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   1        7    371
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              0       10    371
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              1       30    371
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0        0      7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        0      7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0        2      7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1        3      7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0        2      7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        0      7
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  0      365   3815
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3311   3815
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   0        2   3815
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   1       32   3815
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              0       15   3815
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              1       90   3815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      204   1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1198   1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       17   1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      105   1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0       40   1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      228   1792
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0        8    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       25    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   0       37    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      106    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0        8    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       28    212
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                  0       87    471
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                  1       66    471
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                   0      120    471
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                   1       69    471
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm              0       85    471
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm              1       44    471
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0       42    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      121    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0       98    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      289    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0       58    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      144    752
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                  0        2      4
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                   0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm              0        2      4
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm              1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0      231   4718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      514   4718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0      899   4718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     1861   4718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0      399   4718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1      814   4718
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0       24     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       22     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        6     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1        7     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       29     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       29     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       10     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       15     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        4     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       25     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       10     50
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       14     23
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        1     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0        6     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       30     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        3     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        8     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        3     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       13     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        2     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        8     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        4     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        5     33
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0       94    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1       49    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      133    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1       47    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0       85    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       30    438
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       25    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        2    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0       77    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1        7    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       41    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1        4    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       22    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       10    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0       86    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1       39    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       30    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       11    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0       10    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1        4    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       51    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1       24    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0       28    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1        6    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0       15    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1        2    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0       60    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1       10    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0       21    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1        5    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0       99    369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      131    369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       31    369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       21    369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       33    369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       54    369
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0      397    979
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      416    979
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       20    979
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       11    979
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0       68    979
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1       67    979
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0        1     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        2     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0        8     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1        7     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0        5     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        2     25
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      648    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1       30    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       30    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        1    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       69    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        3    781
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0      101    142
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1       34    142
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0        2    142
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1        0    142
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0        3    142
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1        2    142
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      650    879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1       55    879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       54    879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1        1    879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0      111    879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1        8    879
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0       17    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1        0    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      107    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1        6    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0       29    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1        2    161
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  0       56    229
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  1        0    229
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   0      120    229
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   1        0    229
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              0       53    229
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              1        0    229
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0       66    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1       92    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0      282    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      264    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      118    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      115    937
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  0       38     74
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  1        9     74
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   0        8     74
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   1        1     74
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              0       15     74
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              1        3     74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0      363   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1        0   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     1771   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1        0   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0      690   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1        0   2824


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
![](/tmp/be7467c0-19cf-4b56-84d0-4fb7e4df31a9/fc158877-a771-4c9b-b849-bc282b8b84c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/be7467c0-19cf-4b56-84d0-4fb7e4df31a9/fc158877-a771-4c9b-b849-bc282b8b84c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/be7467c0-19cf-4b56-84d0-4fb7e4df31a9/fc158877-a771-4c9b-b849-bc282b8b84c5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/be7467c0-19cf-4b56-84d0-4fb7e4df31a9/fc158877-a771-4c9b-b849-bc282b8b84c5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.5862069   0.3476497   0.8247641
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5268817   0.4202195   0.6335439
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.7358491   0.6157032   0.8559949
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4509091   0.3874508   0.5143674
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3573883   0.3011074   0.4136692
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3258427   0.2539031   0.3977823
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5492958   0.4196243   0.6789672
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.5151515   0.4516712   0.5786318
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5116279   0.4024013   0.6208545
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.6595745   0.5137342   0.8054147
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.5932203   0.5170737   0.6693670
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.5384615   0.4333890   0.6435341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.6666667   0.5335945   0.7997388
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.6190476   0.5507547   0.6873405
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.6142857   0.4967880   0.7317834
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.6404494   0.5930457   0.6878532
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5500000   0.4529087   0.6470913
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6437500   0.5624171   0.7250829
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5489324   0.5174638   0.5804010
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3529412   0.2114578   0.4944245
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.5542857   0.4720259   0.6365455
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.5946844   0.5736203   0.6157484
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.5988701   0.5257947   0.6719454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.6098191   0.5626234   0.6570148
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.5000000   0.3584406   0.6415594
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4375000   0.3743588   0.5006412
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4477612   0.3254443   0.5700781
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3157895   0.2528309   0.3787480
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2233010   0.1766894   0.2699125
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2417582   0.1750359   0.3084806
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.6635514   0.6071777   0.7199251
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.5927117   0.5605002   0.6249232
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5954023   0.5451884   0.6456162
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4638989   0.4340843   0.4937136
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.4107261   0.3964284   0.4250238
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.4277457   0.4056671   0.4498242
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5681818   0.4824562   0.6539074
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.5135135   0.4209204   0.6061066
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4444444   0.3194995   0.5693894
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7435897   0.6056205   0.8815590
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6978417   0.6216977   0.7739857
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7333333   0.6032537   0.8634129
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.8181818   0.6839633   0.9524003
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.7941176   0.7155043   0.8727310
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.8181818   0.7131862   0.9231774
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7162791   0.6548754   0.7776827
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7083333   0.5810486   0.8356181
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6712329   0.5613815   0.7810843
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.6463023   0.5929102   0.6996943
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3500000   0.2035859   0.4964141
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.7500000   0.6059063   0.8940937
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.8544936   0.8360842   0.8729030
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.8606557   0.7989121   0.9223994
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.8507463   0.8086730   0.8928195
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7575758   0.6103183   0.9048332
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7412587   0.6689680   0.8135495
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7777778   0.6475058   0.9080497
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4313725   0.3528121   0.5099330
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3650794   0.2963674   0.4337913
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3410853   0.2591896   0.4229809
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.7423313   0.6765952   0.8080674
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7467700   0.7032208   0.7903193
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.7128713   0.6494772   0.7762654
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6899329   0.6567028   0.7231630
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.6742754   0.6567899   0.6917608
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.6710635   0.6446360   0.6974910
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.5000000   0.1136329   0.8863671
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5000000   0.3633864   0.6366136
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.6000000   0.3701212   0.8298788
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3426573   0.2616280   0.4236867
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2611111   0.1966298   0.3255924
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2608696   0.1778413   0.3438979
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3125000   0.1302849   0.4947151
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3120000   0.2311418   0.3928582
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2682927   0.1329833   0.4036021
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.5695652   0.5043756   0.6347548
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4038462   0.2634147   0.5442776
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6206897   0.5115706   0.7298087
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5116851   0.4751880   0.5481822
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3548387   0.1633407   0.5463367
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4962963   0.4057944   0.5867982
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4228321   0.4116868   0.4339775
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
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          0.8987982   0.5705003   1.4160172
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2552719   0.8096813   1.9460838
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.7925951   0.6416779   0.9790067
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7226350   0.5561512   0.9389557
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9378399   0.7185622   1.2240329
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9314252   0.6773642   1.2807774
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.8993986   0.6964381   1.1615071
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.8163772   0.6077998   1.0965316
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          0.9285714   0.7389693   1.1668210
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          0.9214286   0.6987693   1.2150370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8587719   0.7091624   1.0399441
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0051535   0.8682401   1.1636569
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.6429593   0.4288605   0.9639421
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0097523   0.8612233   1.1838970
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0070385   0.8868685   1.1434914
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0254500   0.9417559   1.1165821
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8750000   0.6366850   1.2025176
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8955224   0.6042766   1.3271411
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.7071197   0.5298266   0.9437396
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7655678   0.5446634   1.0760665
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8932416   0.8075392   0.9880393
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8972964   0.7960561   1.0114122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.8853785   0.8229732   0.9525158
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9220665   0.8491083   1.0012935
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.9037838   0.7144232   1.1433351
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7822222   0.5685421   1.0762117
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9384768   0.7567310   1.1638729
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9862069   0.7629357   1.2748179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.9705882   0.8013534   1.1755631
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.0000000   0.8119831   1.2315527
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9889069   0.8103790   1.2067648
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9371108   0.7790296   1.1272700
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.5415423   0.3535521   0.8294904
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.1604478   0.9414564   1.4303784
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0072115   0.9345223   1.0855546
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9956146   0.9433304   1.0507966
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.9784615   0.7872206   1.2161610
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0266667   0.7943188   1.3269791
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8463203   0.6513198   1.0997026
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7906977   0.5849687   1.0687800
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0059795   0.9047734   1.1185062
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9603142   0.8470534   1.0887192
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9773057   0.9252813   1.0322552
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9726504   0.9139810   1.0350858
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.0000000   0.4406005   2.2696295
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2000000   0.5065261   2.8428939
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.7620181   0.5413445   1.0726471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7613132   0.5121097   1.1317844
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9984000   0.5273877   1.8900755
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.8585366   0.3971134   1.8561073
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.7090429   0.4916794   1.0224991
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0897605   0.8835352   1.3441207
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.6934708   0.4023458   1.1952449
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9699252   0.7974094   1.1797640
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8303870   0.7007173   0.9840524
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8476395   0.6953803   1.0332370


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0137931   -0.1973016    0.2248878
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0665005   -0.1156391   -0.0173619
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0291058   -0.1461229    0.0879114
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0701705   -0.2038468    0.0635058
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0408602   -0.1624525    0.0807321
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0120806   -0.0411192    0.0169579
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0067102   -0.0199678    0.0065474
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0024702   -0.0070316    0.0119721
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0522788   -0.1840184    0.0794608
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0600752   -0.1119056   -0.0082448
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0566834   -0.1073554   -0.0060114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0410668   -0.0684882   -0.0136453
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0453060   -0.1101364    0.0195244
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0305853   -0.1567104    0.0955399
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0137125   -0.1347982    0.1073731
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0109219   -0.0482642    0.0264203
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0047928   -0.0259744    0.0163887
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001409   -0.0087035    0.0084217
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0075758   -0.1429684    0.1278169
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0513301   -0.1152659    0.0126058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0056292   -0.0643176    0.0530592
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0140109   -0.0445701    0.0165484
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0263158   -0.3268414    0.3794730
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0549861   -0.1195512    0.0095789
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0094697   -0.1730023    0.1540629
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0112996   -0.0526484    0.0300491
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0070886   -0.0225132    0.0083360
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0796104   -0.1554859   -0.0037349


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0229885   -0.4013012    0.3188106
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1729943   -0.3078807   -0.0520192
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0559522   -0.3064224    0.1464973
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1190533   -0.3706889    0.0863862
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0652921   -0.2785263    0.1123786
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0192254   -0.0665329    0.0259837
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0123753   -0.0371498    0.0118074
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0041367   -0.0119063    0.0199253
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1167665   -0.4538829    0.1421817
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.2349309   -0.4558585   -0.0475292
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0934032   -0.1802473   -0.0129493
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0971231   -0.1639269   -0.0341535
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0866477   -0.2184393    0.0308888
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0428963   -0.2358326    0.1199191
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0170455   -0.1792690    0.1228621
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0154843   -0.0698634    0.0361309
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0074712   -0.0410345    0.0250101
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001649   -0.0102376    0.0098073
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0101010   -0.2077661    0.1552139
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1350641   -0.3167324    0.0215397
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0076410   -0.0905506    0.0689653
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0207286   -0.0669621    0.0235016
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0500000   -0.9284701    0.5320125
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1911422   -0.4372307    0.0128100
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0312500   -0.7392300    0.3885360
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0202406   -0.0971904    0.0513124
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0140480   -0.0451171    0.0160974
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1583757   -0.3198565   -0.0166515
