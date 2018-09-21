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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        mhtcm           swasted   n_cell       n
----------  -------------------------  -----------------------------  -------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       24     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        0     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      140     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1        5     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       61     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        3     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      105     176
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        0     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       46     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        0     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       25     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     176
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              0       45     195
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              1        0     195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               0       89     195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               1        5     195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       54     195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        2     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       26     167
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        1     167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               0       91     167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               1        2     167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       46     167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        1     167
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              0       56     269
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               0      156     269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               1        0     269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          0       57     269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          1        0     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      172     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1        0     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       28     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        0     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       25     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        1     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       74     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       19     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       22     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        1     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0       51     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1        1     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0       28     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1        0     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0       29     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1        1     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0       13      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0        4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0       14      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0        4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1        0      23
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              0     1092    1323
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              1        6    1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               0       49    1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               1        2    1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          0      172    1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          1        2    1323
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              0    12273   13670
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              1      876   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               0      119   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               1        5   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          0      381   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          1       16   13670
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     6853    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      403    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      458    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       40    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1221    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       84    9059
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              0       90     748
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       13     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               0      447     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               1       37     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      151     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       10     748
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              0      480    1676
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              1       28    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm               0      677    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm               1       35    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          0      437    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          1       19    1676
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      592    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       24    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1383    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               1       62    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      803    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1       35    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     5100   31296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1       78   31296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0    17586   31296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1      308   31296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     8104   31296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      120   31296
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      156     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       60     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        1     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      121     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              0       54     235
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               0      108     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       68     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       41     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               0      132     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       63     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        0     236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              0       58     272
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               0      157     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               1        0     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          0       57     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      185     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1        2     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       31     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      147     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       48     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       52     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      500    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1        9    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      400    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1       21    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      286    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       10    1226
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       71     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1        4     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0      193     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1        9     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0       97     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1        5     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       96     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      307     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1        3     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      128     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        2     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      125     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        1     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      312     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1        3     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      139     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1        1     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      134     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      411     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      170     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1240    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        5    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      307    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        2    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      436    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        5    1995
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              0     1541    1877
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              1       27    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               0       64    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               1        3    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          0      242    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          1        0    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       36     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        0     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0      141     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1        0     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       54     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1        0     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              0    12520   13030
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              1       11   13030
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               0      121   13030
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13030
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          0      378   13030
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          1        0   13030
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     5599    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1       51    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      424    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1        8    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1012    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1        9    7103
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      117     946
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              1        0     946
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               0      628     946
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               1        4     946
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      195     946
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1        2     946
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              0      529    1819
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              1       12    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm               0      760    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm               1       31    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          0      469    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          1       18    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      553    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1        7    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1350    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               1       18    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      768    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1       10    2706
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              0      513     836
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              1        0     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               0      131     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               1        0     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      192     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          1        0     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     5231   33423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1       64   33423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0    19262   33423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1      286   33423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     8472   33423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      108   33423
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      137     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       53     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0       94     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       43     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       31     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              0       52     226
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              1        1     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               0      109     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               1        1     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       63     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        0     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               0      129     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       61     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        0     228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              0       46     201
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               0      115     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          0       39     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      180     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       27     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       27     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      126     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       40     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       48     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       75     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      245     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1        7     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0       98     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        2     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      118     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        4     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      314     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1        1     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      136     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1        4     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      100     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      284     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      126     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1        1     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              0     1316    1603
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              1       23    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               0       59    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               1        1    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          0      201    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          1        3    1603
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              0     3795    3941
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              1        2    3941
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               0       33    3941
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               1        1    3941
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          0      109    3941
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          1        1    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0      240     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1       21     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0       29     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1        5     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0       63     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1        2     360
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      128    1006
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              1        0    1006
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               0      665    1006
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               1        3    1006
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      209    1006
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1        1    1006
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              0      546    1803
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              1        3    1803
24 months   ki1135781-COHORTS          INDIA                          <151 cm               0      768    1803
24 months   ki1135781-COHORTS          INDIA                          <151 cm               1        8    1803
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          0      475    1803
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          1        3    1803
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      506    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1        1    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1221    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               1       18    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      697    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1        6    2449
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              0      345     561
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              1        0     561
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               0       91     561
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               1        1     561
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      124     561
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          1        0     561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2528   17102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1       77   17102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     9659   17102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1      426   17102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     4252   17102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      160   17102


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
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/76d7b8a8-bef4-4f68-b95b-c25a8187e0bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/76d7b8a8-bef4-4f68-b95b-c25a8187e0bd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/76d7b8a8-bef4-4f68-b95b-c25a8187e0bd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/76d7b8a8-bef4-4f68-b95b-c25a8187e0bd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                0.0666210   0.0333280   0.0999141
Birth       ki1119695-PROBIT          BELARUS       <151 cm              NA                0.0403226   0.0157940   0.0648511
Birth       ki1119695-PROBIT          BELARUS       [151-155) cm         NA                0.0403023   0.0103909   0.0702137
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                0.0555715   0.0503055   0.0608374
Birth       ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              NA                0.0826504   0.0594451   0.1058556
Birth       ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         NA                0.0653805   0.0522195   0.0785414
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                0.1264421   0.0623253   0.1905590
Birth       ki1135781-COHORTS         GUATEMALA     <151 cm              NA                0.0764700   0.0527839   0.1001562
Birth       ki1135781-COHORTS         GUATEMALA     [151-155) cm         NA                0.0619761   0.0246799   0.0992723
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                0.0547127   0.0349421   0.0744833
Birth       ki1135781-COHORTS         INDIA         <151 cm              NA                0.0494569   0.0335748   0.0653391
Birth       ki1135781-COHORTS         INDIA         [151-155) cm         NA                0.0417840   0.0234237   0.0601442
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                0.0403652   0.0253160   0.0554143
Birth       ki1135781-COHORTS         PHILIPPINES   <151 cm              NA                0.0433903   0.0329494   0.0538312
Birth       ki1135781-COHORTS         PHILIPPINES   [151-155) cm         NA                0.0426227   0.0291309   0.0561144
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0153234   0.0084695   0.0221773
Birth       kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0172234   0.0142561   0.0201906
Birth       kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0146236   0.0105946   0.0186525
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                0.0176817   0.0055394   0.0298241
6 months    ki1000304b-SAS-CompFeed   INDIA         <151 cm              NA                0.0498812   0.0325212   0.0672413
6 months    ki1000304b-SAS-CompFeed   INDIA         [151-155) cm         NA                0.0337838   0.0116352   0.0559323
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                0.0090265   0.0065602   0.0114929
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              NA                0.0185185   0.0058046   0.0312325
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         NA                0.0088149   0.0030810   0.0145488
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                0.0222058   0.0097941   0.0346176
6 months    ki1135781-COHORTS         INDIA         <151 cm              NA                0.0391610   0.0256345   0.0526876
6 months    ki1135781-COHORTS         INDIA         [151-155) cm         NA                0.0369620   0.0202016   0.0537223
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                0.0125000   0.0032964   0.0217036
6 months    ki1135781-COHORTS         PHILIPPINES   <151 cm              NA                0.0131579   0.0071184   0.0191974
6 months    ki1135781-COHORTS         PHILIPPINES   [151-155) cm         NA                0.0128535   0.0049369   0.0207701
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0120766   0.0079934   0.0161598
6 months    kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0145307   0.0116693   0.0173920
6 months    kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0128446   0.0091751   0.0165141
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0286911   0.0185435   0.0388387
24 months   kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0418498   0.0360743   0.0476253
24 months   kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0362001   0.0275239   0.0448763


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT          BELARUS       NA                   NA                0.0656181   0.0328425   0.0983937
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0581742   0.0533538   0.0629946
Birth       ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0802139   0.0607354   0.0996924
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0489260   0.0385956   0.0592564
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0161682   0.0137981   0.0185383
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0326264   0.0237765   0.0414763
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0095734   0.0073088   0.0118381
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0335349   0.0252594   0.0418104
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0137031   0.0116179   0.0157883
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0387674   0.0344208   0.0431140


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT          BELARUS       <151 cm              >=155 cm          0.6052531   0.3070955   1.1928905
Birth       ki1119695-PROBIT          BELARUS       [151-155) cm         >=155 cm          0.6049481   0.3856235   0.9490143
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              >=155 cm          1.4872810   1.1059106   2.0001661
Birth       ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         >=155 cm          1.1765117   0.9419619   1.4694648
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA     <151 cm              >=155 cm          0.6047828   0.3338709   1.0955198
Birth       ki1135781-COHORTS         GUATEMALA     [151-155) cm         >=155 cm          0.4901538   0.2231541   1.0766136
Birth       ki1135781-COHORTS         INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA         <151 cm              >=155 cm          0.9039383   0.5574745   1.4657253
Birth       ki1135781-COHORTS         INDIA         [151-155) cm         >=155 cm          0.7636975   0.4323705   1.3489214
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES   <151 cm              >=155 cm          1.0749441   0.6898323   1.6750516
Birth       ki1135781-COHORTS         PHILIPPINES   [151-155) cm         >=155 cm          1.0559266   0.6475132   1.7219433
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.1239921   0.6945166   1.8190471
Birth       kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          0.9543289   0.5672640   1.6055022
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         <151 cm              >=155 cm          2.8210609   1.4369308   5.5384603
6 months    ki1000304b-SAS-CompFeed   INDIA         [151-155) cm         >=155 cm          1.9106606   0.9555150   3.8205826
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              >=155 cm          2.0515614   0.9798815   4.2953193
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         >=155 cm          0.9765512   0.4822644   1.9774471
6 months    ki1135781-COHORTS         INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA         <151 cm              >=155 cm          1.7635487   0.9142050   3.4019764
6 months    ki1135781-COHORTS         INDIA         [151-155) cm         >=155 cm          1.6645189   0.8104382   3.4186730
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES   <151 cm              >=155 cm          1.0526316   0.4420422   2.5066230
6 months    ki1135781-COHORTS         PHILIPPINES   [151-155) cm         >=155 cm          1.0282776   0.3937471   2.6853657
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.2032058   0.8102390   1.7867620
6 months    kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          1.0635936   0.6843003   1.6531214
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.4586345   1.0034679   2.1202616
24 months   kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          1.2617193   0.8154930   1.9521143


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                -0.0010029   -0.0017368   -0.0002690
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0026027    0.0000551    0.0051504
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                -0.0462282   -0.1041678    0.0117113
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                -0.0057867   -0.0219002    0.0103268
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0013734   -0.0121110    0.0148577
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0008448   -0.0052098    0.0068994
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                 0.0149447    0.0082992    0.0215902
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0005469   -0.0006919    0.0017857
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                 0.0113291   -0.0001114    0.0227696
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0004342   -0.0077985    0.0086669
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0016265   -0.0023672    0.0056203
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0100763    0.0006329    0.0195197


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                -0.0152838   -0.0233119   -0.0073186
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0447404    0.0000791    0.0874069
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                -0.5763120   -1.4772364   -0.0030369
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                -0.1182743   -0.5000517    0.1663371
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0329039   -0.3504010    0.3074095
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0522516   -0.4089680    0.3624929
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                 0.4580550    0.1241974    0.6646454
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0571239   -0.0807771    0.1774295
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                 0.3378301   -0.0919938    0.5984694
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0335714   -0.8670734    0.4997603
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.1186973   -0.2220103    0.3644125
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.2599170   -0.0284562    0.4674320
