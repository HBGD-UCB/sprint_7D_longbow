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
      W: []
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mage       ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   0       28     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   1        9     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)               0       74     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)               1       15     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)               0       78     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)               1       15     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       37     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        9     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   0       41     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)               0       65     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)               1        9     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)               0       55     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)               1       10     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  0       47     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  1        4     233
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   0       26     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   1        8     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-25)               0       92     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-25)               1       19     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)               0       70     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)               1       13     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  0       20     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  1        1     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   0        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-25)               0       51     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-25)               1       10     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)               0      116     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)               1       12     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  0       42     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  1        4     240
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   0       69     303
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   1       14     303
0-6 months    ki0047075b-MAL-ED          PERU                           [20-25)               0       80     303
0-6 months    ki0047075b-MAL-ED          PERU                           [20-25)               1        9     303
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)               0       59     303
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)               1        5     303
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  0       58     303
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  1        9     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       41     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        7     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)               0       89     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)               1       13     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               0       54     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               1        5     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       96     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        9     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       16     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        0     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)               0       56     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)               1       15     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               0       57     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               1       12     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       90     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       16     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)               0      144     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)               1       41     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               0       91     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               1       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       34     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1        8     368
0-6 months    ki1000108-IRC              INDIA                          <20                   0       29     410
0-6 months    ki1000108-IRC              INDIA                          <20                   1        8     410
0-6 months    ki1000108-IRC              INDIA                          [20-25)               0      194     410
0-6 months    ki1000108-IRC              INDIA                          [20-25)               1       27     410
0-6 months    ki1000108-IRC              INDIA                          [25-30)               0      109     410
0-6 months    ki1000108-IRC              INDIA                          [25-30)               1       14     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  0       28     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  1        1     410
0-6 months    ki1000109-EE               PAKISTAN                       <20                   0        0     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   1        1     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-25)               0       13     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-25)               1        8     377
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)               0       96     377
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)               1       45     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  0      139     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  1       75     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   0      126    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   1       67    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)               0      545    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)               1      200    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)               0      292    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)               1      127    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  0      126    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       47    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0       20     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1       16     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)               0       93     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)               1       54     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               0       81     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               1       61     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       63     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       28     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   0       65     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   1        8     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)               0      197     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)               1       43     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)               0      150     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)               1       32     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  0      116     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       16     627
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   0       75     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   1       10     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)               0      264     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)               1       20     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)               0      187     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)               1       22     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  0      108     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       14     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0      111     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       25     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)               0      226     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)               1       37     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               0      206     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               1       25     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0      110     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       18     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      151    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       16    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)               0      705    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)               1       53    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               0      758    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               1       55    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      603    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       35    2376
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   0      308    2443
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   1       51    2443
0-6 months    ki1101329-Keneba           GAMBIA                         [20-25)               0      576    2443
0-6 months    ki1101329-Keneba           GAMBIA                         [20-25)               1       66    2443
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)               0      493    2443
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)               1       37    2443
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  0      839    2443
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  1       73    2443
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       29     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   1       17     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)               0       80     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)               1       24     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               0       49     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               1       11     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       43     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1       11     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   0       99     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   1       24     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)               0      190     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)               1       20     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)               0      166     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)               1       12     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  0       80     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  1       11     602
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   0     1718   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   1       26   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [20-25)               0     7321   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [20-25)               1       74   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)               0     4701   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)               1       32   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  0     3000   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  1       21   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1974   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      263   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)               0     5311   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)               1      617   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               0     3129   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               1      364   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     2124   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      229   14011
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   0      130    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   1       19    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)               0      250    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)               1       39    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)               0      214    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)               1       28    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  0      350    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  1       61    1091
0-6 months    ki1135781-COHORTS          INDIA                          <20                   0      335    5135
0-6 months    ki1135781-COHORTS          INDIA                          <20                   1       68    5135
0-6 months    ki1135781-COHORTS          INDIA                          [20-25)               0     1546    5135
0-6 months    ki1135781-COHORTS          INDIA                          [20-25)               1      238    5135
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)               0     1515    5135
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)               1      184    5135
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  0     1114    5135
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  1      135    5135
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   0      342    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   1       36    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)               0      926    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)               1       45    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)               0      804    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)               1       52    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  0      798    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  1       55    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   0       29     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   1       10     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-25)               0       43     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-25)               1       19     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)               0       28     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)               1       26     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  0       42     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  1       23     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     7705   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   1     4441   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)               0     5907   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)               1     2388   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               0     3165   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               1     1226   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1641   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      686   27159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0       12     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1       18     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)               0       40     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)               1       20     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               0       49     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               1       28     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       21     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        7     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       33     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        3     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)               0       60     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)               1        1     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               0       57     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               1        3     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       45     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        1     203
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       20     193
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1        8     193
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)               0       54     193
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)               1       30     193
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               0       36     193
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               1       25     193
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       17     193
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        3     193
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        4     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        1     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-25)               0       46     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-25)               1        6     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               0      102     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               1       22     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       36     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1        7     224
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       46     229
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   1       20     229
6-24 months   ki0047075b-MAL-ED          PERU                           [20-25)               0       48     229
6-24 months   ki0047075b-MAL-ED          PERU                           [20-25)               1       12     229
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               0       27     229
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               1       24     229
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       33     229
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1       19     229
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       28     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        9     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)               0       43     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)               1       22     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               0       33     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               1        9     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       61     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       19     224
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0        2     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        6     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)               0       21     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)               1       28     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               0       16     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               1       32     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       32     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       50     187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       12     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1       18     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)               0       43     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)               1       94     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               0       28     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               1       60     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       14     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       19     288
6-24 months   ki1000108-IRC              INDIA                          <20                   0       23     339
6-24 months   ki1000108-IRC              INDIA                          <20                   1       12     339
6-24 months   ki1000108-IRC              INDIA                          [20-25)               0      129     339
6-24 months   ki1000108-IRC              INDIA                          [20-25)               1       40     339
6-24 months   ki1000108-IRC              INDIA                          [25-30)               0       80     339
6-24 months   ki1000108-IRC              INDIA                          [25-30)               1       28     339
6-24 months   ki1000108-IRC              INDIA                          >=30                  0       24     339
6-24 months   ki1000108-IRC              INDIA                          >=30                  1        3     339
6-24 months   ki1000109-EE               PAKISTAN                       [20-25)               0        2     187
6-24 months   ki1000109-EE               PAKISTAN                       [20-25)               1        8     187
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)               0       17     187
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)               1       60     187
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       28     187
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       72     187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0       90     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1       35     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)               0      355     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)               1      148     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               0      149     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               1       85     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       63     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       39     964
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0       12     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1        8     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)               0       38     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)               1       47     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               0       32     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               1       38     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       17     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       34     226
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       27     419
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1       29     419
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)               0       84     419
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)               1       66     419
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)               0       64     419
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)               1       57     419
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0       55     419
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       37     419
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       36     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1       16     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)               0      158     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)               1       50     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)               0      120     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)               1       29     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       64     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       24     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0       90     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       21     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)               0      177     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)               1       28     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               0      158     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               1       41     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0       78     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       27     620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      114    1834
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       15    1834
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)               0      494    1834
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)               1       75    1834
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               0      539    1834
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               1       83    1834
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      442    1834
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       72    1834
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      257    2333
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   1       63    2333
6-24 months   ki1101329-Keneba           GAMBIA                         [20-25)               0      485    2333
6-24 months   ki1101329-Keneba           GAMBIA                         [20-25)               1      135    2333
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)               0      428    2333
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)               1      128    2333
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      606    2333
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      231    2333
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       19     182
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        4     182
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)               0       55     182
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)               1       17     182
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               0       40     182
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               1        8     182
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       30     182
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        9     182
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      254    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1       59    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)               0      659    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)               1      124    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)               0      582    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)               1       96    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      736    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1      121    2631
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       48     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       42     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)               0      105     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)               1       69     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               0       74     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               1       71     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       38     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       33     480
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1598   16303
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   1       76   16303
6-24 months   ki1119695-PROBIT           BELARUS                        [20-25)               0     6850   16303
6-24 months   ki1119695-PROBIT           BELARUS                        [20-25)               1      274   16303
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               0     4399   16303
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               1      172   16303
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2836   16303
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1       98   16303
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1197    9296
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      220    9296
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)               0     3407    9296
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)               1      483    9296
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               0     2015    9296
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               1      346    9296
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1413    9296
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      215    9296
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0       36     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1       48     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)               0       76     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)               1      102     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               0       52     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               1       83     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0      109     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1      118     624
6-24 months   ki1135781-COHORTS          INDIA                          <20                   0      290    3980
6-24 months   ki1135781-COHORTS          INDIA                          [20-25)               0     1389    3980
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)               0     1349    3980
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  0      952    3980
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0      129    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1      139    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)               0      382    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)               1      339    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               0      330    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               1      295    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      293    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1      317    2224
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0       58     471
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1       25     471
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)               0       89     471
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)               1       41     471
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               0       86     471
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               1       39     471
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0       91     471
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1       42     471
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     4917   13299
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1     1188   13299
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)               0     3289   13299
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)               1      819   13299
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               0     1698   13299
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               1      412   13299
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0      774   13299
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      202   13299
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0       12     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1       25     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)               0       47     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)               1       42     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               0       51     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               1       42     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       21     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1       25     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       38     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        5     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)               0       63     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)               1       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               0       51     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               1       14     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       45     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        6     233
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       16     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1       18     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)               0       53     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)               1       58     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               0       41     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               1       42     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       15     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        6     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-25)               0       45     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-25)               1       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               0       99     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               1       29     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       35     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1       11     240
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       45     303
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   1       38     303
0-24 months   ki0047075b-MAL-ED          PERU                           [20-25)               0       58     303
0-24 months   ki0047075b-MAL-ED          PERU                           [20-25)               1       31     303
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               0       30     303
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               1       34     303
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       34     303
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1       33     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       26     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1       22     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)               0       57     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)               1       45     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               0       45     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               1       14     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       65     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       40     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0        4     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1       12     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)               0       24     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)               1       47     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               0       19     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               1       50     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       33     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       73     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)               0       32     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)               1      155     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               0       24     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               1       85     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       31     373
0-24 months   ki1000108-IRC              INDIA                          <20                   0       16     410
0-24 months   ki1000108-IRC              INDIA                          <20                   1       21     410
0-24 months   ki1000108-IRC              INDIA                          [20-25)               0      108     410
0-24 months   ki1000108-IRC              INDIA                          [20-25)               1      113     410
0-24 months   ki1000108-IRC              INDIA                          [25-30)               0       70     410
0-24 months   ki1000108-IRC              INDIA                          [25-30)               1       53     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  0       21     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  1        8     410
0-24 months   ki1000109-EE               PAKISTAN                       <20                   0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-25)               0        2     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-25)               1       19     377
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)               0       16     377
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)               1      125     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       27     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  1      187     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0       79    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1      114    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)               0      320    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)               1      426    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               0      155    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               1      266    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       68    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1      105    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1       25     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)               0       39     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)               1      109     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               0       35     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               1      107     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       21     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       71     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       36     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1       37     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)               0      113     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)               1      127     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)               0       75     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)               1      107     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0       61     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       71     627
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       50     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1       35     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)               0      186     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)               1       98     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)               0      132     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)               1       77     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       69     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       53     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0       78     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       58     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)               0      166     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)               1       97     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               0      148     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               1       83     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0       72     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       56     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      126    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       41    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)               0      594    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)               1      164    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               0      622    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               1      191    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      499    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1      139    2376
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      260    2859
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   1      135    2859
0-24 months   ki1101329-Keneba           GAMBIA                         [20-25)               0      499    2859
0-24 months   ki1101329-Keneba           GAMBIA                         [20-25)               1      267    2859
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)               0      435    2859
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)               1      236    2859
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      588    2859
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      439    2859
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       20     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1       27     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)               0       58     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)               1       53     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               0       40     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               1       24     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       30     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1       29     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      241    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1      162    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)               0      630    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)               1      308    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)               0      552    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)               1      252    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      701    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1      331    3177
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       48     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       75     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)               0       96     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)               1      114     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               0       72     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               1      106     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       38     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       53     602
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1518   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   1      227   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [20-25)               0     6631   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [20-25)               1      765   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               0     4307   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               1      426   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2741   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      282   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1516   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      726   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)               0     4301   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)               1     1636   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               0     2440   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               1     1057   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1672   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      685   14033
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0       59    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1      143    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)               0      103    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)               1      264    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               0       76    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               1      218    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0      141    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1      356    1360
0-24 months   ki1135781-COHORTS          INDIA                          <20                   0      308    5313
0-24 months   ki1135781-COHORTS          INDIA                          <20                   1      119    5313
0-24 months   ki1135781-COHORTS          INDIA                          [20-25)               0     1403    5313
0-24 months   ki1135781-COHORTS          INDIA                          [20-25)               1      447    5313
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)               0     1377    5313
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)               1      375    5313
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  0      963    5313
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  1      321    5313
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0      154    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1      224    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)               0      437    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)               1      534    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               0      380    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               1      476    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      339    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1      514    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0       53     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1       55     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)               0       82     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)               1      111     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               0       69     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               1      102     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0       76     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1      122     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     6236   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1     5950   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)               0     4874   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)               1     3437   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               0     2640   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               1     1758   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1395   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      935   27225


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## mage         0
##   <20      290
##   [20-25) 1389
##   [25-30) 1349
##   >=30     952
```




# Results Detail

## Results Plots
![](/tmp/4d6f6943-220c-42ae-8662-388ffed14b50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4d6f6943-220c-42ae-8662-388ffed14b50/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4d6f6943-220c-42ae-8662-388ffed14b50/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4d6f6943-220c-42ae-8662-388ffed14b50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.6756757   0.5245539   0.8267975
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.4719101   0.3680000   0.5758202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.4516129   0.3502791   0.5529467
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5434783   0.3992628   0.6876938
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.1162791   0.0202603   0.2122978
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                0.1486486   0.0674215   0.2298758
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.2153846   0.1152323   0.3155370
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1176471   0.0290318   0.2062624
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.5294118   0.3612993   0.6975242
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              NA                0.5225225   0.4294140   0.6156310
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.5060241   0.3982483   0.6137999
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2857143   0.0921103   0.4793182
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.4578313   0.3504703   0.5651924
0-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.3483146   0.2491685   0.4474607
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.5312500   0.4087895   0.6537105
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4925373   0.3726288   0.6124459
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.4583333   0.3171521   0.5995145
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.4411765   0.3446638   0.5376891
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2372881   0.1285622   0.3460140
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3809524   0.2879180   0.4739868
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.7647059   0.6219335   0.9074783
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.8288770   0.7748253   0.8829287
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.7798165   0.7019221   0.8577109
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7209302   0.5866847   0.8551758
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.5675676   0.4077423   0.7273928
0-24 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.5113122   0.4453279   0.5772966
0-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.4308943   0.3432734   0.5185152
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.2758621   0.1129940   0.4387302
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.5906736   0.5449278   0.6364194
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.5710456   0.5221961   0.6198951
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.6318290   0.5748375   0.6888204
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.6069364   0.5589343   0.6549385
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.6944444   0.5437904   0.8450985
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              NA                0.7364865   0.6654271   0.8075458
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.7535211   0.6825533   0.8244890
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.7717391   0.6858723   0.8576059
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.5068493   0.3920703   0.6216283
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.5291667   0.4659664   0.5923669
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.5879121   0.5163455   0.6594786
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5378788   0.4527595   0.6229981
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.4117647   0.3070641   0.5164653
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.3450704   0.2897417   0.4003991
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3684211   0.3029768   0.4338653
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.4344262   0.3464063   0.5224462
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.4264706   0.3432966   0.5096446
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.3688213   0.3104713   0.4271713
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.3593074   0.2973937   0.4212210
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.4375000   0.3515036   0.5234964
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2455090   0.1802197   0.3107983
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.2163588   0.1870397   0.2456780
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2349323   0.2057839   0.2640808
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2178683   0.1858303   0.2499064
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.3417722   0.2949898   0.3885545
0-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.3485640   0.3148130   0.3823150
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3517139   0.3155778   0.3878499
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4274586   0.3971972   0.4577200
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.5744681   0.4328651   0.7160710
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.4774775   0.3843903   0.5705646
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.3750000   0.2561805   0.4938195
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.4915254   0.3637334   0.6193175
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.4019851   0.3459037   0.4580665
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              NA                0.3283582   0.1896640   0.4670524
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.3134328   0.2643738   0.3624919
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3207364   0.2812511   0.3602218
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.6097561   0.5234776   0.6960346
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.5428571   0.4754248   0.6102895
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5955056   0.5233453   0.6676659
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5824176   0.4810085   0.6838266
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.1300860   0.1010198   0.1591521
0-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.1034343   0.0847722   0.1220964
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0900063   0.0757976   0.1042151
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0932848   0.0769071   0.1096625
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.3238180   0.3044481   0.3431880
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.2755600   0.2641945   0.2869256
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.3022591   0.2870378   0.3174804
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2906237   0.2722926   0.3089547
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7079208   0.6451909   0.7706507
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.7193460   0.6733597   0.7653324
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7414966   0.6914330   0.7915602
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7162978   0.6766510   0.7559446
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.2786885   0.2361585   0.3212186
0-24 months   ki1135781-COHORTS          INDIA                          [20-25)              NA                0.2416216   0.2221136   0.2611297
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.2140411   0.1948336   0.2332486
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.2500000   0.2263132   0.2736868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.5925926   0.5430515   0.6421337
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.5499485   0.5186516   0.5812454
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5560748   0.5227855   0.5893640
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6025791   0.5697335   0.6354247
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.5092593   0.4149062   0.6036123
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.5751295   0.5053377   0.6449214
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.5964912   0.5229039   0.6700785
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6161616   0.5483723   0.6839509
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4882652   0.4783205   0.4982099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.4135483   0.4012474   0.4258492
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.3997271   0.3844966   0.4149577
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4012876   0.3790257   0.4235494
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2432432   0.1047378   0.3817487
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.1685393   0.0906199   0.2464587
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1612903   0.0863980   0.2361827
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.1956522   0.0807960   0.3105084
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.1686747   0.0879814   0.2493680
0-6 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.1011236   0.0383832   0.1638640
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.0781250   0.0122672   0.1439828
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1343284   0.0525405   0.2161162
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1458333   0.0458288   0.2458379
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.1274510   0.0626313   0.1922707
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.0847458   0.0135680   0.1559236
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.0857143   0.0320836   0.1393450
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.3235294   0.1660656   0.4809933
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.2216216   0.1616902   0.2815530
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.1495327   0.0818708   0.2171946
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1904762   0.0715577   0.3093947
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3471503   0.2648508   0.4294497
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.2684564   0.2377256   0.2991872
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3031026   0.2597806   0.3464246
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2716763   0.2053915   0.3379611
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.4444444   0.2819300   0.6069589
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              NA                0.3673469   0.2893221   0.4453718
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.4295775   0.3480609   0.5110940
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3076923   0.2127504   0.4026342
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1095890   0.0378737   0.1813044
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.1791667   0.1306104   0.2277229
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.1758242   0.1204754   0.2311730
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1212121   0.0654906   0.1769336
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1176471   0.0491044   0.1861897
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.0704225   0.0406444   0.1002007
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1052632   0.0636269   0.1468994
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1147541   0.0581569   0.1713513
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1838235   0.1186820   0.2489650
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.1406844   0.0986354   0.1827335
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1082251   0.0681366   0.1483137
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1406250   0.0803618   0.2008882
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0958084   0.0511592   0.1404575
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.0699208   0.0517628   0.0880789
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0676507   0.0503836   0.0849178
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0548589   0.0371863   0.0725316
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1420613   0.1059406   0.1781819
0-6 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.1028037   0.0793065   0.1263010
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0698113   0.0481119   0.0915107
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0800439   0.0624287   0.0976590
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.3695652   0.2298129   0.5093175
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.2307692   0.1496409   0.3118976
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.1833333   0.0852400   0.2814267
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.2037037   0.0960790   0.3113284
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1951220   0.1250290   0.2652150
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.0952381   0.0555032   0.1349730
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.0674157   0.0305499   0.1042815
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1208791   0.0538462   0.1879121
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0149083   0.0067752   0.0230413
0-6 months    ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.0100068   0.0061746   0.0138390
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0067610   0.0040923   0.0094298
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0069513   0.0037696   0.0101330
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1175682   0.1042202   0.1309162
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1040823   0.0963085   0.1118561
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1042084   0.0940759   0.1143410
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0973226   0.0853462   0.1092990
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.1275168   0.0739351   0.1810985
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.1349481   0.0955384   0.1743578
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.1157025   0.0753834   0.1560215
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1484185   0.1140324   0.1828046
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.1687345   0.1321658   0.2053032
0-6 months    ki1135781-COHORTS          INDIA                          [20-25)              NA                0.1334081   0.1176286   0.1491875
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1082990   0.0935210   0.1230770
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1080865   0.0908656   0.1253074
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0952381   0.0656412   0.1248350
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.0463440   0.0331188   0.0595692
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0607477   0.0447433   0.0767520
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0644783   0.0479937   0.0809629
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.2564103   0.1190568   0.3937637
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.3064516   0.1914349   0.4214683
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.4814815   0.3479104   0.6150526
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.3538462   0.2373381   0.4703542
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.3656348   0.3561196   0.3751499
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.2878843   0.2769574   0.2988111
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2792075   0.2651552   0.2932598
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2948002   0.2740736   0.3155268
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.6000000   0.4242443   0.7757557
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.3333333   0.2137467   0.4529200
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.3636364   0.2559141   0.4713586
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2500000   0.0892000   0.4108000
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.3030303   0.1919143   0.4141463
6-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.2000000   0.0985662   0.3014338
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.4705882   0.3333008   0.6078756
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.3653846   0.2342168   0.4965524
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.2432432   0.1046898   0.3817967
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.3384615   0.2231706   0.4537525
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2142857   0.0899133   0.3386581
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.2375000   0.1440399   0.3309601
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.6000000   0.4243903   0.7756097
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.6861314   0.6082882   0.7639746
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6818182   0.5843340   0.7793023
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5757576   0.4068406   0.7446746
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2800000   0.2271239   0.3328761
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.2942346   0.2585585   0.3299106
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3632479   0.2940466   0.4324492
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3823529   0.3333598   0.4313460
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.4000000   0.1848201   0.6151799
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              NA                0.5529412   0.4470101   0.6588723
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.5428571   0.4258989   0.6598154
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.6666667   0.5370026   0.7963308
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.5178571   0.3868286   0.6488857
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.4400000   0.3604680   0.5195320
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.4710744   0.3820280   0.5601208
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4021739   0.3018586   0.5024893
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3076923   0.1821206   0.4332640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.2403846   0.1822541   0.2985151
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1946309   0.1309959   0.2582658
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2727273   0.1795828   0.3658717
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1891892   0.1162695   0.2621089
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.1365854   0.0895382   0.1836325
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2060302   0.1497909   0.2622694
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2571429   0.1734779   0.3408079
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1162791   0.0609466   0.1716115
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.1318102   0.1040072   0.1596132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1334405   0.1067096   0.1601715
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1400778   0.1100655   0.1700901
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1968750   0.1532984   0.2404516
6-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.2177419   0.1852488   0.2502351
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.2302158   0.1952168   0.2652148
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2759857   0.2456959   0.3062754
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1884984   0.1482737   0.2287231
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              NA                0.1583653   0.1035250   0.2132056
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.1415929   0.1092911   0.1738947
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1411902   0.1107540   0.1716264
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4666667   0.3634898   0.5698436
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.3965517   0.3237911   0.4693123
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.4896552   0.4082046   0.5711057
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4647887   0.3486540   0.5809235
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0454002   0.0294606   0.0613398
6-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.0384615   0.0279507   0.0489724
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0376285   0.0252420   0.0500151
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0334015   0.0248364   0.0419666
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1552576   0.1364005   0.1741147
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1241645   0.1138010   0.1345280
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1465481   0.1322820   0.1608141
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1320639   0.1156171   0.1485106
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.5714286   0.4655156   0.6773416
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.5730337   0.5003105   0.6457570
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.6148148   0.5326594   0.6969703
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.5198238   0.4547791   0.5848685
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.5186567   0.4588230   0.5784904
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.4701803   0.4337406   0.5066200
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.4720000   0.4328534   0.5111466
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.5196721   0.4800156   0.5593286
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3012048   0.2024004   0.4000093
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.3153846   0.2354230   0.3953462
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.3120000   0.2306933   0.3933067
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.3157895   0.2367075   0.3948714
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.1945946   0.1838360   0.2053532
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.1993671   0.1854517   0.2132825
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.1952607   0.1778149   0.2127064
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2069672   0.1816268   0.2323076


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5056604   0.4453505   0.5659702
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1545064   0.1079979   0.2010150
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4979920   0.4357636   0.5602204
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4488449   0.3927492   0.5049406
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3853503   0.3314343   0.4392663
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7962466   0.7553156   0.8371777
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4756098   0.4272105   0.5240091
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5942596   0.5539147   0.6346046
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7464115   0.7046540   0.7881689
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5454545   0.5064488   0.5844603
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3878628   0.3531521   0.4225735
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2251684   0.2083697   0.2419670
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3767051   0.3589402   0.3944701
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4733096   0.4148280   0.5317912
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3314448   0.2804289   0.3824606
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5780731   0.5385891   0.6175571
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1006096   0.0848963   0.1163228
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2924535   0.2849270   0.2999800
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7213235   0.6974864   0.7451606
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2375306   0.2260863   0.2489749
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5716154   0.5540738   0.5891570
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5820896   0.5447154   0.6194637
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4437098   0.4361997   0.4512200
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1811321   0.1346751   0.2275890
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1221122   0.0851852   0.1590392
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1082803   0.0738560   0.1427045
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2065217   0.1651060   0.2479375
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2882353   0.2618269   0.3146436
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3822115   0.3354600   0.4289631
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1578947   0.1293302   0.1864593
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0942857   0.0726222   0.1159492
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1385224   0.1139141   0.1631308
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0669192   0.0568695   0.0769688
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0929185   0.0814039   0.1044332
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2386364   0.1871213   0.2901515
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1112957   0.0861520   0.1364394
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0090570   0.0059070   0.0122070
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1051317   0.1000527   0.1102107
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1347388   0.1144687   0.1550088
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1217137   0.1127702   0.1306572
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0614781   0.0529631   0.0699931
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3545455   0.2911884   0.4179025
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3218454   0.3150991   0.3285918
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3743590   0.3062579   0.4424600
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3275109   0.2665942   0.3884276
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2633929   0.2055812   0.3212045
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6631944   0.6085159   0.7178730
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3184647   0.2882909   0.3486385
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.5619469   0.4971181   0.6267757
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4510740   0.4033715   0.4987764
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1887097   0.1578857   0.2195336
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1335878   0.1180133   0.1491622
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2387484   0.2214455   0.2560513
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1520334   0.1259980   0.1780689
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4479167   0.4033837   0.4924496
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0380298   0.0285924   0.0474672
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1359725   0.1290044   0.1429405
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5625000   0.5235458   0.6014542
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4901079   0.4693271   0.5108888
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3121019   0.2702120   0.3539918
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1970825   0.1890251   0.2051399


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.6984270   0.5102859   0.9559351
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.6683871   0.4868974   0.9175267
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.8043478   0.5684936   1.1380523
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               1.2783784   0.4749255   3.4410684
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               1.8523077   0.7180261   4.7784391
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               1.0117647   0.3308809   3.0937655
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              <20               0.9869870   0.6857628   1.4205252
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <20               0.9558233   0.6521108   1.4009862
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <20               0.5396825   0.2553544   1.1406000
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.7607924   0.5261369   1.1001037
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               1.1603618   0.8351916   1.6121326
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               1.0758052   0.7672432   1.5084615
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               0.9625668   0.6597055   1.4044674
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.5177196   0.2980667   0.8992402
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.8311688   0.5610089   1.2314273
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.0839161   0.8894228   1.3209399
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               1.0197601   0.8251613   1.2602513
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.9427549   0.7242352   1.2272075
0-24 months   ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          [20-25)              <20               0.9008834   0.6609097   1.2279908
0-24 months   ki1000108-IRC              INDIA                          [25-30)              <20               0.7591947   0.5364193   1.0744891
0-24 months   ki1000108-IRC              INDIA                          >=30                 <20               0.4860427   0.2526948   0.9348729
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               0.9667701   0.8639884   1.0817790
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               1.0696754   0.9338357   1.2252749
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               1.0275327   0.9251018   1.1413051
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              <20               1.0605405   0.8363976   1.3447507
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <20               1.0850704   0.8565362   1.3745803
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <20               1.1113043   0.8708584   1.4181379
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.0440315   0.8082118   1.3486586
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.1599347   0.8969668   1.4999981
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.0612203   0.8050500   1.3989051
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.8380282   0.6204507   1.1319050
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.8947368   0.6561270   1.2201204
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               1.0550351   0.7621964   1.4603836
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.8648223   0.6727646   1.1117079
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.8425138   0.6494614   1.0929511
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               1.0258621   0.7777376   1.3531466
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               0.8812665   0.6538577   1.1877670
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               0.9569196   0.7135596   1.2832777
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.8874149   0.6548647   1.2025466
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               1.0198724   0.8624397   1.2060433
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.0290887   0.8672072   1.2211886
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               1.2507123   1.0720880   1.4590977
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.8311645   0.6070161   1.1380826
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.6527778   0.4369401   0.9752340
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.8556183   0.5979807   1.2242582
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              <20               0.8168417   0.5303270   1.2581490
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <20               0.7797125   0.6442162   0.9437074
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <20               0.7978814   0.6686770   0.9520512
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.8902857   0.7374935   1.0747331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.9766292   0.8106328   1.1766174
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.9551648   0.7632015   1.1954115
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.7951226   0.6661100   0.9491225
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.6918989   0.5742346   0.8336734
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <20               0.7171013   0.6038761   0.8515560
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8509719   0.7913343   0.9151041
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9334227   0.8632164   1.0093389
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8974907   0.8227681   0.9789996
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               1.0161392   0.9109617   1.1334602
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.0474288   0.9370073   1.1708628
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.0118332   0.9114543   1.1232670
0-24 months   ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          [20-25)              <20               0.8669952   0.7295181   1.0303799
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <20               0.7680298   0.6434163   0.9167778
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <20               0.8970588   0.7495653   1.0735750
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9280381   0.8387736   1.0268024
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.9383762   0.8466832   1.0399992
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               1.0168523   0.9202692   1.1235719
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.1293453   0.9049819   1.4093328
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.1712919   0.9375524   1.4633045
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.2099174   0.9753816   1.5008485
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.8469747   0.8191862   0.8757059
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.8186681   0.7856525   0.8530711
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.8218639   0.7756253   0.8708590
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.6928839   0.3327521   1.4427800
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.6630824   0.3180363   1.3824786
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.8043478   0.3550293   1.8223155
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.5995185   0.2738754   1.3123572
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.4631696   0.1757087   1.2209195
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               0.7963753   0.3671407   1.7274400
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               0.8739496   0.3721372   2.0524362
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.5811138   0.1964997   1.7185437
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.5877551   0.2322960   1.4871375
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               0.6850123   0.3925446   1.1953848
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               0.4621920   0.2377997   0.8983254
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.5887446   0.2667663   1.2993403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               0.7733146   0.5788039   1.0331920
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               0.8731165   0.6426116   1.1863036
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               0.7825899   0.5585786   1.0964384
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              <20               0.8265306   0.5415126   1.2615641
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <20               0.9665493   0.6401922   1.4592766
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <20               0.6923077   0.4290526   1.1170891
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.6348958   0.8051540   3.3197180
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.6043956   0.7761308   3.3165612
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.1060606   0.4971190   2.4609199
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.5985915   0.2913983   1.2296291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.8947368   0.4424527   1.8093552
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.9754098   0.4546456   2.0926725
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.7653232   0.4814062   1.2166848
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.5887446   0.3526106   0.9830113
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               0.7650000   0.4386919   1.3340228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               0.7297988   0.4280630   1.2442241
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               0.7061039   0.4150579   1.2012367
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.5725901   0.3249393   1.0089869
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.7236577   0.5141042   1.0186270
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20               0.4914169   0.3288878   0.7342644
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <20               0.5634460   0.4025418   0.7886668
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.6244344   0.3726058   1.0464633
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.4960784   0.2576332   0.9552101
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.5511983   0.2878299   1.0555525
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.4880952   0.2814496   0.8464640
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.3455056   0.1795996   0.6646681
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.6195055   0.3199585   1.1994899
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.6712228   0.4225319   1.0662864
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.4535097   0.2924330   0.7033102
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 <20               0.4662746   0.2719498   0.7994562
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8852934   0.7728002   1.0141616
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.8863659   0.7632988   1.0292752
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8277969   0.7001790   0.9786751
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               1.0582772   0.6344050   1.7653559
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               0.9073510   0.5256526   1.5662168
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.1639134   0.7203307   1.8806564
0-6 months    ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          [20-25)              <20               0.7906390   0.6176628   1.0120572
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              <20               0.6418308   0.4968166   0.8291728
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 <20               0.6405713   0.4894950   0.8382754
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.4866117   0.3191150   0.7420241
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.6378505   0.4244061   0.9586413
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.6770223   0.4527264   1.0124419
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.1951613   0.6213913   2.2987293
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.8777778   1.0272018   3.4326746
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.3800000   0.7358737   2.5879441
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.7873547   0.7537744   0.8224310
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.7636239   0.7231726   0.8063380
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.8062695   0.7486565   0.8683162
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.5555556   0.3496077   0.8828238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.6060606   0.3995635   0.9192769
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.4166667   0.2055162   0.8447564
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.6600000   0.3529757   1.2340795
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               1.5529412   0.9719724   2.4811676
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               1.2057692   0.7217792   2.0142994
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               1.3914530   0.7165255   2.7021250
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.8809524   0.3906397   1.9866825
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.9763889   0.4885977   1.9511662
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.1435523   0.8354684   1.5652440
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               1.1363636   0.8204477   1.5739240
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.9595960   0.6340334   1.4523280
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               1.0508378   0.8270850   1.3351229
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               1.2973138   0.9325128   1.8048256
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               1.3655462   1.1090189   1.6814108
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              <20               1.3823529   0.7809396   2.4469237
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <20               1.3571429   0.7602499   2.4226727
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <20               1.6666667   0.9406307   2.9531013
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               0.8496552   0.6225836   1.1595454
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               0.9096609   0.6633070   1.2475113
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               0.7766117   0.5443777   1.1079178
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.7812500   0.4861521   1.2554745
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.6325503   0.3749661   1.0670829
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.8863636   0.5205922   1.5091285
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.7219512   0.4305390   1.2106071
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               1.0890165   0.6790729   1.7464354
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               1.3591837   0.8207666   2.2507986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               1.1335677   0.6735832   1.9076717
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               1.1475884   0.6847908   1.9231556
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               1.2046693   0.7148635   2.0300771
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               1.1059908   0.8468720   1.4443926
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.1693502   0.8939781   1.5295452
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               1.4018319   1.0949653   1.7946987
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              <20               0.8401411   0.5786852   1.2197255
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <20               0.7511624   0.5939781   0.9499424
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <20               0.7490260   0.5928103   0.9464071
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.8497537   0.6375510   1.1325861
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               1.0492611   0.7956512   1.3837079
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.9959759   0.7134296   1.3904215
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.8471660   0.6633454   1.0819253
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.8288178   0.5890547   1.1661718
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <20               0.7357120   0.5141915   1.0526663
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.7997324   0.6901478   0.9267174
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9439028   0.8078440   1.1028769
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8506115   0.7147968   1.0122315
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               1.0028090   0.8010536   1.2553790
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.0759259   0.8561472   1.3521234
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               0.9096916   0.7273985   1.1376691
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9065347   0.7889088   1.0416986
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.9100432   0.7895082   1.0489803
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               1.0019578   0.8725265   1.1505889
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.0470769   0.6917104   1.5850131
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.0358400   0.6813132   1.5748477
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.0484211   0.6939120   1.5840433
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               1.0245253   0.9398118   1.1168748
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               1.0034229   0.9076562   1.1092939
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               1.0635815   0.9295667   1.2169171


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1700153   -0.3117818   -0.0282488
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0382274   -0.0511018    0.1275566
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.0314198   -0.1876763    0.1248367
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0089864   -0.1004104    0.0824375
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0729830   -0.2023861    0.0564201
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0315408   -0.1038963    0.1669778
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0919578   -0.2445232    0.0606076
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0035860   -0.0548487    0.0620207
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                 0.0519670   -0.0913189    0.1952530
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0386052   -0.0692279    0.1464384
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0360504   -0.1339738    0.0618729
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0386078   -0.1137099    0.0364944
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0203406   -0.0831552    0.0424739
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0349330   -0.0086495    0.0785154
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1011585   -0.2306340    0.0283171
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.0705404   -0.1344898   -0.0065909
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0316830   -0.1088910    0.0455250
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0294764   -0.0487314   -0.0102214
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0313645   -0.0490268   -0.0137022
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0134027   -0.0443408    0.0711462
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.0411579   -0.0817663   -0.0005496
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0209772   -0.0674021    0.0254477
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0728303   -0.0133629    0.1590235
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0445554   -0.0514292   -0.0376816
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0621112   -0.1885431    0.0643207
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0465625   -0.1121956    0.0190706
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0375531   -0.1277104    0.0526042
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.1170077   -0.2650903    0.0310750
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.0589150   -0.1415395    0.0237096
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.0622329   -0.2172346    0.0927688
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0483057   -0.0206974    0.1173088
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0233613   -0.0868155    0.0400928
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0453011   -0.1029750    0.0123728
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0288892   -0.0714839    0.0137055
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0491427   -0.0816056   -0.0166799
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1309289   -0.2549383   -0.0069194
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0838263   -0.1433039   -0.0243487
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0058513   -0.0118369    0.0001344
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0124365   -0.0245638   -0.0003092
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0072220   -0.0427548    0.0571987
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.0470208   -0.0817678   -0.0122737
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0337600   -0.0608140   -0.0067060
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0981352   -0.0291096    0.2253800
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0437893   -0.0502882   -0.0372905
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.2256410   -0.3869581   -0.0643240
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0244806   -0.0700746    0.1190358
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.0201496   -0.1071193    0.1474185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0631944   -0.1023464    0.2287352
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0384647   -0.0242858    0.1012152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                 0.1619469   -0.0437471    0.3676410
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0667832   -0.1886635    0.0550972
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0682557   -0.1860651    0.0495537
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0004795   -0.0665361    0.0655771
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0173087   -0.0362967    0.0709141
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0418734    0.0009175    0.0828293
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.0364650   -0.0692239   -0.0037060
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0187500   -0.1116833    0.0741833
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0073704   -0.0180381    0.0032972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0192851   -0.0364822   -0.0020881
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0089286   -0.1074927    0.0896355
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0285488   -0.0846656    0.0275680
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0108971   -0.0789719    0.1007661
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                 0.0024879   -0.0054486    0.0104244


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.3362243   -0.6542551   -0.0793349
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.2474160   -0.6150303    0.6493053
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.0630930   -0.4282315    0.2086951
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0200213   -0.2454819    0.1646259
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.1893939   -0.5780810    0.1035581
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0396118   -0.1465700    0.1955611
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.1933472   -0.5622954    0.0884710
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0060345   -0.0970435    0.0994273
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                 0.0696225   -0.1438010    0.2432230
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0707763   -0.1496206    0.2489202
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0959517   -0.3902505    0.1360477
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0995398   -0.3113624    0.0780674
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0903352   -0.4082000    0.1557798
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0927330   -0.0306703    0.2013611
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.2137258   -0.5224418    0.0323897
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.2128269   -0.4451219   -0.0178719
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0548080   -0.1973057    0.0707304
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.2929779   -0.4852965   -0.1255611
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1072462   -0.1693114   -0.0484753
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0185808   -0.0648373    0.0954639
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.1732743   -0.3572544   -0.0142333
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0366980   -0.1211960    0.0414319
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.1251187   -0.0365964    0.2616053
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.1004156   -0.1161898   -0.0848643
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.3429054   -1.2545122    0.2000953
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.3813090   -1.0270650    0.0587304
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.3468137   -1.4900550    0.2715393
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5665635   -1.4732492    0.0077340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.2043989   -0.5328846    0.0536948
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.1628232   -0.6483737    0.1797019
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.3059361   -0.2978590    0.6288312
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.2477718   -1.1367579    0.2713566
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.3270308   -0.8129120    0.0286287
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.4317026   -1.2291265    0.0804594
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.5288798   -0.9160579   -0.2199388
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.5486542   -1.1655769   -0.1074785
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.7531853   -1.3571743   -0.3039590
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.6460469   -1.3293377   -0.1631935
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1182944   -0.2396916   -0.0087850
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0536000   -0.4004137    0.3604226
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.3863226   -0.7022554   -0.1290258
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.5491388   -1.0510755   -0.1700354
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.2767916   -0.1867606    0.5592789
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.1360571   -0.1565422   -0.1159347
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.6027397   -1.1137239   -0.2152839
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0747475   -0.2640336    0.3227299
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.0765002   -0.5581893    0.4526648
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0952880   -0.1925725    0.3136653
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.1207818   -0.0926528    0.2925249
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                 0.2881890   -0.1924881    0.5751111
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.1480537   -0.4532076    0.0930221
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.2850679   -0.8839866    0.1234548
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0025410   -0.4214732    0.2929248
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.1295681   -0.3798871    0.4509321
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.1753871   -0.0150247    0.3300789
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.2398482   -0.4835322   -0.0361917
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0418605   -0.2714761    0.1462889
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.1938066   -0.4996371    0.0496540
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1418311   -0.2754264   -0.0222293
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0158730   -0.2071244    0.1450774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0582500   -0.1792033    0.0502968
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0349152   -0.3005937    0.2838742
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                 0.0126236   -0.0284312    0.0520396
