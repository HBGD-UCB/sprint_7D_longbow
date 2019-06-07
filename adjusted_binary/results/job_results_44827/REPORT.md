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

unadjusted

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
![](/tmp/1f9c33af-1ee9-4d91-9d57-2220d5b311de/2dd26a4a-3664-4ef1-9e99-4e2cded17696/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1f9c33af-1ee9-4d91-9d57-2220d5b311de/2dd26a4a-3664-4ef1-9e99-4e2cded17696/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1f9c33af-1ee9-4d91-9d57-2220d5b311de/2dd26a4a-3664-4ef1-9e99-4e2cded17696/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1f9c33af-1ee9-4d91-9d57-2220d5b311de/2dd26a4a-3664-4ef1-9e99-4e2cded17696/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1584507   0.1225610   0.1943404
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2977413   0.2307587   0.3647238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2537313   0.1976951   0.3097676
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2820513   0.1820644   0.3820382
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.3954545   0.3307654   0.4601436
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.4054054   0.3139576   0.4968532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1810345   0.1109082   0.2511608
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2403315   0.1962801   0.2843829
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1986301   0.1338624   0.2633979
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0797101   0.0344879   0.1249324
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1420912   0.1066325   0.1775498
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1645570   0.1066993   0.2224146
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0642857   0.0236320   0.1049395
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1034483   0.0748104   0.1320861
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0944444   0.0516935   0.1371954
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0429530   0.0326560   0.0532500
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0558659   0.0320707   0.0796611
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0626223   0.0416111   0.0836335
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1458437   0.1304068   0.1612806
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2688172   0.1786938   0.3589406
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1993865   0.1560067   0.2427664
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1103737   0.0907131   0.1300343
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2247191   0.0900305   0.3594077
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1911111   0.1213019   0.2609203
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0447742   0.0401894   0.0493590
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0644599   0.0443694   0.0845504
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0473208   0.0363424   0.0582993
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0909091   0.0470274   0.1347908
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1221557   0.0999359   0.1443755
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1054545   0.0691396   0.1417695
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0525394   0.0342345   0.0708443
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1044957   0.0835910   0.1254005
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0587084   0.0383209   0.0790959
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1192369   0.0939072   0.1445665
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2298701   0.2088526   0.2508877
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1495434   0.1259235   0.1731632
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0505837   0.0316271   0.0695402
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0534351   0.0148996   0.0919706
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0468750   0.0169591   0.0767909
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0477576   0.0412527   0.0542625
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1077068   0.1023335   0.1130801
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0688080   0.0623868   0.0752292
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0584071   0.0312511   0.0855630
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.0847107   0.0506911   0.1187304
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0660661   0.0353305   0.0968017
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
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0158983   0.0061216   0.0256749
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0298895   0.0213807   0.0383984
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0182648   0.0093959   0.0271338
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0260277   0.0207495   0.0313059
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0457359   0.0423205   0.0491514
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0324012   0.0279338   0.0368687
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1090909   0.0265237   0.1916581
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2882883   0.2038417   0.3727349
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1323529   0.0516365   0.2130694
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0476190   0.0131227   0.0821154
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1521739   0.0481625   0.2561853
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416574   0.2275733
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1447124   0.1188184   0.1706065
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3032407   0.2392268   0.3672547
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2581699   0.2078487   0.3084912
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2800000   0.1782566   0.3817434
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.3720930   0.3074017   0.4367843
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3909091   0.2996084   0.4822098
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1632653   0.0900205   0.2365101
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2271293   0.1809647   0.2732940
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2047244   0.1344834   0.2749654
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0542636   0.0151392   0.0933879
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1313433   0.0951433   0.1675433
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1610738   0.1020015   0.2201461
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0652174   0.0239940   0.1064407
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0954654   0.0673092   0.1236216
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0809249   0.0402581   0.1215916
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0489567   0.0369726   0.0609407
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0627063   0.0354021   0.0900105
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0689655   0.0451472   0.0927839
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1431546   0.1274896   0.1588197
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2555556   0.1654235   0.3456876
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1948882   0.1509957   0.2387807
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1103737   0.0907131   0.1300343
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2247191   0.0900305   0.3594077
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1911111   0.1213019   0.2609203
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0399237   0.0352745   0.0445728
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0559846   0.0361861   0.0757831
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0414673   0.0304321   0.0525025
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0890411   0.0428238   0.1352584
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1223684   0.0990596   0.1456772
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1088710   0.0700884   0.1476536
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0492701   0.0311443   0.0673958
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0976220   0.0770366   0.1182075
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0564516   0.0361353   0.0767679
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1222031   0.0955667   0.1488395
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2383966   0.2162458   0.2605475
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1565217   0.1314172   0.1816263
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0513834   0.0321350   0.0706318
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0538462   0.0150223   0.0926700
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0481283   0.0174324   0.0788243
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0379374   0.0309340   0.0449408
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1098346   0.1032169   0.1164523
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0645234   0.0568288   0.0722181


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.8790783   1.5444566   2.286199
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.6013267   1.2426946   2.063457
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.4020661   0.9488790   2.071697
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.4373464   0.9442331   2.187982
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3275454   0.8648408   2.037805
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0971950   0.6612806   1.820463
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.7825981   0.9591378   3.313034
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.0644419   1.0590909   4.024131
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.6091954   0.8068674   3.209337
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.4691358   0.6750113   3.197517
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.3006284   0.7977862   2.120411
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4579256   0.9652672   2.202030
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.8431869   1.2968334   2.619718
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3671245   1.0733261   1.741344
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0359835   1.0897804   3.803729
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7314909   1.2038967   2.490297
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4396665   1.0370162   1.998657
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0568764   0.8201439   1.361941
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3437124   0.8021993   2.250766
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1599999   0.6411272   2.098803
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.9889024   1.3308648   2.972303
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1174168   0.6832502   1.827472
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9278442   1.5297893   2.429474
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2541705   0.9624812   1.634259
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.0563711   0.4686570   2.381101
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          0.9266827   0.4420883   1.942465
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.2552825   1.9528880   2.604501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4407770   1.2191451   1.702700
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4503506   1.0010056   2.101404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.1311311   0.7473065   1.712092
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
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.8800517   0.9547115   3.702265
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1488583   0.5247788   2.515108
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.7572006   1.4142702   2.183284
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.2448739   0.9768712   1.586403
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.6426426   1.1737529   5.949770
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2132353   0.4590007   3.206836
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          3.1956521   1.1803561   8.651789
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.8269230   1.0391141   7.690680
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.0954713   1.7138088   2.562129
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.7840204   1.3908996   2.288252
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.3289037   0.8882824   1.988089
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.3961039   0.9064020   2.150377
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3911672   0.8501210   2.276554
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2539370   0.7128412   2.205762
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.4204691   1.1185943   5.237529
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.9683605   1.3219292   6.665383
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.4638027   0.7287117   2.940420
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.2408478   0.5533781   2.782371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.2808527   0.7772485   2.110758
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4087055   0.9225177   2.151125
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.7851717   1.2339721   2.582585
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3613825   1.0598265   1.748741
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0359835   1.0897804   3.803729
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7314909   1.2038967   2.490297
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4022896   0.9663634   2.034862
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0386645   0.7768202   1.388769
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3742913   0.7905986   2.388920
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.2227046   0.6515048   2.294698
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.9813656   1.2966079   3.027754
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1457587   0.6848341   1.916906
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9508231   1.5392651   2.472421
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2808328   0.9771556   1.678886
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.0479290   0.4650063   2.361592
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          0.9366516   0.4470383   1.962508
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.8951540   2.3896043   3.507659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.7007871   1.3641175   2.120548


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.1099174    0.0296403   0.1901944
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0375562    0.0061253   0.0689871
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0717651    0.0482096   0.0953207
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0944768    0.0028554   0.1860983
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0385168   -0.0258716   0.1029052
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0548190    0.0115649   0.0980731
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0297540   -0.0086368   0.0681448
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0062204   -0.0007265   0.0131672
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0118993    0.0045345   0.0192640
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0089212    0.0036227   0.0142196
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0015221   -0.0006784   0.0037225
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0236007   -0.0180281   0.0652295
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0241010    0.0074583   0.0407437
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0646712    0.0408819   0.0884605
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0004044   -0.0121093   0.0113004
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0408760    0.0342704   0.0474816
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0110575   -0.0000322   0.0221471
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0206231   -0.0172615   0.0585078
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0058816   -0.0380513   0.0262881
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0015352   -0.0019663   0.0050366
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0006742   -0.0005193   0.0018677
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0008791   -0.0113429   0.0095847
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0077548   -0.0014774   0.0169871
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0132981    0.0082580   0.0183383
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0917638    0.0126502   0.1708774
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0380952    0.0065391   0.0696514
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0808162    0.0556972   0.1059351
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0800000   -0.0132097   0.1732097
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0470668   -0.0207869   0.1149205
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0680855    0.0285827   0.1075884
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0210840   -0.0172877   0.0594556
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0064869   -0.0015553   0.0145291
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0113204    0.0038571   0.0187838
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0089212    0.0036227   0.0142196
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0011946   -0.0010309   0.0034200
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0262102   -0.0177816   0.0702020
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0228949    0.0063782   0.0394116
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0686801    0.0436349   0.0937252
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0003506   -0.0122349   0.0115337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0489510    0.0416656   0.0562364


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.5018868   -0.0101766   0.7543828
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.4180165    0.0012619   0.6608672
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.3117298    0.2244057   0.3892220
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.2509158   -0.0363236   0.4585405
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1754342   -0.1758867   0.4217906
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.4074879   -0.0059589   0.6510090
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.3163984   -0.2327008   0.6209046
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1264985   -0.0249222   0.2555484
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0754347    0.0279028   0.1206424
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0747827    0.0292904   0.1181430
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0328771   -0.0157525   0.0791784
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.2061021   -0.2532630   0.4970936
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.3144687    0.0657696   0.4969623
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3516494    0.2108150   0.4673512
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0080600   -0.2705026   0.2001709
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.4611796    0.3856400   0.5274311
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1591814   -0.0259680   0.3109182
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2850575   -0.4757933   0.6536488
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1311594   -1.1303471   0.3993835
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0536050   -0.0761334   0.1677022
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0545317   -0.0465824   0.1458767
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0389961   -0.6239218   0.3352433
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3278572   -0.1888681   0.6199949
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.3381520    0.1984653   0.4534949
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.4568665   -0.0954428   0.7307080
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.4444444    0.0022396   0.6906652
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.3583411    0.2758375   0.4314451
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.2222222   -0.0847125   0.4423054
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2237737   -0.1743640   0.4869332
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.5564858    0.1210607   0.7762020
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.2443064   -0.3552454   0.5786204
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1169999   -0.0389944   0.2495732
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0732833    0.0240390   0.1200428
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0747827    0.0292904   0.1181430
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0290517   -0.0265295   0.0816234
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.2274178   -0.2639609   0.5277676
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.3172576    0.0527751   0.5078917
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3598017    0.2166489   0.4767941
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0068699   -0.2688686   0.2010307
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.5633778    0.4784772   0.6344572
