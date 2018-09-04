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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        mhtcm           sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               0       24     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               1        1     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      150     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1        6     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           0       65     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           1        0     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm               0      104     184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm               1        3     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm                0       46     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm                1        3     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           0       26     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           1        2     184
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm               0       45     198
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm               1        1     198
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm                0       91     198
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm                1        4     198
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm           0       55     198
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm           1        2     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm               0       27     172
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm               1        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm                0       93     172
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm                1        3     172
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm           0       46     172
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm           1        3     172
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm               0       57     276
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm               1        1     276
Birth       ki0047075b-MAL-ED          PERU                           <151 cm                0      155     276
Birth       ki0047075b-MAL-ED          PERU                           <151 cm                1        6     276
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm           0       57     276
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm           1        0     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0      173     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0       28     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        1     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       26     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        0     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       73     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        3     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       19     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1        2     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       23     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        1     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               0       55     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               1        4     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm                0       32     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm                1        1     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           0       33     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           1        5     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm                0       15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                0       17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           1        1      27
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm               0     1169    1429
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm               1       17    1429
Birth       ki1101329-Keneba           GAMBIA                         <151 cm                0       48    1429
Birth       ki1101329-Keneba           GAMBIA                         <151 cm                1        3    1429
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm           0      186    1429
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm           1        6    1429
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm               0    13201   13729
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm               1        5   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm                0      125   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm                1        0   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm           0      398   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm           1        0   13729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0     7504    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1      200    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0      527    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       31    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0     1353    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       52    9667
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm               0      110     840
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm               1        0     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm                0      538     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm                1        7     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm           0      181     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm           1        4     840
Birth       ki1135781-COHORTS          INDIA                          >=155 cm               0      522    1774
Birth       ki1135781-COHORTS          INDIA                          >=155 cm               1        8    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm                0      739    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm                1       24    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm           0      470    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm           1       11    1774
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm               0      628    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm               1        2    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm                0     1516    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm                1       29    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           0      860    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           1       15    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               0     5522   39072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               1      278   39072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                0    20498   39072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                1     2972   39072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           0     8986   39072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           1      816   39072
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               0       24     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      148     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1        8     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           0       61     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm               0      121     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                0       51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm               0       55     235
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm               1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                0      104     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                1        8     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm           0       67     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm           1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm               0       41     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                0      131     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm           0       63     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm           1        0     236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm               0       57     272
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm               1        1     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm                0      147     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm                1       10     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm           0       56     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm           1        1     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0      184     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0       29     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        2     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0      142     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       41     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1        7     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       50     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        2     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               0      486    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               1       24    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                0      356    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                1       65    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           0      267    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           1       30    1228
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm               0       72     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm               1        2     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                0      163     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                1       39     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm           0       91     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm           1       12     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               0       94     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                0      280     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                1       31     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           0      128     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           1        2     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               0      125     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               1        1     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                0      304     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                1       12     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           0      139     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           1        1     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               0      133     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               1        1     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                0      394     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                1       17     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           0      165     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           1        5     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               0     1239    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        7    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                0      304    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                1        5    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0      434    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        7    1996
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm               0     1527    1877
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm               1       41    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm                0       62    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm                1        5    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm           0      229    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm           1       13    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm               0       34     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm               1        2     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                0      125     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                1       16     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm           0       50     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm           1        4     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm               0    12365   13033
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm               1      168   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm                0      116   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm                1        5   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm           0      370   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm           1        9   13033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0     5478    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1      194    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0      386    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       46    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0      977    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       45    7126
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm               0      111     943
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm               1        6     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                0      530     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                1       99     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm           0      181     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm           1       16     943
6 months    ki1135781-COHORTS          INDIA                          >=155 cm               0      531    1819
6 months    ki1135781-COHORTS          INDIA                          >=155 cm               1       10    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm                0      740    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm                1       50    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm           0      477    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm           1       11    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm               0      550    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm               1       11    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                0     1277    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                1       91    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           0      749    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           1       30    2708
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm               0      487     836
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm               1       26     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                0      104     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                1       27     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm           0      174     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm           1       18     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               0     5213   33477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               1      100   33477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                0    17970   33477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                1     1598   33477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           0     8263   33477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           1      333   33477
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      115     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1       22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           0       50     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           1        3     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm               0       95     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                0       43     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           0       30     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm               0       50     226
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm               1        3     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                0       88     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                1       22     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm           0       60     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm           1        3     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm               0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                0      122     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                1        7     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm           0       61     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm           1        0     228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm               0       44     201
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm               1        2     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm                0      103     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm                1       12     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm           0       39     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm           1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0      163     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1       17     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0       23     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        4     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       22     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        5     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       96     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1       30     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       19     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       30     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1       18     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               0       71     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               1        6     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                0      179     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                1       73     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           0       86     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           1       14     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               0      118     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               1        4     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                0      277     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                1       37     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           0      132     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           1        8     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               0       99     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                0      255     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                1       32     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           0      125     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           1        2     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        0       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm               0     1240    1602
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm               1       98    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm                0       50    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm                1       10    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm           0      183    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm           1       21    1602
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm               0     3801    4005
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm               1       58    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm                0       30    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm                1        5    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm           0      109    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm           1        2    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0      210     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1       68     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0       17     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       17     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0       41     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       25     378
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm               0       93     997
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm               1       34     997
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                0      349     997
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                1      312     997
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm           0      123     997
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm           1       86     997
24 months   ki1135781-COHORTS          INDIA                          >=155 cm               0      507    1819
24 months   ki1135781-COHORTS          INDIA                          >=155 cm               1       45    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm                0      616    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm                1      169    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm           0      409    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm           1       73    1819
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm               0      429    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm               1       81    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                0      781    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                1      453    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           0      546    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           1      155    2445
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm               0      331     577
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm               1       24     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                0       72     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                1       23     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm           0      107     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm           1       20     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               0     2499   17160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               1      124   17160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                0     7965   17160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                1     2150   17160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           0     4022   17160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           1      400   17160


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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/68a37078-50d1-49e7-853d-5d234cd8d54d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/68a37078-50d1-49e7-853d-5d234cd8d54d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/68a37078-50d1-49e7-853d-5d234cd8d54d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/68a37078-50d1-49e7-853d-5d234cd8d54d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0259546    0.0224057   0.0295035
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0566482    0.0378571   0.0754392
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0373712    0.0275640   0.0471783
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0150943    0.0047110   0.0254777
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0314548    0.0190665   0.0438431
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0228690    0.0095062   0.0362318
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0499621    0.0407221   0.0592021
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1256598    0.1191948   0.1321247
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0844241    0.0762339   0.0926144
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0468349    0.0231475   0.0705223
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1513422    0.1010826   0.2016018
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1015994    0.0618077   0.1413910
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0056180    0.0014669   0.0097691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0161812    0.0021097   0.0302527
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0158730    0.0042051   0.0275409
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0261480    0.0182474   0.0340485
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0746269    0.0116860   0.1375677
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0537190    0.0253052   0.0821329
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0134046    0.0088341   0.0179751
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0413223   -0.0063617   0.0890063
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0237467    0.0061571   0.0413363
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0342067    0.0294831   0.0389303
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1062038    0.0779673   0.1344403
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0439542    0.0315860   0.0563223
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0512821    0.0112934   0.0912707
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1573927    0.1289181   0.1858673
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0812183    0.0430521   0.1193844
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0188509    0.0075020   0.0301998
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0624832    0.0455216   0.0794449
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0225541    0.0093847   0.0357235
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0178550    0.0072600   0.0284500
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0663821    0.0532414   0.0795227
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0384883    0.0251189   0.0518578
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0510329    0.0321080   0.0699579
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2168260    0.1485903   0.2850616
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1002830    0.0594340   0.1411321
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0197460    0.0138658   0.0256262
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0807970    0.0751127   0.0864814
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0395956    0.0335820   0.0456092
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2455478    0.1715154   0.3195802
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5912039    0.4435120   0.7388957
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4166811    0.2866591   0.5467031
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0779221    0.0179811   0.1378630
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2896825    0.2336111   0.3457540
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000    0.0719124   0.2080876
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0735454    0.0595840   0.0875069
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1537020    0.0645765   0.2428276
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0989940    0.0577430   0.1402450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2446284    0.1940329   0.2952239
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.4997509    0.3314712   0.6680305
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.3788101    0.2616834   0.4959368
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2591101    0.1871642   0.3310560
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4711112    0.4332250   0.5089974
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4036608    0.3386891   0.4686326
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0833302    0.0612098   0.1054506
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2075660    0.1795889   0.2355432
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1473854    0.1164383   0.1783326
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1558388    0.1251719   0.1865056
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3608181    0.3342792   0.3873570
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2181698    0.1879663   0.2483733
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0671783    0.0410935   0.0932631
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2407128    0.1577100   0.3237156
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1613084    0.0990012   0.2236155
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0468287    0.0349517   0.0587057
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2098558    0.1974785   0.2222331
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0901441    0.0753875   0.1049008


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0292749   0.0259142   0.0326355
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0242390   0.0170805   0.0313975
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1040643   0.0993882   0.1087404
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0969055   0.0737418   0.1200693
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0095190   0.0052582   0.0137799
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0314331   0.0235374   0.0393288
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0139646   0.0092016   0.0187275
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0399944   0.0354446   0.0445442
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1283139   0.1069569   0.1496709
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0390324   0.0301298   0.0479351
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0849282   0.0660197   0.1038368
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606685   0.0568073   0.0645297
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3224299   0.2596598   0.3852000
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0805243   0.0671957   0.0938530
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2910053   0.2451542   0.3368563
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4332999   0.4025255   0.4640743
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1577790   0.1410223   0.1745357
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1161179   0.0899551   0.1422806
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1558275   0.1470700   0.1645850


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.182584   1.5246992   3.124336
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.439865   1.0711606   1.935480
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.083879   0.9432426   4.603856
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.515073   0.6144022   3.736063
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.515102   2.0755270   3.047774
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.689764   1.3665833   2.089372
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          3.231396   1.6953965   6.158986
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          2.169308   0.9653664   4.874727
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.880259   0.9201086   9.016209
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.825397   0.9963933   8.011763
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.854023   1.1651317   6.991008
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          2.054425   1.1172215   3.777819
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          3.082694   0.9585581   9.913850
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.771532   0.9357442   3.353829
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          3.104769   2.3012828   4.188790
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.284959   0.9393920   1.757648
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          3.069157   1.3783850   6.833887
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.583756   0.6372270   3.936249
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          3.314606   1.7128089   6.414385
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.196449   0.5172648   2.767421
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.717835   1.9895610   6.947412
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          2.155601   1.0844326   4.284837
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          4.248745   2.6140375   6.905728
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.965065   1.1344114   3.403950
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          4.091814   3.0204755   5.543149
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          2.005245   1.4232597   2.825211
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.407694   1.6323916   3.551225
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.696945   1.1005295   2.616579
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          3.717593   1.6817843   8.217757
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.796667   0.7231383   4.463892
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.089892   1.1354343   3.846677
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.346025   0.8515239   2.127695
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.042898   1.3760045   3.033008
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.548513   1.0674955   2.246278
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.818189   1.3630577   2.425292
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.557874   1.1319203   2.144119
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.490886   1.8523941   3.349457
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.768692   1.2629050   2.477043
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.315330   1.8770493   2.855946
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.399971   1.1007803   1.780482
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          3.583191   2.1336133   6.017611
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          2.401197   1.3887198   4.151842
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          4.481348   3.4569815   5.809254
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.924975   1.4176502   2.613853


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0033202    0.0013714   0.0052691
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0091447   -0.0005835   0.0188728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0541022    0.0449393   0.0632651
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0500706    0.0213027   0.0788385
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0039011    0.0001764   0.0076257
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0052852    0.0007603   0.0098101
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0005599   -0.0000136   0.0011335
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0057877    0.0030633   0.0085122
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0770318    0.0363083   0.1177554
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0201816    0.0087242   0.0316389
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0308894    0.0195819   0.0421970
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0338953    0.0173658   0.0504248
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0409225    0.0347231   0.0471219
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0768821    0.0231966   0.1305677
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1388611    0.0769979   0.2007244
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0069789    0.0001281   0.0138297
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0463769    0.0164341   0.0763197
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1741898    0.1056407   0.2427390
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0744488    0.0530691   0.0958286
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1259608    0.0967575   0.1551641
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0489395    0.0260661   0.0718130
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1089988    0.0959171   0.1220805


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1134154    0.0455959   0.1764157
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3772707   -0.1575587   0.6649917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5198920    0.4262593   0.5982442
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5166951    0.2004357   0.7078614
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4098167   -0.0610110   0.6717128
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1681403    0.0180716   0.2952740
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0400972    0.0014302   0.0772670
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1447134    0.0758568   0.2084395
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6003391    0.1466206   0.8128278
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.5170459    0.1571400   0.7232700
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.6337013    0.3538594   0.7923444
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3991050    0.1957005   0.5510693
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6745262    0.5654749   0.7562093
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2384460    0.0558067   0.3857567
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.6405530    0.2465165   0.8285269
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0866682   -0.0012597   0.1668746
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1593680    0.0509902   0.2553689
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.4020076    0.2216909   0.5405490
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4718550    0.3281229   0.5848390
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4469873    0.3359299   0.5394717
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.4214642    0.2143630   0.5739716
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6994836    0.6152183   0.7652953
