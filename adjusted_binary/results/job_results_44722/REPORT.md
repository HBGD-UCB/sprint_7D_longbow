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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        mhtcm           ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       23     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        2     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0      149     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1       14     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       61     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1        5     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      126     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1        4     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       53     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1        0     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       39     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        0     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       52     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1        3     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    0      100     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    1       15     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       66     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               1        6     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       40     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    0      127     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    1        6     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       62     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1        2     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   0       60     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   1        0     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0      167     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       60     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1        1     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0      196     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0       30     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1        3     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       31     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        2     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      151     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       49     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       49     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        3     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      162     410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1       18     410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0      108     410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1       25     410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0       82     410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1       15     410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       13     103
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1        4     103
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0       47     103
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1       10     103
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0       23     103
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1        6     103
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0       98     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1       18     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0      301     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1       61     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0      127     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1       19     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0      131     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1        7     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      350     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1       23     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0      147     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1       11     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0      130     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1       10     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      392     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1       43     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0      167     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1       13     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1402    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       88    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      326    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       32    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      475    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       36    2359
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   0     1692    2433
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   1      322    2433
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    0       79    2433
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    1       14    2433
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               0      281    2433
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               1       45    2433
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       36     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1        0     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0      141     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1        2     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       56     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1        0     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0      675     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1       36     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       26     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1        0     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       40     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1        2     779
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0     5842    6696
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1      603    6696
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0       57    6696
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1        2    6696
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      183    6696
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1        9    6696
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     7081    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1      738    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      503    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1       71    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1306    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      131    9830
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0       66     617
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1       10     617
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      375     617
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    1       40     617
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0      115     617
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1       11     617
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   0      514    1905
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   1       57    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    0      736    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    1       87    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               0      458    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               1       53    1905
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      549    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1       80    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0     1346    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1      194    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      768    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1      108    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      510     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   1        4     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    0      129     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    1        2     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               0      189     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               1        3     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     1910   13259
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      141   13259
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     7360   13259
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1      517   13259
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     3126   13259
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1      205   13259
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       23     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        2     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0      153     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1       10     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       62     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1        4     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      128     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1        2     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       53     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1        0     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       39     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        0     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       52     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   1        3     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    0      103     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    1       12     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       67     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm               1        5     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       40     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        1     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                    0      129     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                    1        4     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       62     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1        2     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                   0       60     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                   1        0     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                    0      168     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                    1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm               0       61     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm               1        0     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0      201     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0       33     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       32     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        1     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      152     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       51     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        0     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       50     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        2     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      174     409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1        5     409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0      124     409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1        9     409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0       90     409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1        7     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       17     103
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1        0     103
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0       55     103
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1        2     103
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0       28     103
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1        1     103
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0      107     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1        9     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0      320     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1       40     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0      139     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1        7     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0      133     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1        5     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      356     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1       17     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0      152     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1        6     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0      131     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1        9     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      406     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1       29     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0      168     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1       12     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1444    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       46    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      344    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       14    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      492    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       19    2359
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                   0     1678    2133
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                   1       96    2133
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                    0       68    2133
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                    1        8    2133
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm               0      266    2133
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm               1       17    2133
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       34     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1        0     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0      131     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1        1     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       53     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1        0     219
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                   0     5847    6696
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                   1      598    6696
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                    0       57    6696
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                    1        2    6696
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm               0      183    6696
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm               1        9    6696
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     7274    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1      514    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      521    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1       49    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1330    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      103    9791
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0       53     499
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1        8     499
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      313     499
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                    1       26     499
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0       93     499
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1        6     499
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                   0      511    1863
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                   1       44    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                    0      750    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                    1       57    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm               0      465    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm               1       36    1863
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      577    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1       52    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0     1441    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1       98    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      815    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1       61    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      161     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                   1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                    0       38     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                    1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm               0       72     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm               1        0     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     1943   13210
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      101   13210
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     7503   13210
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1      349   13210
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     3169   13210
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1      145   13210
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       24     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0      153     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1        4     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       58     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1        1     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      118     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       50     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       37     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       55     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1        0     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    0      107     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    1        4     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       67     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               1        1     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       41     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    0      129     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       63     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   0       58     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0      154     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       55     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0      186     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1        5     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0       29     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1        3     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       30     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        1     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      146     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       44     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        2     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       51     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        1     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      159     382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1       14     382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0      102     382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1       18     382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0       79     382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1       10     382
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       13     102
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1        4     102
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0       49     102
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1        8     102
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0       23     102
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1        5     102
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0       88     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1       10     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0      291     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1       25     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0      115     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1       12     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0      127     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1        2     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      330     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1        6     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0      144     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1        5     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0      136     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1        2     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      403     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1       16     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0      171     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1        2     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1201    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       45    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      284    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       19    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      419    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       17    1985
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   0     1683    2326
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   1      240    2326
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    0       83    2326
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    1        7    2326
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               0      282    2326
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               1       31    2326
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       36     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1        0     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0      135     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1        1     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       53     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1        0     225
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0      675     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1       36     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       26     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1        0     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       40     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1        2     779
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0     6438    6694
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1        5    6694
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0       59    6694
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1        0    6694
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      192    6694
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1        0    6694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     6580    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1      234    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      493    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1       25    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1220    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1       34    8586
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0       66     562
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1        2     562
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      367     562
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    1       14     562
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0      108     562
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1        5     562
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   0      535    1843
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   1       13    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    0      767    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    1       32    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               0      479    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               1       17    1843
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      548    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1       33    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0     1317    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1      105    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      756    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1       50    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      502     823
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   1        4     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    0      128     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    1        2     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               0      184     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               1        3     823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     1309    8529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1       40    8529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     4824    8529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1      175    8529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     2117    8529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1       64    8529


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/f81512b7-cc2e-452e-912c-dd72cb30319d/6041647b-31d2-4f35-96e5-46b7f2fa79f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f81512b7-cc2e-452e-912c-dd72cb30319d/6041647b-31d2-4f35-96e5-46b7f2fa79f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f81512b7-cc2e-452e-912c-dd72cb30319d/6041647b-31d2-4f35-96e5-46b7f2fa79f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f81512b7-cc2e-452e-912c-dd72cb30319d/6041647b-31d2-4f35-96e5-46b7f2fa79f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1000000   0.0380354   0.1619646
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1879699   0.0855034   0.2904364
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1546392   0.1226943   0.1865841
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1551724   0.0892309   0.2211139
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1685083   0.1299177   0.2070989
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1301370   0.0755177   0.1847562
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0507246   0.0140860   0.0873632
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0616622   0.0372331   0.0860913
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0696203   0.0299064   0.1093341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0714286   0.0287396   0.1141175
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0988506   0.0707847   0.1269165
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0722222   0.0343817   0.1100627
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0590604   0.0470881   0.0710327
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0893855   0.0598258   0.1189451
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0704501   0.0482576   0.0926426
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1598808   0.1438714   0.1758903
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1505376   0.0778450   0.2232303
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1380368   0.1005852   0.1754884
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0943855   0.0879048   0.1008661
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1236934   0.0967585   0.1506283
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0911621   0.0762791   0.1060452
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1315789   0.0555197   0.2076382
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0963855   0.0679688   0.1248023
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0873016   0.0379740   0.1366292
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0998249   0.0752310   0.1244187
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1057108   0.0846991   0.1267225
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1037182   0.0772758   0.1301606
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1271860   0.1011440   0.1532280
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.1259740   0.1093987   0.1425493
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1232877   0.1015128   0.1450625
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0687470   0.0579006   0.0795933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0656341   0.0595912   0.0716771
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0615431   0.0524105   0.0706756
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0279330   0.0029444   0.0529215
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.0676692   0.0235278   0.1118106
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0721649   0.0268501   0.1174798
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0775862   0.0288644   0.1263080
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1111111   0.0786212   0.1436010
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0479452   0.0132616   0.0826288
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0362319   0.0050311   0.0674326
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0455764   0.0243948   0.0667580
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0379747   0.0081494   0.0678000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0642857   0.0236320   0.1049395
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0666667   0.0432101   0.0901232
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0666667   0.0302020   0.1031313
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0308725   0.0220879   0.0396571
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0391061   0.0190217   0.0591905
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0371820   0.0207735   0.0535905
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0541150   0.0435844   0.0646455
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1052632   0.0362505   0.1742759
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0600707   0.0323799   0.0877615
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0659990   0.0604846   0.0715134
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0859649   0.0629518   0.1089780
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0718772   0.0585037   0.0852507
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1311475   0.0463522   0.2159429
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0766962   0.0483403   0.1050520
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0606061   0.0135573   0.1076548
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0792793   0.0567959   0.1017627
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0706320   0.0529503   0.0883136
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0718563   0.0492366   0.0944759
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0826709   0.0611464   0.1041954
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0636777   0.0514764   0.0758790
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0696347   0.0527767   0.0864927
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0494129   0.0392134   0.0596125
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0444473   0.0394446   0.0494500
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0437538   0.0356534   0.0518542
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0809249   0.0296431   0.1322066
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1500000   0.0495754   0.2504246
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1123596   0.0643005   0.1604186
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1020408   0.0420545   0.1620271
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0791139   0.0493263   0.1089015
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0944882   0.0435687   0.1454077
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0361156   0.0257532   0.0464779
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0627063   0.0354021   0.0900105
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0389908   0.0208165   0.0571652
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1248050   0.1100302   0.1395797
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0777778   0.0224344   0.1331212
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0990415   0.0659414   0.1321417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0343411   0.0300170   0.0386651
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0482625   0.0298051   0.0667200
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0271132   0.0181235   0.0361030
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0237226   0.0109775   0.0364677
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0400501   0.0264507   0.0536494
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0342742   0.0182589   0.0502895
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0567986   0.0379748   0.0756225
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0738397   0.0602452   0.0874342
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0620347   0.0453788   0.0786907
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0296516   0.0204377   0.0388655
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0350070   0.0289654   0.0410486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0293443   0.0219731   0.0367156


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1414634   0.0976910   0.1852359
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0612855   0.0430966   0.0794744
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0661297   0.0560993   0.0761601
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1565968   0.1421532   0.1710404
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0956256   0.0898119   0.1014394
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0988655   0.0752946   0.1224363
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1034121   0.0897349   0.1170893
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0650879   0.0602061   0.0699696
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0513447   0.0345770   0.0681125
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0418535   0.0266676   0.0570395
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0334888   0.0262272   0.0407503
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0567276   0.0469085   0.0665467
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0680217   0.0630341   0.0730092
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0801603   0.0563114   0.1040093
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0735373   0.0616816   0.0853930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0450416   0.0408106   0.0492726
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1099476   0.0559115   0.1639838
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0408060   0.0321006   0.0495115
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1195185   0.1063325   0.1327045
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0341253   0.0302849   0.0379657
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0336408   0.0254069   0.0418747
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0327119   0.0284219   0.0370020


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.8796992   0.7910212   4.466718
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.5463917   0.9922743   2.409946
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0859423   0.6701266   1.759773
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.8386606   0.4615213   1.523985
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.2156262   0.5333591   2.770642
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.3725136   0.5467589   3.445383
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.3839080   0.7140894   2.682019
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0111111   0.4566925   2.238587
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.5134586   1.0268684   2.230624
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1928482   0.8201612   1.734887
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.9415615   0.5750057   1.541790
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8633731   0.6465449   1.152918
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3105129   1.0429931   1.646650
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9658493   0.8090800   1.152995
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7325301   0.3828376   1.401640
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6634921   0.2956535   1.488978
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0589627   0.7716196   1.453309
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0390016   0.7288590   1.481115
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9904708   0.7764973   1.263407
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9693493   0.7396818   1.270328
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9547205   0.8055309   1.131541
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.8952118   0.7261675   1.103608
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.4225564   0.6743539   8.702818
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          2.5835052   1.3703552   4.870634
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.4320988   0.7163610   2.862951
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.6179604   0.2370997   1.610610
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.2579088   0.4727932   3.346779
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.0481013   0.3267595   3.361849
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.0370370   0.5029246   2.138384
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0370370   0.4494405   2.392855
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.2666991   0.7041744   2.278592
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2043734   0.7123937   2.036115
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.9451754   0.9816327   3.854504
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.1100559   0.6730399   1.830834
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3025189   0.9839904   1.724159
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0890651   0.8881272   1.335465
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.5848083   0.2776824   1.231625
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.4621212   0.1682639   1.269173
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8909260   0.6103194   1.300547
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9063691   0.5933285   1.384570
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.7702554   0.5574940   1.064215
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8423121   0.5902969   1.201920
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.8995072   0.7240584   1.117470
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.8854724   0.6796149   1.153685
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.8535714   0.9627754   3.568565
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.3884430   0.9655132   1.996631
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.7753165   0.3857412   1.558339
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9259843   0.4171155   2.055658
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7362670   1.0307373   2.924725
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0796126   0.6245356   1.866288
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.6231944   0.3029356   1.282026
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.7935703   0.5566795   1.131268
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4053889   0.9395824   2.102123
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.7895282   0.5537810   1.125634
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.6882642   0.8941651   3.187595
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.4447891   0.7088824   2.944657
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3000256   0.8898211   1.899333
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.0921874   0.7129508   1.673150
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.1806111   0.8281431   1.683094
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9896378   0.6653422   1.471999


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0414634   -0.0039817   0.0869085
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0018789   -0.0576855   0.0614432
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0105609   -0.0228968   0.0440185
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0159886   -0.0234188   0.0553961
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0070693   -0.0008601   0.0149988
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0032840   -0.0096553   0.0030873
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0012402   -0.0017573   0.0042376
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0327135   -0.1028236   0.0373967
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0035872   -0.0171330   0.0243074
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0017344   -0.0248960   0.0214271
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0036591   -0.0131261   0.0058079
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0234118    0.0091158   0.0377078
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0124459   -0.0322217   0.0571136
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0056216   -0.0227065   0.0339497
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0019395   -0.0348689   0.0387478
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0026163   -0.0030772   0.0083097
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0026126   -0.0021675   0.0073928
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0020227   -0.0006057   0.0046510
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0509872   -0.1284539   0.0264794
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0057420   -0.0243128   0.0128288
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0133542   -0.0321498   0.0054413
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0043713   -0.0130490   0.0043064
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0290228    0.0014387   0.0566069
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0151647   -0.0686346   0.0383052
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0046905   -0.0022636   0.0116446
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0052865   -0.0108741   0.0003010
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0002157   -0.0021571   0.0017256
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0099182   -0.0016419   0.0214783
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0101291   -0.0069937   0.0272519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0030603   -0.0056402   0.0117609


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.2931034   -0.1285411   0.5572135
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0119634   -0.4503714   0.3269198
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1723224   -0.5965976   0.5709312
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.1829004   -0.4157638   0.5284159
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1069007   -0.0203298   0.2182662
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0209713   -0.0624492   0.0188873
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0129690   -0.0188715   0.0438144
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3308887   -1.2622159   0.2170222
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0346884   -0.1879377   0.2155932
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0138257   -0.2163271   0.1549621
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0562177   -0.2120082   0.0795477
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.4559723   -0.0385157   0.7150105
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1382389   -0.5307819   0.5148674
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1343168   -0.8884265   0.6031577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0292857   -0.7208215   0.4524207
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0781242   -0.1076211   0.2327205
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0460555   -0.0416776   0.1263995
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0297358   -0.0096287   0.0675656
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.6360656   -1.9294822   0.0862854
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0780825   -0.3623184   0.1468501
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1926552   -0.4959099   0.0491230
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0970498   -0.3063127   0.0786906
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.2639692   -0.0175386   0.4675962
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1745549   -0.9811337   0.3036415
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1149456   -0.0709997   0.2686073
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0442317   -0.0918533   0.0013129
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0063221   -0.0648457   0.0489852
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.2948258   -0.1361737   0.5623286
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1513440   -0.1462308   0.3716649
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0935540   -0.2139044   0.3231391
