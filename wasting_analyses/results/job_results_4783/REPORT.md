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
![](/tmp/a767cbf7-2f39-4a40-8e80-3a4b86693fe3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a767cbf7-2f39-4a40-8e80-3a4b86693fe3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a767cbf7-2f39-4a40-8e80-3a4b86693fe3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a767cbf7-2f39-4a40-8e80-3a4b86693fe3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1488751   0.1406918   0.1570584
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2090851   0.1738322   0.2443380
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1626128   0.1427542   0.1824714
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3034597   0.2147388   0.3921806
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2552599   0.2164334   0.2940864
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2124017   0.1492615   0.2755420
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2035721   0.1688639   0.2382804
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1619591   0.1349630   0.1889553
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1630634   0.1293027   0.1968242
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1605428   0.1324776   0.1886080
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.1589360   0.1403066   0.1775654
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1535278   0.1296844   0.1773711
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0949133   0.0819109   0.1079156
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0999774   0.0932755   0.1066793
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0896881   0.0805732   0.0988029
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1057110   0.0715534   0.1398685
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1591494   0.1277984   0.1905004
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1132859   0.0837699   0.1428019
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1436697   0.0636510   0.2236884
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1599889   0.1097035   0.2102743
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.2442591   0.1614842   0.3270340
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0520833   0.0075944   0.0965723
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0677419   0.0397412   0.0957427
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0615385   0.0201896   0.1028873
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0476190   0.0104028   0.0848353
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0412698   0.0192846   0.0632551
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0357143   0.0049475   0.0664811
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0379516   0.0274003   0.0485029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0371508   0.0157927   0.0585088
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0582183   0.0365632   0.0798733
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0586735   0.0470381   0.0703089
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1343284   0.0526538   0.2160029
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0247934   0.0051972   0.0443896
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0307579   0.0262563   0.0352595
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0369256   0.0197907   0.0540604
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0326533   0.0217617   0.0435448
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1166771   0.0900048   0.1433494
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1336466   0.1100236   0.1572697
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1011932   0.0745912   0.1277953
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0598572   0.0406059   0.0791084
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0611087   0.0485032   0.0737141
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0543976   0.0386559   0.0701392
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0685789   0.0580429   0.0791150
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0874129   0.0810376   0.0937882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0880616   0.0787645   0.0973586
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1184211   0.0456943   0.1911478
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1190476   0.0790170   0.1590782
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000   0.0719122   0.2080878
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1098040   0.0563133   0.1632946
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1209344   0.0852412   0.1566277
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1046384   0.0548765   0.1544003
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0700000   0.0199434   0.1200566
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0975610   0.0631991   0.1319229
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0787402   0.0318525   0.1256278
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1104671   0.0936674   0.1272668
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1529726   0.0585257   0.2474194
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0951656   0.0544358   0.1358954
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1762452   0.1299550   0.2225355
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2941176   0.1407480   0.4474873
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1230769   0.0431000   0.2030538
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0546875   0.0152789   0.0940961
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0464072   0.0304466   0.0623678
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0380952   0.0121919   0.0639986
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0634461   0.0435874   0.0833047
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0989512   0.0783072   0.1195952
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0717684   0.0489822   0.0945546
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0531106   0.0337039   0.0725172
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0753378   0.0607159   0.0899597
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0614530   0.0437242   0.0791818
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1867396   0.1636062   0.2098730
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2339155   0.2210192   0.2468117
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2021800   0.1846087   0.2197514


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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4044328   1.1761937   1.6769615
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0922765   0.9554551   1.2486907
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8411658   0.6051422   1.1692456
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6999339   0.4612639   1.0620979
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.7955860   0.6269119   1.0096428
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8010106   0.6126545   1.0472754
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9899913   0.8022779   1.2216252
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9563042   0.7570281   1.2080368
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.0533552   0.9036293   1.2278899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9449479   0.7960227   1.1217351
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.5055148   1.0733928   2.1115987
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.0716575   0.7871361   1.4590231
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1135881   0.5877767   2.1097784
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.7001435   0.8865284   3.2604574
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3006452   0.5035452   3.3595353
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1815385   0.3985299   3.5029571
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.8666667   0.3365757   2.2316260
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.7500000   0.2343733   2.4000175
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9788997   0.5168883   1.8538717
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5340146   0.9641697   2.4406501
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.2894225   1.2077457   4.3398665
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.4225656   0.1870667   0.9545346
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.2005217   0.7380178   1.9528693
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0616216   0.7375259   1.5281367
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.1454404   0.8583173   1.5286115
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8672930   0.6124801   1.2281169
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0209087   0.6967192   1.4959462
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9087896   0.5896412   1.4006798
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.2746320   1.0736150   1.5132862
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.2840904   1.0669008   1.5454935
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0052910   0.4991295   2.0247450
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1822222   0.5401063   2.5877303
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.1013665   0.6230441   1.9469059
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.9529567   0.4825470   1.8819443
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.3937282   0.6280442   3.0929007
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.1248594   0.4435675   2.8525730
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.3847794   0.7332332   2.6152856
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8614836   0.5470003   1.3567706
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6687980   0.9307512   2.9920849
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.6983278   0.3464727   1.4075040
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8485885   0.3818756   1.8856992
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6965986   0.2586395   1.8761626
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.5596116   1.0719812   2.2690587
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1311719   0.7251642   1.7644967
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.4185091   0.9378663   2.1454745
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1570768   0.7263845   1.8431380
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.2526292   1.0958147   1.4318844
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.0826844   0.9358178   1.2526002


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0085470   -0.0851832    0.1022772
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0000201   -0.0011799    0.0012201
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0052258    0.0013719    0.0090797
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0507859   -0.1324444    0.0308726
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0299444   -0.0582337   -0.0016552
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0049719   -0.0298678    0.0199239
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0011374   -0.0107604    0.0130351
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0133755   -0.0078582    0.0346092
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0357498   -0.0373547    0.1088544
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0113495   -0.0298434    0.0525424
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0063110   -0.0386621    0.0260402
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0046549   -0.0023579    0.0116678
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0016676   -0.0060571    0.0027219
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0006372   -0.0014739    0.0027484
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0048183   -0.0176273    0.0272638
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0003597   -0.0174744    0.0167549
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0160634    0.0060936    0.0260332
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0054107   -0.0608227    0.0716442
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0028477   -0.0450068    0.0507022
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0175486   -0.0285912    0.0636885
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0005747   -0.0063139    0.0074632
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0015326   -0.0229595    0.0260246
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0089619   -0.0453572    0.0274334
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0175301    0.0000044    0.0350558
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0150805   -0.0027239    0.0328850
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0314805    0.0105347    0.0524263


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0520833   -0.7313547    0.4810156
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0000964   -0.0056772    0.0058369
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0339114    0.0086137    0.0585635
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2009939   -0.5715949    0.0822150
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1724636   -0.3468832   -0.0206310
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0319593   -0.2051208    0.1163209
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0118412   -0.1201308    0.1282645
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1123176   -0.0900804    0.2771359
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.1992528   -0.3301664    0.5179579
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1789216   -0.8056720    0.6266377
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1527778   -1.2699462    0.4145691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1092544   -0.0697979    0.2583386
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0292533   -0.1090296    0.0447844
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0202977   -0.0492590    0.0852434
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0396579   -0.1639739    0.2076653
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0060463   -0.3390485    0.2441430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1897793    0.0639338    0.2987061
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0436941   -0.6728694    0.4533220
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0252787   -0.5068553    0.3694938
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.2004444   -0.5407729    0.5850854
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0051753   -0.0588329    0.0653141
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0086207   -0.1391700    0.1372377
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1959918   -1.3234737    0.3843715
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.2164847   -0.0290456    0.4034314
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.2211511   -0.0867369    0.4418100
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1442603    0.0424678    0.2352315
