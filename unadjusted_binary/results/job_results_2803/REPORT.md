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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/232c20fe-dade-476b-be90-3b0cd14f0f85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/232c20fe-dade-476b-be90-3b0cd14f0f85/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/232c20fe-dade-476b-be90-3b0cd14f0f85/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/232c20fe-dade-476b-be90-3b0cd14f0f85/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1864407   0.0772703   0.2956110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3939394   0.2075396   0.5803392
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2894737   0.1467816   0.4321658
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0472175   0.0351420   0.0592931
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0980392   0.0163981   0.1796803
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0572917   0.0244077   0.0901756
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0943666   0.0878383   0.1008948
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1397849   0.1110118   0.1685581
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1088968   0.0926074   0.1251862
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0545455   0.0120825   0.0970084
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0587156   0.0389666   0.0784646
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0594595   0.0253621   0.0935568
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0622642   0.0416867   0.0828416
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1389253   0.1143771   0.1634735
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0935551   0.0675234   0.1195868
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0253968   0.0131096   0.0376840
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0854369   0.0714962   0.0993776
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0445714   0.0308959   0.0582469
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1913793   0.1749172   0.2078414
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.3788666   0.3689331   0.3888001
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2674964   0.2537812   0.2812117
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1272727   0.0390055   0.2155400
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2678571   0.1856680   0.3500463
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1176471   0.0409054   0.1943887
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1206897   0.0366973   0.2046821
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.2611465   0.1923099   0.3299831
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.2105263   0.1044954   0.3165572
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1657754   0.1123679   0.2191830
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.3225806   0.1576927   0.4874686
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.2903226   0.1302150   0.4504302
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1632653   0.1033950   0.2231356
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4375000   0.2968762   0.5781238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2500000   0.1320690   0.3679310
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2000000   0.1794916   0.2205084
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4038005   0.3400134   0.4675876
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2760943   0.2313908   0.3207977
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2702703   0.1689524   0.3715882
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.5247525   0.4557947   0.5937103
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3495146   0.2573095   0.4417196
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1666667   0.0920474   0.2412859
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3311897   0.2788342   0.3835452
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1923077   0.1244963   0.2601191
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0873016   0.0379716   0.1366316
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2025316   0.1581829   0.2468804
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1285714   0.0730775   0.1840654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1343284   0.0765507   0.1921060
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2457421   0.2040906   0.2873936
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1823529   0.1242676   0.2404383
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0690209   0.0549423   0.0830994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1488673   0.1091686   0.1885660
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1315193   0.0999683   0.1630702
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1230867   0.1068210   0.1393525
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2985075   0.1889062   0.4081087
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.2272727   0.1744595   0.2800860
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2222222   0.0861215   0.3583229
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.3333333   0.2553549   0.4113117
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2777778   0.1580548   0.3975007
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0576079   0.0452683   0.0699475
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.1570248   0.0874157   0.2266339
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1029024   0.0685785   0.1372263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1461566   0.1369625   0.1553506
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3425926   0.2978374   0.3873477
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1986301   0.1741681   0.2230921
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2051282   0.1319222   0.2783342
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4737679   0.4347266   0.5128092
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.3248731   0.2594404   0.3903058
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0924214   0.0680098   0.1168331
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2227848   0.1937601   0.2518095
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1577869   0.1254347   0.1901391
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1212121   0.0941998   0.1482244
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2748538   0.2511919   0.2985157
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1643132   0.1382866   0.1903398
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3021442   0.2623849   0.3419036
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.5572519   0.4721427   0.6423611
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.4114583   0.3418103   0.4811064
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1020139   0.0892214   0.1148065
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.3226697   0.3115319   0.3338074
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1821778   0.1702199   0.1941356
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2641509   0.1451930   0.3831089
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5272727   0.4337671   0.6207783
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3492063   0.2312277   0.4671850
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1956522   0.0807267   0.3105777
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4608696   0.3695386   0.5522006
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.3000000   0.1576325   0.4423675
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3222222   0.2538054   0.3906391
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.4074074   0.2216745   0.5931403
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.4814815   0.2926093   0.6703537
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3376623   0.2319099   0.4434148
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6468254   0.5877451   0.7059057
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.4900000   0.3919070   0.5880930
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1639344   0.0981837   0.2296852
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3853503   0.3314735   0.4392272
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.3428571   0.2641620   0.4215523
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0900000   0.0338548   0.1461452
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3240418   0.2698429   0.3782407
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2362205   0.1622750   0.3101660
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3094170   0.2846408   0.3341933
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.6500000   0.5292746   0.7707254
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4460784   0.3778448   0.5143120
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0816274   0.0502515   0.1130032
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.3714286   0.2125075   0.5303496
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1261261   0.0684823   0.1837700
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.5590551   0.4726611   0.6454491
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8472012   0.8197590   0.8746434
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7655502   0.7080851   0.8230154
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2644928   0.2276885   0.3012970
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.5757962   0.5412138   0.6103785
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.4668050   0.4222543   0.5113557
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4431373   0.4000156   0.4862589
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7220421   0.6970416   0.7470427
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5577746   0.5210016   0.5945476
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3577465   0.3078406   0.4076523
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.6210526   0.5234151   0.7186901
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.5354331   0.4486171   0.6222490
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2626763   0.2349972   0.2903554
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.5929807   0.5779213   0.6080402
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.3934871   0.3696789   0.4172953


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.1129477   1.3854771   3.222390
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.5526316   0.7224671   3.336712
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.0763305   0.8689039   4.961594
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2133556   0.6472765   2.274502
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4812974   1.1921584   1.840563
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.1539765   0.9786375   1.360730
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.0764526   0.4609940   2.513591
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0900901   0.4145183   2.866692
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.2312244   1.5338659   3.245631
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.5025515   0.9754475   2.314487
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.3640777   2.0189370   5.605434
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.7550000   0.9896269   3.112309
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.9796635   1.8098022   2.165467
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3977291   1.2656608   1.543578
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.6796875   1.6455353   4.363762
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5312500   0.8424783   2.783130
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.0190024   1.6856314   2.418305
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.3804714   1.0965540   1.737900
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.9415842   1.3050780   2.888524
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2932039   0.8176887   2.045248
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.9871383   1.2360129   3.194723
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1538462   0.6525926   2.040110
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.3199075   1.2655792   4.252575
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.4727270   0.7233041   2.998635
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.8294134   1.1522106   2.904637
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.3575163   0.7948747   2.318417
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.1568450   1.5417360   3.017365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.9055002   1.3907651   2.610743
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.4251798   1.6416209   3.582738
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.8464437   1.4133119   2.412316
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.5000000   0.7786878   2.889476
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2500000   0.5911037   2.643360
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.7257503   1.8078048   4.109799
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.7862541   1.3555978   2.353725
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.3440111   2.0276354   2.709751
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3590231   1.1835008   1.560577
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          2.3096184   1.6012947   3.331265
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.5837563   1.0512797   2.385934
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.4105315   1.7955845   3.236084
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.7072540   1.2220263   2.385150
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.2675439   1.7856728   2.879450
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3555841   1.0313038   1.781830
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.8443241   1.5075906   2.256270
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.3617944   1.0989990   1.687430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          3.1629961   2.7842755   3.593231
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.7858126   1.5518706   2.055021
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.9961039   1.2302255   3.238781
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.3219955   0.7528877   2.321292
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          2.3555556   1.2672529   4.378480
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.5333333   0.7205799   3.262804
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.2643678   0.7646493   2.090666
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.4942529   0.9565477   2.334219
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.9155983   1.3823607   2.654529
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.4511538   1.0006551   2.104469
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.3506369   1.5371599   3.594613
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.0914286   1.3174988   3.319983
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          3.6004642   1.8873878   6.868404
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          2.6246716   1.3060213   5.274724
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.1007246   1.7160499   2.571629
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.4416738   1.2130650   1.713365
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          4.5502948   2.4604886   8.415069
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.5451451   0.8162635   2.924881
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.5154162   1.2940750   1.774616
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3693645   1.1532049   1.626042
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.1769828   1.8708281   2.533239
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.7649065   1.4908757   2.089306
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.6293871   1.4694931   1.806679
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2586949   1.1191116   1.415688
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.7360133   1.4069294   2.142070
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.4966830   1.2084736   1.853628
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.2574578   2.0314519   2.508608
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4979923   1.3278904   1.689884


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0827901    0.0314027   0.1341775
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0031673   -0.0025322   0.0088669
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0047335    0.0015442   0.0079227
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0037879   -0.0359911   0.0435668
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0414563    0.0221731   0.0607394
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0359147    0.0232215   0.0486078
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1317165    0.1160559   0.1473771
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.0642166   -0.0175503   0.1459836
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0998986    0.0193802   0.1804169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0350278    0.0025639   0.0674917
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0715525    0.0254684   0.1176366
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0882736    0.0642729   0.1122743
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1571704    0.0636619   0.2506789
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1014898    0.0308943   0.1720852
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0724922    0.0248741   0.1201104
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0754619    0.0208824   0.1300413
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0261695    0.0153717   0.0369673
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0196943    0.0111409   0.0282477
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0808081   -0.0467748   0.2083909
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0022402    0.0012062   0.0032741
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0194342    0.0144886   0.0243799
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2042037    0.1333852   0.2750222
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0741536    0.0510279   0.0972793
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0900139    0.0642500   0.1157778
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0650806    0.0384393   0.0917219
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1495618    0.1367956   0.1623280
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1517783    0.0437902   0.2597663
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1725070    0.0646625   0.2803516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0282051   -0.0069008   0.0633110
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2171162    0.1202355   0.3139969
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1641906    0.1012250   0.2271562
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1668093    0.1088878   0.2247309
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0301585    0.0189086   0.0414084
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0037659    0.0004786   0.0070532
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2343250    0.1556190   0.3130310
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1879536    0.1554588   0.2204485
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1736317    0.1354838   0.2117795
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0824615    0.0497603   0.1151627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2284076    0.2032904   0.2535248


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3075061    0.0542044   0.4929688
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0628630   -0.0564656   0.1687134
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0477645    0.0151372   0.0793110
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0649351   -0.9385216   0.5489623
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3996924    0.1913390   0.5543630
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5857737    0.3426202   0.7389889
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4076701    0.3575605   0.4538713
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3353535   -0.2516652   0.6470662
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.4528736   -0.0471592   0.7141339
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1744385    0.0000171   0.3184365
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.3047150    0.0872327   0.4703784
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3062147    0.2345096   0.3712030
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3677010    0.1066562   0.5524657
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3784722    0.0551128   0.5911716
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4536609    0.0738931   0.6776977
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.3597015    0.0437494   0.5712607
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2749176    0.1582939   0.3753824
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1379336    0.0774052   0.1944909
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2666667   -0.2999982   0.5863242
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0374308    0.0222026   0.0524219
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1173630    0.0874091   0.1463338
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.4988707    0.2940709   0.6442553
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4451663    0.2950895   0.5632915
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4261496    0.2936545   0.5337915
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1772228    0.1014651   0.2465933
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5945001    0.5432313   0.6400143
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3649137    0.0450610   0.5776331
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.4685664    0.0859712   0.6910145
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0804878   -0.0253447   0.1753967
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3913565    0.1869290   0.5443856
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.5003903    0.2731942   0.6565660
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.6495454    0.3626160   0.8073086
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0888123    0.0551096   0.1213129
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0441006   -0.0036655   0.0895935
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2953502    0.1866000   0.3895607
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4154164    0.3391158   0.4829079
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2815182    0.2160369   0.3415300
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1873239    0.1089287   0.2588221
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4651091    0.4105567   0.5146127
