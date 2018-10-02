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

unadjusted

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
![](/tmp/bd5b989f-ea66-49a3-93f1-82b23b3bc31a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bd5b989f-ea66-49a3-93f1-82b23b3bc31a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bd5b989f-ea66-49a3-93f1-82b23b3bc31a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bd5b989f-ea66-49a3-93f1-82b23b3bc31a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                0.0666210   0.0333280   0.0999141
Birth       ki1119695-PROBIT          BELARUS       <151 cm              NA                0.0403226   0.0157940   0.0648511
Birth       ki1119695-PROBIT          BELARUS       [151-155) cm         NA                0.0403023   0.0103909   0.0702137
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                0.0555402   0.0502701   0.0608103
Birth       ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              NA                0.0803213   0.0564492   0.1041934
Birth       ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         NA                0.0643678   0.0510524   0.0776832
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                0.1262136   0.0620371   0.1903900
Birth       ki1135781-COHORTS         GUATEMALA     <151 cm              NA                0.0764463   0.0527585   0.1001341
Birth       ki1135781-COHORTS         GUATEMALA     [151-155) cm         NA                0.0621118   0.0248050   0.0994186
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                0.0551181   0.0352671   0.0749691
Birth       ki1135781-COHORTS         INDIA         <151 cm              NA                0.0491573   0.0332723   0.0650423
Birth       ki1135781-COHORTS         INDIA         [151-155) cm         NA                0.0416667   0.0233204   0.0600129
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                0.0389610   0.0236777   0.0542444
Birth       ki1135781-COHORTS         PHILIPPINES   <151 cm              NA                0.0429066   0.0324563   0.0533569
Birth       ki1135781-COHORTS         PHILIPPINES   [151-155) cm         NA                0.0417661   0.0282189   0.0553133
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0150637   0.0080325   0.0220949
Birth       kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0172125   0.0142406   0.0201844
Birth       kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0145914   0.0105181   0.0186647
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                0.0176817   0.0055394   0.0298241
6 months    ki1000304b-SAS-CompFeed   INDIA         <151 cm              NA                0.0498812   0.0325212   0.0672413
6 months    ki1000304b-SAS-CompFeed   INDIA         [151-155) cm         NA                0.0337838   0.0116352   0.0559323
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                0.0090265   0.0065602   0.0114929
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              NA                0.0185185   0.0058046   0.0312325
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         NA                0.0088149   0.0030810   0.0145488
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                0.0221811   0.0097678   0.0345945
6 months    ki1135781-COHORTS         INDIA         <151 cm              NA                0.0391909   0.0256642   0.0527176
6 months    ki1135781-COHORTS         INDIA         [151-155) cm         NA                0.0369610   0.0202001   0.0537219
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                0.0125000   0.0032964   0.0217036
6 months    ki1135781-COHORTS         PHILIPPINES   <151 cm              NA                0.0131579   0.0071184   0.0191974
6 months    ki1135781-COHORTS         PHILIPPINES   [151-155) cm         NA                0.0128535   0.0049369   0.0207701
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0120869   0.0078746   0.0162991
6 months    kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0146307   0.0117397   0.0175216
6 months    kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0125874   0.0088363   0.0163385
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0295585   0.0191719   0.0399451
24 months   kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0422410   0.0364053   0.0480766
24 months   kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0362647   0.0275844   0.0449450


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
Birth       ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              >=155 cm          1.4461817   1.0585916   1.9756832
Birth       ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         >=155 cm          1.1589401   0.9230402   1.4551286
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA     <151 cm              >=155 cm          0.6056898   0.3339253   1.0986292
Birth       ki1135781-COHORTS         GUATEMALA     [151-155) cm         >=155 cm          0.4921166   0.2240233   1.0810427
Birth       ki1135781-COHORTS         INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA         <151 cm              >=155 cm          0.8918539   0.5497310   1.4468958
Birth       ki1135781-COHORTS         INDIA         [151-155) cm         >=155 cm          0.7559524   0.4280047   1.3351819
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES   <151 cm              >=155 cm          1.1012687   0.6940081   1.7475196
Birth       ki1135781-COHORTS         PHILIPPINES   [151-155) cm         >=155 cm          1.0719968   0.6443703   1.7834112
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.1426434   0.6929027   1.8842962
Birth       kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          0.9686471   0.5655481   1.6590583
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         <151 cm              >=155 cm          2.8210609   1.4369308   5.5384603
6 months    ki1000304b-SAS-CompFeed   INDIA         [151-155) cm         >=155 cm          1.9106606   0.9555150   3.8205826
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              >=155 cm          2.0515614   0.9798815   4.2953193
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         >=155 cm          0.9765512   0.4822644   1.9774471
6 months    ki1135781-COHORTS         INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA         <151 cm              >=155 cm          1.7668563   0.9154782   3.4100005
6 months    ki1135781-COHORTS         INDIA         [151-155) cm         >=155 cm          1.6663244   0.8108437   3.4243804
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES   <151 cm              >=155 cm          1.0526316   0.4420422   2.5066230
6 months    ki1135781-COHORTS         PHILIPPINES   [151-155) cm         >=155 cm          1.0282776   0.3937471   2.6853657
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.2104579   0.8070645   1.8154786
6 months    kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          1.0414117   0.6589681   1.6458132
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.4290608   0.9848778   2.0735717
24 months   kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          1.2268783   0.7948077   1.8938297


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                -0.0010029   -0.0017368   -0.0002690
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0026339    0.0000809    0.0051870
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                -0.0459997   -0.1039976    0.0119982
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                -0.0061921   -0.0223753    0.0099911
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0027775   -0.0109095    0.0164644
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0011045   -0.0051160    0.0073249
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                 0.0149447    0.0082992    0.0215902
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0005469   -0.0006919    0.0017857
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                 0.0113538   -0.0000881    0.0227956
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0004342   -0.0077985    0.0086669
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0016163   -0.0024863    0.0057188
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0092089   -0.0004374    0.0188551


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                -0.0152838   -0.0233119   -0.0073186
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0452769    0.0005155    0.0880338
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                -0.5734628   -1.4758280    0.0000173
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                -0.1265604   -0.5097297    0.1593606
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0665450   -0.3260881    0.3429259
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0683112   -0.4108440    0.3847342
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                 0.4580550    0.1241974    0.6646454
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0571239   -0.0807771    0.1774295
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                 0.3385655   -0.0914650    0.5991666
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0335714   -0.8670734    0.4997603
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.1179485   -0.2341966    0.3696183
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.2375412   -0.0568741    0.4499407
