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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        mhtcm           pers_wast   n_cell      n
------------  -------------------------  -----------------------------  -------------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                0       21    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                1        3    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 0      154    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 1        7    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            0       60    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            1        3    248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                0      124    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                1        2    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 0       52    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            0       39    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            1        0    217
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                0       53    240
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                1        2    240
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 0      102    240
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 1       13    240
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            0       64    240
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            1        6    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                0       41    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 0      131    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 1        2    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            0       62    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            1        2    238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                0       58    283
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                1        0    283
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 0      165    283
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 1        0    283
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            0       59    283
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            1        1    283
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      199    265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1    265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       31    265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1    265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       33    265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0    265
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      151    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       50    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0    253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                0      167    378
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                1        5    378
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 0      104    378
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 1       16    378
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            0       80    378
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            1        6    378
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                0       14     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                1        3     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 0       38     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 1       11     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            0       24     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            1        4     94
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                0       88    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                1        9    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 0      287    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 1       26    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            0      112    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            1       12    534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      133    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        5    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      343    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1        5    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      148    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1        5    639
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                0      135    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                1        3    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 0      401    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 1       18    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            0      168    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            1        5    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1316   2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       29   2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      319   2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        7   2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      441   2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       21   2133
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                0     1697   2153
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                1       90   2153
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 0       66   2153
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 1       11   2153
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            0      275   2153
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            1       14   2153
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                0       35    214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                1        0    214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 0      124    214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 1        3    214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            0       51    214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            1        1    214
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                0     6378   6695
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                1       66   6695
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 0       59   6695
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 1        0   6695
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            0      189   6695
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            1        3   6695
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                0     6290   8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                1      107   8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 0      468   8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 1       16   8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            0     1166   8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            1       18   8065
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                0       53    497
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                1        6    497
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 0      321    497
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 1       15    497
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            0       97    497
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            1        5    497
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                0      439   1635
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                1       42   1635
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                 0      654   1635
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                 1       67   1635
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm            0      401   1635
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm            1       32   1635
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                0      557   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                1       26   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 0     1345   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 1       77   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            0      765   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            1       41   2811
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                0      435    716
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                1        5    716
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 0      114    716
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 1        0    716
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            0      161    716
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            1        1    716
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                0     1185   7739
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                1       64   7739
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 0     4218   7739
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 1      270   7739
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            0     1886   7739
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            1      116   7739
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                0       22    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                1        2    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 0      157    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 1        4    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            0       62    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            1        1    248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                0      125    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                1        1    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                 0       52    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                 1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            0       39    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            1        0    217
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                0       49    239
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                1        6    239
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                 0      105    239
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                 1        9    239
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm            0       66    239
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm            1        4    239
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                0       41    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                 0      129    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                 1        3    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm            0       62    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm            1        2    237
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                0       58    283
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                1        0    283
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                 0      165    283
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                 1        0    283
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm            0       60    283
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm            1        0    283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      198    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       30    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       33    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0    263
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      151    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       50    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0    253
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                0       18    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                1        3    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 0      104    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 1        4    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            0       36    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            1        4    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      134    636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        4    636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      338    636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1        7    636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      150    636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1        3    636
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                0       54    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                1        1    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 0      142    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 1        2    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            0       49    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            1        2    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1249   2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       31   2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      302   2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        6   2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      427   2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       14   2029
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                0     1514   1845
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                1       36   1845
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                 0       60   1845
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                 1        7   1845
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm            0      224   1845
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm            1        4   1845
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                0     5654   6488
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                1      595   6488
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                 0       54   6488
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                 1        3   6488
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm            0      166   6488
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm            1       16   6488
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                0      437    565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                1       10    565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 0       38    565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 1        0    565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            0       78    565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            1        2    565
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                0      165    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                1       15    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                 0      406    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                 1       22    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            0      230    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            1       15    853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                0        4     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 0       11     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            0        8     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            1        0     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                0       21    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                1        3    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 0      154    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 1        7    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            0       60    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            1        3    248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                0      124    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                1        2    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 0       52    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            0       39    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            1        0    217
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                0       53    240
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                1        2    240
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 0      102    240
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 1       13    240
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            0       64    240
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            1        6    240
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                0       41    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 0      131    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 1        2    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            0       62    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            1        2    238
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                0       58    283
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                1        0    283
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 0      165    283
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 1        0    283
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            0       59    283
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            1        1    283
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      199    265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1    265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       31    265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1    265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       33    265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0    265
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      151    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       50    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0    253
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                0      167    378
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                1        5    378
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 0      104    378
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 1       16    378
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            0       80    378
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            1        6    378
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                0       14     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                1        3     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 0       38     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 1       11     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            0       24     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            1        4     94
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                0       88    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                1        9    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 0      287    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 1       26    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            0      112    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            1       12    534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      133    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        5    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      343    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1        5    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      148    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1        5    639
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                0      135    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                1        3    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 0      401    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 1       18    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            0      168    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            1        5    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1316   2133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       29   2133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      319   2133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        7   2133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      441   2133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       21   2133
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                0     1697   2153
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                1       90   2153
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 0       66   2153
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 1       11   2153
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            0      275   2153
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            1       14   2153
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                0       35    214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                1        0    214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 0      124    214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 1        3    214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            0       51    214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            1        1    214
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                0     6378   6695
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                1       66   6695
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 0       59   6695
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 1        0   6695
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            0      189   6695
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            1        3   6695
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                0     6290   8065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                1      107   8065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 0      468   8065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 1       16   8065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            0     1166   8065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            1       18   8065
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                0       53    497
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                1        6    497
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 0      321    497
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 1       15    497
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            0       97    497
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            1        5    497
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                0      439   1635
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                1       42   1635
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                 0      654   1635
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                 1       67   1635
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm            0      401   1635
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm            1       32   1635
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                0      557   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                1       26   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 0     1345   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 1       77   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            0      765   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            1       41   2811
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                0      435    716
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                1        5    716
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 0      114    716
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 1        0    716
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            0      161    716
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            1        1    716
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                0     1185   7739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                1       64   7739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 0     4218   7739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 1      270   7739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            0     1886   7739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            1      116   7739


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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/ff05b569-11de-4eb9-9dfc-deb39b0474fc/2d272dd3-2d07-4cb6-8805-668209b33bb5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ff05b569-11de-4eb9-9dfc-deb39b0474fc/2d272dd3-2d07-4cb6-8805-668209b33bb5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ff05b569-11de-4eb9-9dfc-deb39b0474fc/2d272dd3-2d07-4cb6-8805-668209b33bb5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ff05b569-11de-4eb9-9dfc-deb39b0474fc/2d272dd3-2d07-4cb6-8805-668209b33bb5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0290698   0.0027002   0.0554393
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1333333   0.0830557   0.1836109
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0697674   0.0015897   0.1379451
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835   0.0349925   0.1505745
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671   0.0524639   0.1136702
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742   0.0446880   0.1488603
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0362319   0.0050300   0.0674337
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0143678   0.0018551   0.0268805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0326797   0.0044851   0.0608744
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613   0.0137972   0.0293255
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724   0.0057337   0.0372111
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545   0.0264562   0.0644529
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0503637   0.0402217   0.0605058
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1428571   0.0646797   0.2210345
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0484429   0.0236839   0.0732019
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0167266   0.0135837   0.0198695
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0330579   0.0171288   0.0489869
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0152027   0.0082327   0.0221727
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1016949   0.0244943   0.1788956
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0446429   0.0225387   0.0667471
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0490196   0.0070769   0.0909623
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0873181   0.0620821   0.1125541
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0929265   0.0717280   0.1141250
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0739030   0.0492542   0.0985518
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0445969   0.0278384   0.0613555
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0541491   0.0423843   0.0659138
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0508685   0.0356964   0.0660406
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0512410   0.0388691   0.0636129
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0601604   0.0522030   0.0681178
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0579421   0.0462397   0.0696445
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0242188   0.0157951   0.0326424
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0194805   0.0040419   0.0349191
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0317460   0.0153788   0.0481133
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0833333   0.0429333   0.1237334
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0514019   0.0304698   0.0723339
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0612245   0.0311870   0.0912620
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0290698   0.0027002   0.0554393
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1333333   0.0830557   0.1836109
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0697674   0.0015897   0.1379451
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835   0.0349925   0.1505745
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671   0.0524639   0.1136702
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742   0.0446880   0.1488603
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0362319   0.0050300   0.0674337
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0143678   0.0018551   0.0268805
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0326797   0.0044851   0.0608744
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613   0.0137972   0.0293255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724   0.0057337   0.0372111
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545   0.0264562   0.0644529
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0503637   0.0402217   0.0605058
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1428571   0.0646797   0.2210345
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0484429   0.0236839   0.0732019
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0167266   0.0135837   0.0198695
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0330579   0.0171288   0.0489869
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0152027   0.0082327   0.0221727
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1016949   0.0244943   0.1788956
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0446429   0.0225387   0.0667471
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0490196   0.0070769   0.0909623
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0873181   0.0620821   0.1125541
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0929265   0.0717280   0.1141250
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0739030   0.0492542   0.0985518
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0445969   0.0278384   0.0613555
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0541491   0.0423843   0.0659138
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0508685   0.0356964   0.0660406
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0512410   0.0388691   0.0636129
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0601604   0.0522030   0.0681178
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0579421   0.0462397   0.0696445


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0714286   0.0529302   0.0899269
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234742   0.0117259   0.0352225
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267229   0.0198773   0.0335686
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0534138   0.0439136   0.0629141
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0174830   0.0146224   0.0203435
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0523139   0.0327188   0.0719090
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0862385   0.0726276   0.0998495
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0581470   0.0523148   0.0639793
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0251355   0.0183227   0.0319484
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0714286   0.0529302   0.0899269
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234742   0.0117259   0.0352225
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267229   0.0198773   0.0335686
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0534138   0.0439136   0.0629141
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0174830   0.0146224   0.0203435
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0523139   0.0327188   0.0719090
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0862385   0.0726276   0.0998495
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0581470   0.0523148   0.0639793


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          4.5866667   1.3080760   16.082790
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          2.4000000   0.8212029    7.014101
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8952787   0.4341874    1.846032
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0430108   0.4579132    2.375716
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.3965517   0.1165172    1.349614
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.9019608   0.2665520    3.052062
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9958748   0.4400867    2.253571
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.1081505   1.2142426    3.660140
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.8365079   1.5832134    5.081929
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9618608   0.5553135    1.666043
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.9763652   1.1782927    3.314982
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9088943   0.5537691    1.491757
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.4389881   0.1773514    1.086603
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.4820261   0.1535685    1.513000
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0642296   0.7364284    1.537942
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8463653   0.5443670    1.315903
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.2141891   0.7866355    1.874127
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1406280   0.7059714    1.842896
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.1740683   0.8916223    1.545987
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.1307755   0.8205674    1.558255
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8043569   0.3385130    1.911271
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.3108039   0.7037859    2.441377
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.6168224   0.3274857    1.161791
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.7346939   0.3686033    1.464379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          4.5866667   1.3080760   16.082790
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          2.4000000   0.8212029    7.014101
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8952787   0.4341874    1.846032
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0430108   0.4579132    2.375716
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.3965517   0.1165172    1.349614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.9019608   0.2665520    3.052062
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9958748   0.4400867    2.253571
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.1081505   1.2142426    3.660140
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.8365079   1.5832134    5.081929
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9618608   0.5553135    1.666043
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.9763652   1.1782927    3.314982
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9088943   0.5537691    1.491757
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.4389881   0.1773514    1.086603
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.4820261   0.1535685    1.513000
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0642296   0.7364284    1.537942
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8463653   0.5443670    1.315903
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.2141891   0.7866355    1.874127
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1406280   0.7059714    1.842896
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.1740683   0.8916223    1.545987
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.1307755   0.8205674    1.558255


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0423588    0.0157094   0.0690082
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779   0.0472409
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0127577   -0.0390460   0.0135306
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171   0.0107402
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0030501   -0.0016791   0.0077793
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0007564   -0.0007899   0.0023026
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0493810   -0.1195870   0.0208249
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0010796   -0.0222314   0.0200723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0066304   -0.0085616   0.0218224
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0069061   -0.0049424   0.0187545
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0009168   -0.0043601   0.0061936
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0223720   -0.0570336   0.0122896
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0423588    0.0157094   0.0690082
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779   0.0472409
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0127577   -0.0390460   0.0135306
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171   0.0107402
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0030501   -0.0016791   0.0077793
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0007564   -0.0007899   0.0023026
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0493810   -0.1195870   0.0208249
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0010796   -0.0222314   0.0200723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0066304   -0.0085616   0.0218224
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0069061   -0.0049424   0.0187545


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.5930233    0.0423485   0.8270456
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698   0.3980878
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.5434783   -2.1252205   0.2377097
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679   0.3726886
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0571032   -0.0351526   0.1411370
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0432627   -0.0490968   0.1274912
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.9439374   -2.8037702   0.0065403
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0125182   -0.2900402   0.2053013
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1294311   -0.2229893   0.3802969
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1187688   -0.1085988   0.2995045
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0364737   -0.1978128   0.2249348
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3669872   -1.0617799   0.0936695
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.5930233    0.0423485   0.8270456
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698   0.3980878
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.5434783   -2.1252205   0.2377097
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679   0.3726886
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0571032   -0.0351526   0.1411370
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0432627   -0.0490968   0.1274912
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.9439374   -2.8037702   0.0065403
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0125182   -0.2900402   0.2053013
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1294311   -0.2229893   0.3802969
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1187688   -0.1085988   0.2995045
