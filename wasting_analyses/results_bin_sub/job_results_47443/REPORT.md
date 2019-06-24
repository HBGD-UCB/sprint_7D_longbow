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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* delta_W_mage
* delta_meducyrs
* delta_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mhtcm           ever_co   n_cell       n
------------  -------------------------  -----------------------------  -------------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       23     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        2     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      131     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       32     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       61     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        5     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      129     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        1     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       52     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        1     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       39     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              0       49     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              1        6     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               0       82     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               1       33     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       58     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          1       14     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       41     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               0      114     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               1       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       62     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        2     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              0       60     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm               0      161     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm               1        8     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          0       57     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          1        4     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      190     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       14     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       29     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        4     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       31     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        2     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      145     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        8     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       43     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        8     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       45     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      478    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1       90    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      342    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1      145    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      250    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       85    1390
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       56     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1       22     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0      133     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1       87     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0       66     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1       45     409
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       95     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       21     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      275     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1       87     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      117     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       29     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      127     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1       11     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      320     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       53     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      132     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       26     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      131     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        9     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      390     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       45     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      163     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       17     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1426    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       64    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      338    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       20    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      479    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       32    2359
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              0     1716    2428
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              1      293    2428
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm               0       68    2428
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm               1       25    2428
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          0      261    2428
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          1       65    2428
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       35     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        1     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0      131     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1       12     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       51     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1        5     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm              0     2547    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm              1      316    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm               0       69    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm               1       20    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm          0      182    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm          1       43    3177
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              0    13189   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              1       22   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm               0      125   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          0      397   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          1        1   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     7467    9828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      350    9828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      537    9828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       37    9828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1369    9828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       68    9828
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      150    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       15    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               0      733    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               1      102    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      246    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       29    1275
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm              0      541    1905
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm              1       30    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm               0      737    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm               1       86    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          0      481    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          1       30    1905
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      554    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       75    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1186    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      354    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      745    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      131    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              0      488     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              1       26     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               0      124     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               1        7     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      183     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          1        9     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     3928   26807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      197   26807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0    14183   26807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     1712   26807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     6320   26807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      467   26807
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       24     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        1     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      155     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1        8     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       66     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        0     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      130     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        0     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       53     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        0     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       39     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              0       53     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              1        2     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               0      106     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               1        9     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       66     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        6     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       41     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               0      126     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       64     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              0       60     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm               0      168     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm               1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          0       60     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          1        1     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      201     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       33     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       33     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        0     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      151     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        2     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       50     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       51     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        1     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      532    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1       33    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      443    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1       41    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      311    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       22    1382
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       74     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1        4     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0      199     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1       21     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0      103     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1        6     407
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0      110     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        6     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      330     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1       30     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      137     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        9     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      131     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        7     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      357     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       16     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      151     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1        7     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      140     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        0     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      423     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       12     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      175     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1        5     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1481    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        9    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      356    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        2    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      504    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7    2359
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              0     1723    2130
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              1       48    2130
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm               0       69    2130
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm               1        7    2130
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          0      277    2130
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          1        6    2130
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       34     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        0     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0      129     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1        3     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       51     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1        2     219
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              0    13197   13734
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              1       14   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm               0      125   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          0      397   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          1        1   13734
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     7694    9787
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1       91    9787
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      560    9787
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1        9    9787
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1412    9787
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       21    9787
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      133    1044
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              1        3    1044
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               0      669    1044
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               1       16    1044
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      221    1044
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1        2    1044
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm              0      542    1863
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm              1       13    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm               0      786    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm               1       21    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          0      493    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          1        8    1863
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      619    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       10    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1493    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               1       46    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      860    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1       16    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              0      161     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               0       38     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          0       72     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          1        0     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     4004   26700
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      107   26700
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0    15106   26700
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1      724   26700
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     6540   26700
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      219   26700
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       22     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        2     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      128     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       28     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       54     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        5     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      119     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       49     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       37     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              0       49     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              1        6     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               0       79     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               1       32     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       59     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        9     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       41     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               0      117     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               1       14     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       61     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        2     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              0       58     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm               0      147     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm               1        8     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          0       53     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          1        3     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      178     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       13     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       28     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        4     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       29     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        2     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      140     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        7     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       39     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        7     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       45     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      461    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1       78    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      301    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1      131    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      227    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       79    1277
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       54     400
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1       21     400
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0      135     400
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1       80     400
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0       67     400
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1       43     400
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       82     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       16     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      245     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1       72     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      101     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       26     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      122     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        7     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      291     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       44     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      125     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       24     613
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      129     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        9     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      379     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       40     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      159     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       14     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1185    1984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       61    1984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      284    1984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       19    1984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      405    1984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       30    1984
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              0     1646    2324
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              1      275    2324
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm               0       67    2324
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm               1       23    2324
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          0      252    2324
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          1       61    2324
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       35     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        1     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0      125     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1       11     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       49     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1        4     225
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm              0     2547    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm              1      316    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm               0       69    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm               1       20    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm          0      182    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm          1       43    3177
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              0    13194   13726
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              1        9   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm               0      125   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          0      398   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          1        0   13726
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     6541    8585
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      272    8585
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      489    8585
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       29    8585
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1202    8585
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       52    8585
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      133    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       13    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               0      667    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               1       93    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      221    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       27    1154
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm              0      521    1843
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm              1       27    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm               0      721    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm               1       78    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          0      468    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          1       28    1843
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      510    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       71    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1083    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      339    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      679    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      126    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              0      480     823
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              1       26     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               0      123     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               1        7     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      178     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          1        9     823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2612   17229
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      103   17229
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     8988   17229
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     1109   17229
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     4132   17229
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      285   17229


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
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/eb726a24-6240-41eb-a3a1-415b48ee28c3/e1618254-4392-4765-9374-dfe542fcc521/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eb726a24-6240-41eb-a3a1-415b48ee28c3/e1618254-4392-4765-9374-dfe542fcc521/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eb726a24-6240-41eb-a3a1-415b48ee28c3/e1618254-4392-4765-9374-dfe542fcc521/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eb726a24-6240-41eb-a3a1-415b48ee28c3/e1618254-4392-4765-9374-dfe542fcc521/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1090909   0.0265295   0.1916523
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2869565   0.2041119   0.3698012
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1944444   0.1028379   0.2860510
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0522876   0.0169457   0.0876295
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1568627   0.0568577   0.2568678
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416656   0.2275651
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1606722   0.1248126   0.1965318
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2993897   0.2338113   0.3649682
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2584398   0.1992115   0.3176682
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2858254   0.1855911   0.3860597
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.3970171   0.3321728   0.4618614
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.4088523   0.3164639   0.5012408
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1803074   0.1093188   0.2512960
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2402871   0.1959147   0.2846594
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1994280   0.1339514   0.2649047
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0799598   0.0338707   0.1260489
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1412900   0.1058226   0.1767573
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1657372   0.1068272   0.2246471
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0642857   0.0236320   0.1049395
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1034483   0.0748104   0.1320861
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0944444   0.0516935   0.1371954
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0426739   0.0323865   0.0529614
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0577668   0.0338987   0.0816350
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0632114   0.0422097   0.0842131
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1470590   0.1316253   0.1624928
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2316876   0.1390422   0.3243329
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1909799   0.1475783   0.2343815
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1104164   0.0907972   0.1300356
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2223931   0.0851905   0.3595958
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1888712   0.1180770   0.2596653
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0447188   0.0401334   0.0493043
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0639813   0.0437575   0.0842052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0471653   0.0361878   0.0581429
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0792283   0.0345259   0.1239306
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1211665   0.0989376   0.1433954
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0995307   0.0628552   0.1362061
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0533819   0.0350328   0.0717311
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1030732   0.0821516   0.1239948
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0585750   0.0381271   0.0790229
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1185837   0.0933376   0.1438298
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2296122   0.2085688   0.2506556
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1499992   0.1261922   0.1738061
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0505837   0.0316271   0.0695402
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0534351   0.0148996   0.0919706
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0468750   0.0169591   0.0767909
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0483713   0.0417939   0.0549487
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1074621   0.1020941   0.1128302
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0691091   0.0626077   0.0756105
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0584859   0.0313462   0.0856256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.0827579   0.0489579   0.1165579
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0662061   0.0351313   0.0972810
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0517241   0.0113891   0.0920592
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0833333   0.0547600   0.1119067
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0616438   0.0226002   0.1006874
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0507246   0.0140860   0.0873632
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0428954   0.0223174   0.0634735
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0443038   0.0121949   0.0764126
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0271033   0.0195387   0.0346679
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0921053   0.0270768   0.1571337
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0212014   0.0044139   0.0379889
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0116891   0.0093014   0.0140768
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0158172   0.0055650   0.0260694
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0146546   0.0084326   0.0208765
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0234234   0.0108372   0.0360097
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0260223   0.0150354   0.0370092
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0159681   0.0049887   0.0269474
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0154463   0.0058947   0.0249978
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0296583   0.0211669   0.0381497
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0180380   0.0092615   0.0268146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0266586   0.0212842   0.0320330
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0455960   0.0421724   0.0490196
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0324427   0.0279334   0.0369520
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1090909   0.0265237   0.1916581
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2882883   0.2038417   0.3727349
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1323529   0.0516365   0.2130694
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0476190   0.0131227   0.0821154
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1521739   0.0481625   0.2561853
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416574   0.2275733
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1457999   0.1197289   0.1718710
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3057378   0.2436139   0.3678618
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2622403   0.2071381   0.3173425
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2823536   0.1785887   0.3861185
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.3712009   0.3062913   0.4361106
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3912125   0.2988649   0.4835600
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1576032   0.0825318   0.2326747
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2270895   0.1805759   0.2736031
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2072306   0.1355033   0.2789580
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0542636   0.0151392   0.0933879
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1313433   0.0951433   0.1675433
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1610738   0.1020015   0.2201461
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0652174   0.0239940   0.1064407
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0954654   0.0673092   0.1236216
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0809249   0.0402581   0.1215916
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0486750   0.0367287   0.0606213
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0639193   0.0360576   0.0917809
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0676717   0.0438701   0.0914732
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1444361   0.1287522   0.1601199
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2356687   0.1480976   0.3232399
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1890166   0.1454632   0.2325701
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1103868   0.0907817   0.1299918
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2229029   0.0806101   0.3651958
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1869274   0.1182248   0.2556300
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0399151   0.0352648   0.0445655
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0559000   0.0360235   0.0757764
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0412012   0.0301377   0.0522647
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0849258   0.0397051   0.1301465
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1224669   0.0991431   0.1457907
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1065209   0.0677779   0.1452638
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0502869   0.0321172   0.0684566
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0964866   0.0759403   0.1170329
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0569574   0.0366250   0.0772898
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1216119   0.0950341   0.1481897
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2383759   0.2161805   0.2605713
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1567667   0.1314307   0.1821027
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0513834   0.0321350   0.0706318
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0538462   0.0150223   0.0926700
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0481283   0.0174324   0.0788243
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0380672   0.0311093   0.0450252
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1098125   0.1031915   0.1164335
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0643826   0.0566580   0.0721072


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2190083   0.1667935   0.2712230
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0898438   0.0547459   0.1249416
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2302158   0.1856981   0.2747335
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3765281   0.3295143   0.4235419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1345291   0.1086533   0.1604050
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0940397   0.0732057   0.1148737
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0491734   0.0404458   0.0579009
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1577430   0.1432416   0.1722444
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1192949   0.0996089   0.1389809
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0462963   0.0421418   0.0504508
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1145098   0.0970244   0.1319952
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0766404   0.0646915   0.0885893
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0501792   0.0353804   0.0649781
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0886336   0.0847410   0.0925262
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0694645   0.0441638   0.0947653
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0448430   0.0291486   0.0605375
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0286385   0.0215537   0.0357233
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0123633   0.0101740   0.0145527
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0225443   0.0158017   0.0292868
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393258   0.0368315   0.0418201
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2008547   0.1494120   0.2522974
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0857143   0.0505889   0.1208396
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2255286   0.1871466   0.2639106
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3600000   0.3129020   0.4070980
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1223491   0.0963874   0.1483108
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0554435   0.0453713   0.0655158
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1544750   0.1397785   0.1691716
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1192949   0.0996089   0.1389809
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0411182   0.0369177   0.0453187
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1152513   0.0968196   0.1336830
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0721649   0.0603481   0.0839818
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0510328   0.0359888   0.0660768
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0868884   0.0822172   0.0915596


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.6304348   1.1701604   5.913025
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.7824074   0.7308807   4.346778
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          3.0000000   1.1846760   7.597014
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.5745192   0.9796292   6.765978
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.8633573   1.5279110   2.272449
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.6084913   1.2428648   2.081678
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.3890197   0.9434930   2.044929
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.4304269   0.9422593   2.171505
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3326521   0.8623417   2.059464
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1060444   0.6622846   1.847143
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.7670125   0.9422663   3.313642
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.0727563   1.0530121   4.080028
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.6091954   0.8068674   3.209337
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.4691358   0.6750113   3.197517
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.3536794   0.8388802   2.184398
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4812650   0.9827951   2.232557
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.5754731   1.0420107   2.382044
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2986615   1.0115556   1.667256
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0141311   1.0601351   3.826611
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7105352   1.1806857   2.478162
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4307469   1.0262079   1.994758
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0547085   0.8179348   1.360023
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.5293344   0.8445415   2.769389
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.2562521   0.6404384   2.464202
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.9308640   1.2955119   2.877809
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0972815   0.6722531   1.791032
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9362876   1.5356401   2.441464
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2649222   0.9698789   1.649719
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.0563711   0.4686570   2.381101
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          0.9266827   0.4420883   1.942465
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.2216093   1.9240477   2.565190
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4287216   1.2083276   1.689315
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4150071   0.9797955   2.043534
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.1320018   0.7535944   1.700421
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.6111111   0.6873308   3.776463
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1917808   0.4364095   3.254607
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.8456530   0.3553172   2.012650
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.8734177   0.3139381   2.429964
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          3.3983004   1.5905622   7.260606
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.7822438   0.3378514   1.811167
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3531548   0.6858110   2.669872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2536905   0.7826533   2.008220
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.1109522   0.5609346   2.200283
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.6817136   0.2848523   1.631489
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9200932   0.9716316   3.794399
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1677923   0.5316143   2.565279
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.7103667   1.3784447   2.122214
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.2169693   0.9547314   1.551237
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.6426426   1.1737529   5.949770
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2132353   0.4590007   3.206836
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          3.1956521   1.1803561   8.651789
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.8269230   1.0391141   7.690680
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.0969681   1.7245365   2.549830
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.7986310   1.3767058   2.349866
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.3146668   0.8748632   1.975564
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.3855408   0.8951009   2.144701
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.4408939   0.8576193   2.420859
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.3148881   0.7294918   2.370048
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.4204691   1.1185943   5.237529
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.9683605   1.3219292   6.665383
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.4638027   0.7287117   2.940420
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.2408478   0.5533781   2.782371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.3131854   0.7962323   2.165770
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.3902762   0.9052968   2.135065
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.6316474   1.1081522   2.402444
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3086525   1.0148059   1.687585
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0192901   1.0405834   3.918506
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.6933861   1.1762657   2.437848
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4004707   0.9633132   2.036013
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0322201   0.7702543   1.383281
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.4420465   0.8182572   2.541375
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.2542819   0.6586814   2.388443
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.9187226   1.2613030   2.918804
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1326491   0.6815261   1.882384
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9601362   1.5456490   2.485774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2890733   0.9822348   1.691765
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.0479290   0.4650063   2.361592
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          0.9366516   0.4470383   1.962508
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.8846978   2.3847012   3.489528
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.6912859   1.3581988   2.106060


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.1099174    0.0296403   0.1901944
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0375562    0.0061253   0.0689871
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0695436    0.0451841   0.0939032
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0907027   -0.0011890   0.1825945
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0392439   -0.0260803   0.1045681
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0545694    0.0105727   0.0985660
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0297540   -0.0086368   0.0681448
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0064994   -0.0004386   0.0134375
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0106840    0.0033808   0.0179872
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0088785    0.0034783   0.0142787
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0015775   -0.0006217   0.0037766
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0352816   -0.0071825   0.0777456
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0232585    0.0065869   0.0399302
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0653243    0.0415909   0.0890578
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0004044   -0.0121093   0.0113004
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0402623    0.0335932   0.0469314
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0109787   -0.0000303   0.0219876
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0206231   -0.0172615   0.0585078
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0058816   -0.0380513   0.0262881
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0015352   -0.0019663   0.0050366
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0006742   -0.0005193   0.0018677
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0008791   -0.0113429   0.0095847
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0082068   -0.0008447   0.0172583
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0126672    0.0075466   0.0177879
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0917638    0.0126502   0.1708774
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0380952    0.0065391   0.0696514
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0797286    0.0540713   0.1053860
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0776464   -0.0173899   0.1726826
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0527289   -0.0169460   0.1224038
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0680855    0.0285827   0.1075884
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0210840   -0.0172877   0.0594556
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0067686   -0.0012789   0.0148161
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0100390    0.0026249   0.0174530
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0089082    0.0035555   0.0142609
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0012031   -0.0010240   0.0034302
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0303255   -0.0128505   0.0735016
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0218781    0.0053325   0.0384236
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0692713    0.0442577   0.0942849
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0003506   -0.0122349   0.0115337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0488211    0.0415622   0.0560801


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.5018868   -0.0101766   0.7543828
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.4180165    0.0012619   0.6608672
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.3020801    0.2114569   0.3822885
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.2408923   -0.0465931   0.4494092
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1787458   -0.1789745   0.4279279
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.4056322   -0.0179248   0.6529478
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.3163984   -0.2327008   0.6209046
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1321738   -0.0191125   0.2610019
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0677302    0.0206099   0.1125834
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0744250    0.0282111   0.1184411
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0340730   -0.0145319   0.0803493
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.3081094   -0.1816253   0.5948694
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.3034757    0.0548029   0.4867250
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3552010    0.2147323   0.4705426
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0080600   -0.2705026   0.2001709
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.4542553    0.3778525   0.5212755
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1580471   -0.0256809   0.3088643
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2850575   -0.4757933   0.6536488
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1311594   -1.1303471   0.3993835
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0536050   -0.0761334   0.1677022
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0545317   -0.0465824   0.1458767
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0389961   -0.6239218   0.3352433
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3469658   -0.1591256   0.6320902
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.3221098    0.1800645   0.4395472
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.4568665   -0.0954428   0.7307080
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.4444444    0.0022396   0.6906652
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.3535190    0.2678514   0.4291628
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.2156844   -0.0981467   0.4398280
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2506934   -0.1645224   0.5178621
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.5564858    0.1210607   0.7762020
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.2443064   -0.3552454   0.5786204
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1220806   -0.0339542   0.2545681
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0649877    0.0160669   0.1114761
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0746735    0.0288763   0.1183109
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0292593   -0.0263659   0.0818697
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.2631253   -0.2220832   0.5556895
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.3031673    0.0389498   0.4947445
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3628988    0.2199422   0.4796565
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0068699   -0.2688686   0.2010307
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.5618834    0.4775441   0.6326079
