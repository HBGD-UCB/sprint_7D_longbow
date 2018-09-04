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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        mhtcm           stunted   n_cell       n
----------  -------------------------  -----------------------------  -------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       22     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        3     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      125     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       31     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       57     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        8     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0       99     184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        8     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       40     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        9     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       26     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        2     184
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              0       43     198
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              1        3     198
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               0       76     198
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               1       19     198
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       47     198
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          1       10     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       25     172
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        2     172
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               0       87     172
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               1        9     172
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       42     172
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        7     172
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              0       54     276
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              1        4     276
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               0      137     276
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               1       24     276
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          0       52     276
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          1        5     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      156     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       17     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       25     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        4     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       24     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        2     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       68     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        8     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       13     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        8     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       22     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        2     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0       48     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1       11     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0       20     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1       13     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0       27     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       11     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0       15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1        2      27
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              0     1130    1429
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              1       56    1429
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               0       46    1429
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               1        5    1429
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          0      181    1429
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          1       11    1429
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              0    13174   13729
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              1       32   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               0      125   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          0      397   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          1        1   13729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     6977    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      727    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      480    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       78    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1252    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1      153    9667
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      104     840
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              1        6     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               0      513     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               1       32     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      174     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       11     840
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              0      497    1774
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              1       33    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm               0      657    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm               1      106    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          0      436    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          1       45    1774
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      614    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       16    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1413    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      132    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      836    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1       39    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     4690   39072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1     1110   39072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0    14578   39072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     8892   39072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     7180   39072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1     2622   39072
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        3     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      118     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       38     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       57     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        4     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      118     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        3     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       49     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       36     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              0       48     235
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              1        7     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               0       82     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               1       30     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       60     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        8     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       41     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               0      122     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               1       10     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       61     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        2     236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              0       51     272
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              1        7     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               0      116     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               1       41     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          0       45     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          1       12     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      156     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       31     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       21     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1       10     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       22     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        9     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      123     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       24     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       39     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       13     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      408    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1      102    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      251    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1      170    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      215    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       82    1228
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       54     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1       20     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0       96     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1      106     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0       67     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1       36     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       80     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       16     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      208     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1      103     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      105     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       25     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      115     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1       11     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      252     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       64     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      122     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       18     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      116     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1       18     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      310     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1      101     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      139     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       31     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1160    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       86    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      263    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       46    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      383    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       58    1996
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              0     1375    1877
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              1      193    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               0       47    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               1       20    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          0      187    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          1       55    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       28     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        8     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0       94     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1       47     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       39     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1       15     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              0    11811   13033
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              1      722   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               0      102   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               1       19   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          0      340   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          1       39   13033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     4843    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      829    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      284    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1      148    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0      819    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1      203    7126
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              0       93     943
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       24     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               0      331     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               1      298     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      133     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       64     943
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              0      491    1819
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              1       50    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm               0      614    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm               1      176    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          0      411    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          1       77    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      493    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       68    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               0      992    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      376    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      651    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      128    2708
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              0      358     836
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              1      155     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               0       58     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               1       73     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      113     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          1       79     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     4771   33477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      542   33477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0    13254   33477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     6314   33477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     7030   33477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1     1566   33477
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0       57     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       80     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       39     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1       14     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0       92     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       42     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              0       39     226
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              1       14     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               0       52     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               1       58     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       41     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          1       22     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               0       91     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               1       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       50     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1       11     228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              0       37     201
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              1        9     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               0       62     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               1       53     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          0       28     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          1       12     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      122     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       58     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       16     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1       11     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       14     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1       13     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       46     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       80     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1       36     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       37     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       51     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       26     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0       89     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1      163     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0       51     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       49     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      102     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1       20     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      193     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1      121     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0       92     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       48     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0       91     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        9     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      194     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       93     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0       97     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       30     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              0      924    1602
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              1      414    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               0       21    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               1       39    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          0      113    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          1       91    1602
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              0     3544    4005
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              1      315    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               0       22    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               1       13    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          0       97    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          1       14    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0      109     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      169     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0        3     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       31     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0       17     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       49     378
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              0       56     997
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       71     997
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               0      101     997
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               1      560     997
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0       49     997
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1      160     997
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              0      406    1819
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              1      146    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm               0      333    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm               1      452    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          0      257    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          1      225    1819
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      284    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1      226    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               0      343    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      891    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      310    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      391    2445
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              0      228     577
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              1      127     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               0       36     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               1       59     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          0       59     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          1       68     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     1934   17160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      689   17160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     4117   17160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     5998   17160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     2682   17160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1     1740   17160


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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
```




# Results Detail

## Results Plots
![](/tmp/0940551b-f2ac-4904-9456-a1ccc3d6da15/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0940551b-f2ac-4904-9456-a1ccc3d6da15/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0940551b-f2ac-4904-9456-a1ccc3d6da15/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0940551b-f2ac-4904-9456-a1ccc3d6da15/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1844246   0.0756639   0.2931854
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3975032   0.2098534   0.5851530
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2911297   0.1519226   0.4303368
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0472175   0.0351420   0.0592931
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0980392   0.0163981   0.1796803
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0572917   0.0244077   0.0901756
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0943335   0.0878086   0.1008584
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1385240   0.1101602   0.1668879
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1093813   0.0932251   0.1255376
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0545455   0.0120825   0.0970084
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0587156   0.0389666   0.0784646
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0594595   0.0253621   0.0935568
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0655261   0.0450710   0.0859813
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1438624   0.1194411   0.1682837
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0965102   0.0706852   0.1223352
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0242315   0.0124911   0.0359719
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0846259   0.0708342   0.0984176
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0438748   0.0304570   0.0572926
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1971760   0.1810971   0.2132549
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.3765635   0.3666683   0.3864586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2703372   0.2567466   0.2839278
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1272727   0.0390055   0.2155400
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2678571   0.1856680   0.3500463
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1176471   0.0409054   0.1943887
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1206897   0.0366973   0.2046821
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.2611465   0.1923099   0.3299831
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.2105263   0.1044954   0.3165572
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1657754   0.1123679   0.2191830
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.3225806   0.1576927   0.4874686
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.2903226   0.1302150   0.4504302
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1633033   0.1034591   0.2231475
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4374550   0.2969841   0.5779259
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2500739   0.1321804   0.3679673
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1987897   0.1780888   0.2194906
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3996237   0.3364173   0.4628300
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2741609   0.2302511   0.3180707
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2712211   0.1737003   0.3687419
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.5252999   0.4572168   0.5933830
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3415303   0.2514436   0.4316171
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1801559   0.1073672   0.2529447
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3347783   0.2825789   0.3869778
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1978763   0.1309251   0.2648274
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0848346   0.0372318   0.1324374
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2014110   0.1574329   0.2453891
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1312502   0.0771633   0.1853371
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1345480   0.0768473   0.1922487
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2457276   0.2040789   0.2873763
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1821594   0.1241056   0.2402133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0685849   0.0545353   0.0826346
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1442818   0.1051722   0.1833914
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1287295   0.0975535   0.1599055
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1237117   0.1074517   0.1399718
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2853401   0.1762003   0.3944798
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.2238830   0.1713239   0.2764421
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2222222   0.0861215   0.3583229
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.3333333   0.2553549   0.4113117
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2777778   0.1580548   0.3975007
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0576201   0.0452698   0.0699704
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.1458710   0.0868807   0.2048613
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0998134   0.0649746   0.1346523
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1460102   0.1368277   0.1551926
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3426244   0.2996704   0.3855784
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1966505   0.1726531   0.2206479
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2052058   0.1328668   0.2775448
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4727847   0.4337723   0.5117971
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.3275080   0.2621437   0.3928722
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0970430   0.0728427   0.1212434
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2212568   0.1926682   0.2498455
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1584771   0.1267415   0.1902127
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1160321   0.0900360   0.1420282
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2730269   0.2495840   0.2964699
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1613431   0.1357440   0.1869423
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3027944   0.2632613   0.3423275
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.5496544   0.4656278   0.6336809
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.4154150   0.3462652   0.4845648
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1058638   0.0932062   0.1185213
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.3192515   0.3081814   0.3303216
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1843567   0.1725049   0.1962085
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2608448   0.1573594   0.3643303
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5201931   0.4298205   0.6105656
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3505277   0.2408219   0.4602334
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1956522   0.0807267   0.3105777
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4608696   0.3695386   0.5522006
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.3000000   0.1576325   0.4423675
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3236723   0.2556081   0.3917365
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.4047247   0.2261715   0.5832778
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.4731034   0.2900691   0.6561378
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3427906   0.2450496   0.4405317
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6449322   0.5866351   0.7032293
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5084888   0.4147041   0.6022736
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1632516   0.0975484   0.2289548
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3858830   0.3320675   0.4396985
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.3427309   0.2639218   0.4215399
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0900000   0.0338548   0.1461452
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3240418   0.2698429   0.3782407
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2362205   0.1622750   0.3101660
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3096470   0.2848786   0.3344153
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.6492033   0.5304231   0.7679836
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4442968   0.3772966   0.5112971
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0816284   0.0502714   0.1129853
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.3715753   0.2213997   0.5217508
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1257594   0.0695710   0.1819479
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.5280582   0.4443645   0.6117520
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8460900   0.8187043   0.8734756
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7499754   0.6934682   0.8064827
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2740054   0.2390358   0.3089750
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.5696295   0.5360465   0.6032124
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.4632472   0.4208780   0.5056164
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4427218   0.4010832   0.4843604
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7164515   0.6916227   0.7412802
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5548977   0.5186960   0.5910994
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3578819   0.3080419   0.4077220
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.6195349   0.5213989   0.7176708
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.5361283   0.4497606   0.6224960
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2717005   0.2448838   0.2985172
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.5888361   0.5738993   0.6037728
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.3978014   0.3747100   0.4208927


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2692308   0.1695525   0.3689090
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0503849   0.0390398   0.0617300
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0991000   0.0931434   0.1050567
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0583333   0.0424744   0.0741923
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1037204   0.0895283   0.1179125
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3230958   0.3154261   0.3307655
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1914894   0.1410749   0.2419038
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2008032   0.1509453   0.2506612
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2882736   0.2624662   0.3140810
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4274406   0.3775694   0.4773119
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1597938   0.1299995   0.1895881
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0951904   0.0823123   0.1080685
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1427810   0.1269499   0.1586122
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3030303   0.2436375   0.3624232
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0598481   0.0470397   0.0726565
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1655908   0.1569598   0.1742218
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4093319   0.3779317   0.4407321
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1665750   0.1494477   0.1837024
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3672249   0.3345288   0.3999210
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2515757   0.2434634   0.2596881
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4159292   0.3515272   0.4803312
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3504274   0.2891665   0.4116882
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3281250   0.2897474   0.3665026
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3395755   0.3163785   0.3627726
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0853933   0.0554084   0.1153781
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7933801   0.7682355   0.8185248
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4524464   0.4295668   0.4753260
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4402080   0.3996684   0.4807475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4910839   0.4779332   0.5042346


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.1553692   1.3945973   3.331153
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.5785836   0.7393700   3.370337
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.0763305   0.8689039   4.961594
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2133556   0.6472765   2.274502
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4684503   1.1830898   1.822640
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.1595178   0.9851094   1.364804
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.0764526   0.4609940   2.513591
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0900901   0.4145183   2.866692
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.1954967   1.5387363   3.132574
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.4728509   0.9766701   2.221108
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.4923920   2.0951116   5.821552
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.8106514   1.0209847   3.211075
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.9097835   1.7535588   2.079926
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3710450   1.2477275   1.506550
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.1045918   0.9858478   4.492891
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          0.9243697   0.3567439   2.395162
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          2.1637853   1.0280615   4.554170
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.7443609   0.7388397   4.118343
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.9458897   1.0634406   3.560600
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.7513007   0.9246585   3.316959
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.6787889   1.6457190   4.360350
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5313463   0.8429070   2.782064
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.0102836   1.6720438   2.416946
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.3791504   1.0940273   1.738582
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.9367958   1.3227534   2.835886
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2592321   0.8075581   1.963531
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.8582698   1.2059364   2.863473
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0983612   0.6487750   1.859500
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.3741609   1.3003644   4.334662
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.5471306   0.7715366   3.102397
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.8263196   1.1517570   2.895961
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.3538625   0.7935745   2.309731
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.1036945   1.4977056   2.954874
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.8769348   1.3667323   2.577596
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.3064913   1.5394356   3.455748
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.8097152   1.3831797   2.367783
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.5000000   0.7786878   2.889476
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2500000   0.5911037   2.643360
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.5315978   1.7404579   3.682357
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.7322658   1.2963366   2.314788
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.3465792   2.0395359   2.699846
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3468274   1.1741174   1.544943
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          2.3039537   1.6048053   3.307692
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.5959975   1.0648880   2.391996
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.2799869   1.7232242   3.016636
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.6330598   1.1870693   2.246612
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.3530299   1.8509493   2.991303
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3905048   1.0566774   1.829796
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.8152726   1.4855373   2.218197
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.3719376   1.1110711   1.694053
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          3.0156824   2.6700215   3.406092
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.7414523   1.5211736   1.993629
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.9942623   1.2943254   3.072707
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.3438167   0.8105781   2.227846
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          2.3555556   1.2672529   4.378480
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.5333333   0.7205799   3.262804
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.2504150   0.7680656   2.035683
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.4616743   0.9422203   2.267508
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.8814173   1.3949998   2.537442
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.4833802   1.0569962   2.081764
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.3637315   1.5441016   3.618432
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.0994025   1.3206439   3.337380
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          3.6004642   1.8873878   6.868404
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          2.6246716   1.3060213   5.274724
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.0965918   1.7170513   2.560027
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.4348496   1.2097992   1.701764
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          4.5520361   2.4991629   8.291189
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.5406338   0.8252059   2.876316
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.6022664   1.3632875   1.883137
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.4202514   1.1923338   1.691736
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.0788987   1.8086480   2.389531
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.6906500   1.4471195   1.975163
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.6182882   1.4641774   1.788620
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2533778   1.1179729   1.405183
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.7311152   1.4018148   2.137771
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.4980590   1.2112075   1.852846
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.1672245   1.9634233   2.392180
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4641169   1.3077905   1.639130


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0848061    0.0323854   0.1372269
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0031673   -0.0025322   0.0088669
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0047666    0.0015838   0.0079494
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0037879   -0.0359911   0.0435668
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0381943    0.0190117   0.0573768
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0370800    0.0247936   0.0493663
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1259198    0.1106119   0.1412277
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.0642166   -0.0175503   0.1459836
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0998986    0.0193802   0.1804169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0350278    0.0025639   0.0674917
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0715145    0.0254440   0.1175851
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0894839    0.0650012   0.1139666
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1562195    0.0661299   0.2463092
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0880005    0.0190026   0.1569984
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0749592    0.0287321   0.1211864
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0752423    0.0207329   0.1297516
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0266054    0.0158178   0.0373931
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0190693    0.0105626   0.0275760
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0808081   -0.0467748   0.2083909
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0022279    0.0012035   0.0032524
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0195806    0.0146413   0.0245199
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2041261    0.1341209   0.2741313
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0695320    0.0467004   0.0923636
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0951939    0.0702238   0.1201641
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0644305    0.0380323   0.0908286
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1457119    0.1330324   0.1583915
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1550844    0.0593629   0.2508058
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1725070    0.0646625   0.2803516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0267551   -0.0079498   0.0614600
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2119879    0.1220856   0.3018903
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1648734    0.1019597   0.2277871
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1668093    0.1088878   0.2247309
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0299286    0.0187063   0.0411508
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0037649    0.0004931   0.0070367
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2653219    0.1891147   0.3415291
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1784410    0.1477442   0.2091378
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1740471    0.1371949   0.2108993
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0823260    0.0496944   0.1149576
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2193834    0.1950828   0.2436839


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3149942    0.0574556   0.5021636
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0628630   -0.0564656   0.1687134
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0480984    0.0155385   0.0795815
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0649351   -0.9385216   0.5489623
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3682427    0.1630395   0.5231348
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.6047805    0.3722710   0.7511689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.3897290    0.3409629   0.4348866
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3353535   -0.2516652   0.6470662
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.4528736   -0.0471592   0.7141339
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1744385    0.0000171   0.3184365
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.3045533    0.0871962   0.4701533
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3104131    0.2370615   0.3767125
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3654766    0.1167056   0.5441837
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3281685    0.0199724   0.5394440
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4690996    0.1033931   0.6856424
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.3586547    0.0433547   0.5700353
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2794971    0.1630240   0.3797618
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1335562    0.0733777   0.1898264
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2666667   -0.2999982   0.5863242
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0372265    0.0220818   0.0521367
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1182471    0.0883425   0.1471708
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.4986811    0.2968546   0.6425766
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4174215    0.2704124   0.5348089
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4506734    0.3229318   0.5543141
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1754524    0.1004931   0.2441651
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5791972    0.5286135   0.6243528
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3728624    0.1019972   0.5620263
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.4685664    0.0859712   0.6910145
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0763499   -0.0280575   0.1701539
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3821127    0.1963225   0.5249528
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.5024713    0.2752895   0.6584362
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.6495454    0.3626160   0.8073086
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0881352    0.0545190   0.1205563
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0440889   -0.0034428   0.0893691
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3344196    0.2286320   0.4256992
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3943914    0.3231795   0.4581108
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2821918    0.2191524   0.3401419
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1870162    0.1088132   0.2583568
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4467330    0.3942988   0.4946281
