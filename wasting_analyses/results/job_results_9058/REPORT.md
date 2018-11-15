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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        mhtcm           wasted   n_cell       n
----------  -------------------------  -----------------------------  -------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             0       21     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             1        3     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              0      121     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              1       24     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         0       52     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         1       12     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             0      101     176
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             1        4     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              0       44     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              1        2     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         0       25     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         1        0     176
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             0       38     195
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             1        7     195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              0       77     195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              1       17     195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         0       48     195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         1        8     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             0       25     167
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             1        2     167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              0       81     167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              1       12     167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         0       41     167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         1        6     167
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             0       55     269
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             1        1     269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              0      152     269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              1        4     269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         0       56     269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         1        1     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             0      163     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             1        9     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              0       25     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              1        3     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         0       25     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         1        1     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             0       73     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              0       19     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0       22     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        1     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             0       49     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             1        3     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              0       26     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              1        2     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         0       29     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         1        1     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              0       11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              1        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             0        4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              0       13      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              1        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         1        1      23
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             0     1079    1323
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             1       19    1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              0       49    1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              1        2    1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         0      169    1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         1        5    1323
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             0    10405   13670
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             1     2744   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              0       98   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              1       26   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         0      314   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         1       83   13670
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             0     6176    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             1     1080    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              0      394    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              1      104    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         0     1093    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         1      212    9059
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             0       72     748
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             1       31     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              0      360     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              1      124     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         0      127     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         1       34     748
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             0      406    1676
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             1      102    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm              0      597    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm              1      115    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         0      382    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         1       74    1676
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             0      520    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             1       96    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              0     1216    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              1      229    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         0      712    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         1      126    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             0     4694   31296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             1      484   31296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              0    16104   31296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              1     1790   31296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         0     7492   31296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         1      732   31296
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              0      151     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              1        5     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         0       60     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         1        1     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             0      120     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              0       51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             0       51     235
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              0      103     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              1        9     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         0       63     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         1        5     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             0       41     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              0      130     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         0       61     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         1        2     236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             0       58     272
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             1        0     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              0      157     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              1        0     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         0       57     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             0      182     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             1        5     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              0       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         0       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             0      147     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              0       48     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0       51     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        1     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             0      455    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             1       54    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              0      360    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              1       61    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         0      265    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         1       31    1226
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             0       64     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             1       11     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              0      170     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              1       32     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         0       77     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         1       25     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             0       91     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             1        5     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              0      289     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              1       21     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         0      122     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         1        8     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             0      120     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             1        6     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              0      302     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              1       13     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         0      135     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         1        5     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             0      133     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             1        1     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              0      397     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              1       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         0      164     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             0     1197    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             1       48    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              0      298    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       11    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0      415    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1       26    1995
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             0     1476    1877
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             1       92    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              0       58    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              1        9    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         0      236    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         1        6    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             0       36     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             1        0     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              0      140     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              1        1     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         0       53     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         1        1     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             0    12435   13030
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             1       96   13030
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              0      120   13030
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              1        1   13030
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         0      372   13030
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         1        6   13030
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             0     5476    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             1      174    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              0      416    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              1       16    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         0      988    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         1       33    7103
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             0      113     946
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             1        4     946
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              0      609     946
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              1       23     946
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         0      193     946
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         1        4     946
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             0      477    1819
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             1       64    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm              0      684    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm              1      107    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         0      437    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         1       50    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             0      526    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             1       34    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              0     1284    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              1       84    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         0      735    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         1       43    2706
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             0      506     836
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             1        7     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              0      129     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              1        2     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         0      187     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         1        5     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             0     4933   33423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             1      362   33423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              0    17832   33423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              1     1716   33423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         0     7829   33423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         1      751   33423
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              0      124     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              1       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         0       48     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         1        5     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             0       92     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              0       43     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         0       31     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             0       50     226
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             1        3     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              0       91     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              1       19     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         0       58     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         1        5     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              0      125     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              1        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         0       60     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         1        1     228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             0       46     201
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              0      113     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              1        2     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         0       39     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             0      180     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              0       26     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              1        1     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         0       27     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             0      126     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              0       39     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0       45     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        3     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             0       67     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             1        9     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              0      222     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              1       30     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         0       86     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         1       14     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             0      109     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             1       13     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              0      277     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              1       38     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         0      126     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         1       14     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             0       93     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             1        7     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              0      259     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              1       28     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         0      117     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         1       10     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        0       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             0     1191    1603
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             1      148    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              0       50    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              1       10    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         0      184    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         1       20    1603
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             0     3757    3941
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             1       40    3941
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              0       33    3941
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              1        1    3941
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         0      108    3941
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         1        2    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             0      215     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             1       46     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              0       24     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              1       10     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         0       57     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         1        8     360
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             0      121    1006
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             1        7    1006
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              0      637    1006
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              1       31    1006
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         0      202    1006
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         1        8    1006
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             0      515    1803
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             1       34    1803
24 months   ki1135781-COHORTS          INDIA                          <151 cm              0      698    1803
24 months   ki1135781-COHORTS          INDIA                          <151 cm              1       78    1803
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         0      444    1803
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         1       34    1803
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             0      479    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             1       28    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              0     1144    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              1       95    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         0      659    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         1       44    2449
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             0      340     561
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             1        5     561
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              0       90     561
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              1        2     561
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         0      121     561
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         1        3     561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             0     2126   17102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             1      479   17102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              0     7716   17102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              1     2369   17102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         0     3528   17102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         1      884   17102


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/21847c78-9147-41ae-813f-3a6d263c5873/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/21847c78-9147-41ae-813f-3a6d263c5873/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/21847c78-9147-41ae-813f-3a6d263c5873/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/21847c78-9147-41ae-813f-3a6d263c5873/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1555556   0.0493893   0.2617218
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1808511   0.1028424   0.2588597
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1428571   0.0509714   0.2347429
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2086851   0.1428507   0.2745194
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2096774   0.1270188   0.2923361
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2090680   0.1366772   0.2814588
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1488423   0.1406522   0.1570325
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2088353   0.1731333   0.2445374
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1624521   0.1424381   0.1824661
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3009709   0.2123309   0.3896109
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2561983   0.2172819   0.2951147
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2111801   0.1480929   0.2742673
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2007874   0.1659420   0.2356328
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1615169   0.1344777   0.1885561
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1622807   0.1284292   0.1961322
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1558442   0.1271965   0.1844918
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.1584775   0.1396451   0.1773099
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1503580   0.1261543   0.1745617
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0934724   0.0802251   0.1067196
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1000335   0.0933058   0.1067613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0890078   0.0798396   0.0981759
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1060904   0.0713330   0.1408477
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1448931   0.1174996   0.1722866
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1047297   0.0714672   0.1379923
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1466667   0.0664959   0.2268375
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1584158   0.1079968   0.2088348
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.2450980   0.1615114   0.3286847
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0520833   0.0075944   0.0965723
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0677419   0.0397412   0.0957427
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0615385   0.0201896   0.1028873
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0476190   0.0104028   0.0848353
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0412698   0.0192846   0.0632551
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0357143   0.0049475   0.0664811
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0385542   0.0278570   0.0492514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0355987   0.0149343   0.0562631
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0589569   0.0369677   0.0809461
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0586735   0.0470381   0.0703089
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1343284   0.0526538   0.2160029
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0247934   0.0051972   0.0443896
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0307965   0.0262913   0.0353016
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0370370   0.0192272   0.0548469
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0323213   0.0214726   0.0431699
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1182994   0.0910774   0.1455215
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1352718   0.1114309   0.1591127
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1026694   0.0757044   0.1296344
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0607143   0.0409319   0.0804967
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0614035   0.0486796   0.0741274
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0552699   0.0392102   0.0713296
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0683664   0.0574980   0.0792347
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0877839   0.0813645   0.0942034
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0875291   0.0781229   0.0969354
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1184211   0.0456943   0.1911478
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1190476   0.0790170   0.1590782
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000   0.0719122   0.2080878
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1065574   0.0517587   0.1613560
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1206349   0.0846359   0.1566339
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1000000   0.0502627   0.1497373
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0700000   0.0199434   0.1200566
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0975610   0.0631991   0.1319229
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0787402   0.0318525   0.1256278
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1105302   0.0937306   0.1273299
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1666667   0.0723384   0.2609949
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0980392   0.0572202   0.1388582
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1762452   0.1299550   0.2225355
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2941176   0.1407480   0.4474873
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1230769   0.0431000   0.2030538
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0546875   0.0152789   0.0940961
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0464072   0.0304466   0.0623678
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0380952   0.0121919   0.0639986
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0619308   0.0417632   0.0820983
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1005155   0.0793537   0.1216772
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0711297   0.0480804   0.0941790
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0552268   0.0353397   0.0751139
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0766747   0.0618562   0.0914933
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0625889   0.0446798   0.0804980
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1838772   0.1603127   0.2074416
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2349033   0.2219325   0.2478742
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2003626   0.1825795   0.2181458


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1641026   0.1119853   0.2162198
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2087052   0.1431637   0.2742466
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1541009   0.1466657   0.1615361
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2526738   0.2215120   0.2838356
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1736277   0.1554877   0.1917677
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0960506   0.0908379   0.1012634
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1190865   0.0945854   0.1435876
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1794195   0.1407385   0.2181005
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0634328   0.0427791   0.0840865
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0413081   0.0251127   0.0575035
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0426065   0.0337417   0.0514713
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0570059   0.0465142   0.0674976
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0313952   0.0273395   0.0354509
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1214953   0.1064776   0.1365130
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0846423   0.0798287   0.0894559
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1126516   0.0868319   0.1384714
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1110418   0.0956567   0.1264269
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1777778   0.1382289   0.2173267
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0457256   0.0328110   0.0586403
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0809762   0.0683807   0.0935716
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2182201   0.2083066   0.2281336


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.1626140   0.5185563   2.6066046
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          0.9183673   0.3595222   2.3458874
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          1.0047552   0.6960980   1.4502744
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.0018350   0.8477941   1.1838645
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4030641   1.1724123   1.6790926
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0914375   0.9536736   1.2491022
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8512397   0.6111334   1.1856806
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.7016630   0.4612552   1.0673721
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8044173   0.6320635   1.0237691
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8082215   0.6161475   1.0601715
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0168973   0.8169870   1.2657242
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9647972   0.7556477   1.2318354
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.0701934   0.9141306   1.2528998
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9522361   0.7985173   1.1355466
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.3657517   0.9794641   1.9043862
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.9871747   0.6859249   1.4207296
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.0801080   0.5738058   2.0331500
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.6711230   0.8774074   3.1828453
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3006452   0.5035452   3.3595353
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1815385   0.3985299   3.5029571
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.8666667   0.3365757   2.2316260
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.7500000   0.2343733   2.4000175
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9233414   0.4852258   1.7570365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5291950   0.9606797   2.4341489
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.2894225   1.2077457   4.3398665
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.4225656   0.1870667   0.9545346
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.2026394   0.7275254   1.9880290
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0495120   0.7277344   1.5135678
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.1434695   0.8557444   1.5279357
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8678773   0.6120813   1.2305735
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0113519   0.6873920   1.4879905
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9103281   0.5882989   1.4086332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.2840217   1.0769450   1.5309153
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.2802950   1.0584023   1.5487072
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0052910   0.4991295   2.0247450
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1822222   0.5401063   2.5877303
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.1321123   0.6246969   2.0516802
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.9384615   0.4588883   1.9192256
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.3937282   0.6280442   3.0929007
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.1248594   0.4435675   2.8525730
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.5078829   0.8391916   2.7094059
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8869900   0.5694124   1.3816896
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6687980   0.9307512   2.9920849
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.6983278   0.3464727   1.4075040
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8485885   0.3818756   1.8856992
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6965986   0.2586395   1.8761626
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.6230291   1.1013308   2.3918549
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1485356   0.7254844   1.8182802
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3883604   0.9225995   2.0892541
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1333062   0.7154797   1.7951355
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.2775014   1.1130923   1.4661944
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.0896549   0.9378304   1.2660581


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0085470   -0.0851832   0.1022772
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0000201   -0.0011799   0.0012201
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0052586    0.0013978   0.0091193
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0482971   -0.1299321   0.0333379
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0271597   -0.0555711   0.0012517
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0002733   -0.0256909   0.0251443
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0025782   -0.0095200   0.0146764
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0129961   -0.0089454   0.0349375
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0327529   -0.0405940   0.1060998
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0113495   -0.0298434   0.0525424
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0063110   -0.0386621   0.0260402
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0040523   -0.0030323   0.0111369
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0016676   -0.0060571   0.0027219
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0005987   -0.0015121   0.0027096
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0031959   -0.0197339   0.0261257
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0012169   -0.0187906   0.0163568
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0162759    0.0060720   0.0264799
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0054107   -0.0608227   0.0716442
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0060943   -0.0428925   0.0550810
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0175486   -0.0285912   0.0636885
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0005116   -0.0063758   0.0073989
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0015326   -0.0229595   0.0260246
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0089619   -0.0453572   0.0274334
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0190454    0.0012217   0.0368690
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0129643   -0.0052416   0.0311701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0343429    0.0130276   0.0556583


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0520833   -0.7313547    0.4810156
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0000964   -0.0056772    0.0058369
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0341241    0.0087793    0.0588209
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1911440   -0.5620710    0.0917033
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1564250   -0.3317182   -0.0042056
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0017566   -0.1792176    0.1489983
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0268424   -0.1076638    0.1450152
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1091315   -0.1004391    0.2787910
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.1825490   -0.3458650    0.5034969
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1789216   -0.8056720    0.6266377
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1527778   -1.2699462    0.4145691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0951099   -0.0861244    0.2461027
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0292533   -0.1090296    0.0447844
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0190706   -0.0504762    0.0840131
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0263046   -0.1819325    0.1978537
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0204525   -0.3629913    0.2360015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1922907    0.0628862    0.3038259
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0436941   -0.6728694    0.4533220
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0540984   -0.4977485    0.4026167
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.2004444   -0.5407729    0.5850854
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0046068   -0.0593883    0.0647362
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0086207   -0.1391700    0.1372377
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1959918   -1.3234737    0.3843715
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.2351972   -0.0163338    0.4244772
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1901168   -0.1243523    0.4166323
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1573775    0.0534686    0.2498794
