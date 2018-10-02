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
![](/tmp/eb99ce92-2daa-44af-8ab0-c3c6fb2a3ee4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eb99ce92-2daa-44af-8ab0-c3c6fb2a3ee4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eb99ce92-2daa-44af-8ab0-c3c6fb2a3ee4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eb99ce92-2daa-44af-8ab0-c3c6fb2a3ee4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1488763   0.1406874   0.1570652
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2078759   0.1721326   0.2436191
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1625519   0.1425688   0.1825350
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3047059   0.2168785   0.3925334
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2550232   0.2162761   0.2937704
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2118010   0.1490546   0.2745474
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2042862   0.1700352   0.2385372
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1625318   0.1357202   0.1893435
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1624766   0.1292271   0.1957261
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1608120   0.1326704   0.1889535
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.1590231   0.1403677   0.1776785
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1535465   0.1296243   0.1774686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0949133   0.0819110   0.1079157
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0999774   0.0932755   0.1066792
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0896882   0.0805733   0.0988030
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1057110   0.0715534   0.1398685
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1591494   0.1277984   0.1905004
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1132859   0.0837699   0.1428019
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1435723   0.0641330   0.2230117
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1605280   0.1103509   0.2107051
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.2439291   0.1615453   0.3263129
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0520833   0.0075944   0.0965723
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0677419   0.0397412   0.0957427
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0615385   0.0201896   0.1028873
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0476190   0.0104028   0.0848353
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0412698   0.0192846   0.0632551
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0357143   0.0049475   0.0664811
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0379529   0.0274015   0.0485043
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0371367   0.0157780   0.0584954
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0582173   0.0365620   0.0798727
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0586735   0.0470381   0.0703089
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1343284   0.0526538   0.2160029
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0247934   0.0051972   0.0443896
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0307579   0.0262563   0.0352595
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0369259   0.0197911   0.0540607
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0326534   0.0217617   0.0435450
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1167145   0.0900418   0.1433873
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1336094   0.1099901   0.1572288
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1011962   0.0746058   0.1277867
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0598436   0.0404759   0.0792114
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0611722   0.0485469   0.0737975
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0545405   0.0387324   0.0703486
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0685792   0.0580431   0.0791153
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0874129   0.0810376   0.0937882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0880615   0.0787645   0.0973586
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1184211   0.0456943   0.1911478
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1190476   0.0790170   0.1590782
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000   0.0719122   0.2080878
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1103206   0.0579356   0.1627055
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1203382   0.0846942   0.1559822
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1061437   0.0569715   0.1553158
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0700000   0.0199434   0.1200566
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0975610   0.0631991   0.1319229
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0787402   0.0318525   0.1256278
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1104964   0.0936948   0.1272981
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1547018   0.0646309   0.2447727
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0939628   0.0540462   0.1338794
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1762452   0.1299550   0.2225355
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2941176   0.1407480   0.4474873
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1230769   0.0431000   0.2030538
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0546875   0.0152789   0.0940961
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0464072   0.0304466   0.0623678
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0380952   0.0121919   0.0639986
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0632986   0.0433445   0.0832528
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0991742   0.0783778   0.1199706
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0715202   0.0486733   0.0943671
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0532492   0.0338620   0.0726364
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0752619   0.0606470   0.0898768
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0615134   0.0437887   0.0792382
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1867999   0.1636555   0.2099444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2337177   0.2208498   0.2465855
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2023619   0.1847866   0.2199372


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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3962997   1.1656684   1.6725622
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0918593   0.9543233   1.2492167
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8369487   0.6045231   1.1587367
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6950997   0.4599060   1.0505705
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.7956085   0.6291764   1.0060659
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7953382   0.6106426   1.0358971
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9888760   0.8011461   1.2205959
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9548200   0.7554395   1.2068223
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.0533542   0.9036287   1.2278883
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9449481   0.7960233   1.1217346
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.5055148   1.0733928   2.1115987
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.0716575   0.7871361   1.4590231
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1180983   0.5925744   2.1096825
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.6989980   0.8893613   3.2456934
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3006452   0.5035452   3.3595353
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1815385   0.3985299   3.5029571
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.8666667   0.3365757   2.2316260
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.7500000   0.2343733   2.4000175
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9784946   0.5165665   1.8534918
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5339358   0.9641167   2.4405332
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.2894225   1.2077457   4.3398665
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.4225656   0.1870667   0.9545346
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.2005322   0.7380279   1.9528770
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0616244   0.7375262   1.5281441
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.1447543   0.8579040   1.5275163
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8670405   0.6124490   1.2274642
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0222003   0.6963749   1.5004755
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9113834   0.5902544   1.4072230
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.2746272   1.0736112   1.5132802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.2840856   1.0668970   1.5454874
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0052910   0.4991295   2.0247450
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1822222   0.5401063   2.5877303
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.0908050   0.6233011   1.9089580
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.9621386   0.4967437   1.8635580
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.3937282   0.6280442   3.0929007
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.1248594   0.4435675   2.8525730
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.4000614   0.7670521   2.5554612
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8503692   0.5415661   1.3352530
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6687980   0.9307512   2.9920849
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.6983278   0.3464727   1.4075040
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8485885   0.3818756   1.8856992
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6965986   0.2586395   1.8761626
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.5667669   1.0742585   2.2850724
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1298861   0.7222004   1.7677123
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.4133896   0.9355457   2.1352993
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1551986   0.7261218   1.8378234
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.2511656   1.0945081   1.4302456
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.0833083   0.9364990   1.2531320


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0085470   -0.0851832    0.1022772
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0000201   -0.0011799    0.0012201
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0052246    0.0013675    0.0090818
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0520321   -0.1328130    0.0287487
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0306585   -0.0585405   -0.0027765
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0052411   -0.0302162    0.0197341
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0011373   -0.0107605    0.0130350
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0133755   -0.0078582    0.0346092
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0358472   -0.0367478    0.1084422
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0113495   -0.0298434    0.0525424
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0063110   -0.0386621    0.0260402
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0046536   -0.0023593    0.0116665
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0016676   -0.0060571    0.0027219
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0006373   -0.0014739    0.0027484
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0047808   -0.0176578    0.0272194
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0003462   -0.0175572    0.0168647
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0160631    0.0060933    0.0260329
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0054107   -0.0608227    0.0716442
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0023311   -0.0445659    0.0492280
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0175486   -0.0285912    0.0636885
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0005454   -0.0063451    0.0074358
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0015326   -0.0229595    0.0260246
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0089619   -0.0453572    0.0274334
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0176775    0.0000795    0.0352755
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0149419   -0.0028458    0.0327295
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0314202    0.0104545    0.0523858


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0520833   -0.7313547    0.4810156
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0000964   -0.0056772    0.0058369
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0339040    0.0085828    0.0585785
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2059261   -0.5719033    0.0748427
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1765761   -0.3484573   -0.0266038
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0336893   -0.2074255    0.1150480
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0118404   -0.1201314    0.1282635
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1123176   -0.0900804    0.2771359
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.1997953   -0.3247737    0.5166514
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1789216   -0.8056720    0.6266377
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1527778   -1.2699462    0.4145691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1092228   -0.0698297    0.2583080
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0292533   -0.1090296    0.0447844
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0202978   -0.0492589    0.0852435
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0393497   -0.1642091    0.2073169
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0058191   -0.3409841    0.2455749
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1897768    0.0639311    0.2987037
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0436941   -0.6728694    0.4533220
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0206927   -0.4977611    0.3596825
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.2004444   -0.5407729    0.5850854
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0049112   -0.0591143    0.0650663
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0086207   -0.1391700    0.1372377
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1959918   -1.3234737    0.3843715
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.2183052   -0.0286222    0.4059561
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.2191177   -0.0882590    0.4396764
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1439838    0.0420984    0.2350323
