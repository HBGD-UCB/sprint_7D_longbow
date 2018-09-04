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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/ff64958d-3995-4ae0-8ba5-812dea059b6b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ff64958d-3995-4ae0-8ba5-812dea059b6b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ff64958d-3995-4ae0-8ba5-812dea059b6b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ff64958d-3995-4ae0-8ba5-812dea059b6b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0259605    0.0224095   0.0295116
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0555556    0.0365489   0.0745622
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0370107    0.0271386   0.0468827
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0150943    0.0047110   0.0254777
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0314548    0.0190665   0.0438431
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0228690    0.0095062   0.0362318
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0479310    0.0386759   0.0571861
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1266297    0.1201161   0.1331434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0832483    0.0750303   0.0914664
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0470588    0.0233100   0.0708076
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1543943    0.1034638   0.2053248
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1010101    0.0609420   0.1410782
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0056180    0.0014669   0.0097691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0161812    0.0021097   0.0302527
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0158730    0.0042051   0.0275409
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0261480    0.0182474   0.0340485
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0746269    0.0116860   0.1375677
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0537190    0.0253052   0.0821329
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0134046    0.0088341   0.0179751
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0413223   -0.0063617   0.0890063
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0237467    0.0061571   0.0413363
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0342031    0.0294728   0.0389334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1064815    0.0773927   0.1355703
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0440313    0.0314520   0.0566106
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0512821    0.0112934   0.0912707
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1573927    0.1289181   0.1858673
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0812183    0.0430521   0.1193844
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0184843    0.0071311   0.0298375
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0632911    0.0463076   0.0802747
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0225410    0.0093677   0.0357142
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0196078    0.0081326   0.0310831
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0665205    0.0533131   0.0797278
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0385109    0.0249957   0.0520261
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0506823    0.0316897   0.0696748
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2061069    0.1367963   0.2754175
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0937500    0.0524959   0.1350041
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0188218    0.0128958   0.0247477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0816639    0.0759357   0.0873922
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0387389    0.0327881   0.0446898
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2380952    0.1635525   0.3126380
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5250000    0.3698822   0.6801178
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.3750000    0.2377222   0.5122778
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0779221    0.0179811   0.1378630
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2896825    0.2336111   0.3457540
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000    0.0719124   0.2080876
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0732436    0.0592792   0.0872081
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1666667    0.0723384   0.2609949
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1029412    0.0612280   0.1446544
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2446043    0.1940078   0.2952008
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.5000000    0.3317117   0.6682883
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.3787879    0.2616036   0.4959722
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2677165    0.1906721   0.3447610
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4720121    0.4339359   0.5100883
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4114833    0.3447337   0.4782328
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0815217    0.0586884   0.1043551
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2152866    0.1865261   0.2440471
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1514523    0.1194397   0.1834648
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1588235    0.1270948   0.1905523
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3670989    0.3401997   0.3939980
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2211127    0.1903856   0.2518398
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0676056    0.0414659   0.0937454
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2421053    0.1558929   0.3283176
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1574803    0.0940749   0.2208857
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0472741    0.0350028   0.0595454
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2125556    0.2000945   0.2250167
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0904568    0.0755729   0.1053407


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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.140000   1.4804624   3.093358
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.425651   1.0563984   1.923972
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.083879   0.9432426   4.603856
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.515073   0.6144022   3.736063
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.641915   2.1632157   3.226547
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.736835   1.3934801   2.164794
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          3.280879   1.7226455   6.248625
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          2.146465   0.9524608   4.837270
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          3.113211   2.2920817   4.228507
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.287348   0.9372369   1.768247
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          3.069157   1.3783850   6.833887
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.583756   0.6372270   3.936249
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          3.424051   1.7516471   6.693199
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.219467   0.5223580   2.846898
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.392544   1.8286555   6.293888
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.964057   0.9926424   3.886110
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          4.066647   2.4579202   6.728298
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.849760   1.0377665   3.297091
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          4.338805   3.1495666   5.977086
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          2.058200   1.4377593   2.946382
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.205000   1.4336777   3.391296
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.575000   0.9729343   2.549633
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          3.717593   1.6817843   8.217757
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.796667   0.7231383   4.463892
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.275510   1.2523031   4.134739
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.405462   0.8981121   2.199418
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.044118   1.3770014   3.034432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.548574   1.0673573   2.246747
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.763104   1.3076088   2.377267
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.537011   1.1046025   2.138690
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.640849   1.9363095   3.601741
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.857815   1.3080089   2.638725
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.311363   1.8683386   2.859439
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.392191   1.0914697   1.775767
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          3.581140   2.1170778   6.057673
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          2.329396   1.3329482   4.070741
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          4.496237   3.4463370   5.865980
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.913453   1.4014039   2.612597


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0033143    0.0013637   0.0052650
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0091447   -0.0005835   0.0188728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0561333    0.0469766   0.0652899
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0498467    0.0210540   0.0786394
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0039011    0.0001764   0.0076257
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0052852    0.0007603   0.0098101
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0005599   -0.0000136   0.0011335
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0057913    0.0030607   0.0085219
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0770318    0.0363083   0.1177554
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0205481    0.0090816   0.0320147
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0291366    0.0171816   0.0410916
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0342460    0.0176462   0.0508457
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0418468    0.0356206   0.0480729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0843347    0.0299895   0.1386799
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1388611    0.0769979   0.2007244
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0072807    0.0004310   0.0141304
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0464010    0.0164541   0.0763479
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1655834    0.0922985   0.2388682
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0762573    0.0542182   0.0982963
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1229761    0.0928954   0.1530567
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0485122    0.0255559   0.0714685
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1085534    0.0951102   0.1219966


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1132136    0.0453184   0.1762803
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3772707   -0.1575587   0.6649917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5394094    0.4453135   0.6175430
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5143846    0.1975358   0.7061273
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4098167   -0.0610110   0.6717128
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1681403    0.0180716   0.2952740
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0400972    0.0014302   0.0772670
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1448024    0.0757528   0.2086934
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6003391    0.1466206   0.8128278
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.5264377    0.1640075   0.7317425
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5977421    0.2960849   0.7701266
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.4032342    0.1983002   0.5557821
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6897607    0.5789195   0.7714252
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2615597    0.0751117   0.4104217
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.6405530    0.2465165   0.8285269
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0904161    0.0024699   0.1706086
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1594506    0.0510565   0.2554633
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3821449    0.1877568   0.5300116
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4833169    0.3331057   0.5996946
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4363955    0.3212995   0.5319731
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.4177843    0.2099759   0.5709307
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6966254    0.6091271   0.7645368
