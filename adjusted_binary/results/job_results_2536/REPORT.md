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

* arm
* meducyrs
* feducyrs
* W_mhtcm
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

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
![](/tmp/d8bcab14-248c-4322-b9b9-07778716572f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d8bcab14-248c-4322-b9b9-07778716572f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d8bcab14-248c-4322-b9b9-07778716572f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d8bcab14-248c-4322-b9b9-07778716572f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.7888041   0.6905596   0.8870486
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.5104577   0.4225185   0.5983969
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.4814318   0.3954406   0.5674230
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.6266591   0.5240707   0.7292474
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.1282007   0.0338100   0.2225913
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                0.1542232   0.0740000   0.2344464
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.2255090   0.1263588   0.3246592
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1247370   0.0387563   0.2107177
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.6600981   0.5152616   0.8049347
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              NA                0.5507650   0.4608559   0.6406741
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.5521706   0.4511406   0.6532006
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.4925290   0.3427078   0.6423502
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.4566104   0.3512181   0.5620027
0-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.3468939   0.2485641   0.4452237
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.5250916   0.4038082   0.6463750
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.5022424   0.3847781   0.6197067
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.4362581   0.3405167   0.5319995
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.4392410   0.3595027   0.5189793
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2073073   0.1242576   0.2903570
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3559178   0.2796637   0.4321720
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.7647059   0.6219335   0.9074783
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.8288770   0.7748253   0.8829287
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.7798165   0.7019221   0.8577109
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7209302   0.5866847   0.8551758
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.5675676   0.4077423   0.7273928
0-24 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.5113122   0.4453279   0.5772966
0-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.4308943   0.3432734   0.5185152
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.2758621   0.1129940   0.4387302
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.5758478   0.5342077   0.6174878
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.5705285   0.5231099   0.6179471
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.6142662   0.5594107   0.6691217
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.5774649   0.5371697   0.6177600
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.6757148   0.5386624   0.8127672
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              NA                0.7241159   0.6577877   0.7904441
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.7610112   0.6972889   0.8247334
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.7832662   0.7024520   0.8640805
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.4987731   0.3881125   0.6094336
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.5322196   0.4705941   0.5938450
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.5880583   0.5200035   0.6561131
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5380284   0.4571070   0.6189497
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3870180   0.2914602   0.4825758
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.3466674   0.2935890   0.3997459
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3798449   0.3171404   0.4425493
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.4338200   0.3524681   0.5151719
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.4375913   0.3555754   0.5196072
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.3681949   0.3113591   0.4250307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.3705742   0.3106211   0.4305272
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.4406384   0.3580221   0.5232548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2428648   0.1818663   0.3038633
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.2124694   0.1836772   0.2412616
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2392528   0.2104875   0.2680180
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2283640   0.1969833   0.2597446
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.3671953   0.3212748   0.4131158
0-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.3634254   0.3299123   0.3969385
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3467523   0.3118252   0.3816794
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4050687   0.3760713   0.4340660
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.5149831   0.3869524   0.6430138
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.4594202   0.3721980   0.5466423
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.3233502   0.2133803   0.4333202
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.4319161   0.3177392   0.5460930
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.3856193   0.3270663   0.4441723
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              NA                0.3278378   0.1862205   0.4694552
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.3166990   0.2729724   0.3604256
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3328383   0.2906990   0.3749776
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.6104233   0.5243090   0.6965377
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.5433125   0.4757938   0.6108311
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5967544   0.5246185   0.6688903
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5834435   0.4827161   0.6841708
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.1253411   0.0970691   0.1536130
0-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.1034049   0.0847939   0.1220159
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0901151   0.0760033   0.1042269
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0928352   0.0766978   0.1089726
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.3251471   0.3066266   0.3436676
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.2757330   0.2645557   0.2869102
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.3011196   0.2863159   0.3159233
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2832552   0.2658900   0.3006203
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7595553   0.7100062   0.8091044
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.7285838   0.6865635   0.7706041
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7352947   0.6891157   0.7814737
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7049715   0.6684792   0.7414639
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.2725682   0.2335749   0.3115614
0-24 months   ki1135781-COHORTS          INDIA                          [20-25)              NA                0.2429302   0.2237076   0.2621528
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.2134969   0.1946190   0.2323748
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.2435001   0.2207465   0.2662537
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.5757384   0.5291135   0.6223633
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.5493731   0.5187104   0.5800359
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5667194   0.5343545   0.5990843
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6068314   0.5754535   0.6382093
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.5132942   0.4231051   0.6034833
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.5781881   0.5111447   0.6452316
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.5919189   0.5218259   0.6620119
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6150088   0.5496941   0.6803236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4800027   0.4702873   0.4897182
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.4142252   0.4021076   0.4263427
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.4084056   0.3935384   0.4232728
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4106474   0.3897490   0.4315458
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.3243075   0.2159123   0.4327026
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.1801382   0.1076851   0.2525913
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1695000   0.1013369   0.2376631
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2330998   0.1404220   0.3257775
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.1686747   0.0879814   0.2493680
0-6 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.1011236   0.0383832   0.1638640
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.0781250   0.0122672   0.1439828
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1343284   0.0525405   0.2161162
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.0996678   0.0412159   0.1581198
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.1347535   0.0765174   0.1929897
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.0623103   0.0114465   0.1131741
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.0755399   0.0300384   0.1210415
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.3235294   0.1660656   0.4809933
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.2216216   0.1616902   0.2815530
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.1495327   0.0818708   0.2171946
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1904762   0.0715577   0.3093947
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3445092   0.2650499   0.4239684
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.2690811   0.2388632   0.2992991
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.2938100   0.2525411   0.3350789
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2601828   0.1963429   0.3240227
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.4382033   0.2784663   0.5979404
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              NA                0.3598556   0.2838990   0.4358121
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.4357549   0.3562065   0.5153034
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3127323   0.2213337   0.4041309
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1089226   0.0376319   0.1802132
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.1800836   0.1317569   0.2284102
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.1753440   0.1204189   0.2302690
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1209427   0.0651502   0.1767352
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1360187   0.0750288   0.1970087
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.0736222   0.0452287   0.1020157
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1077933   0.0698000   0.1457865
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1198557   0.0679982   0.1717132
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1718747   0.1096808   0.2340687
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.1378652   0.0970120   0.1787183
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1079150   0.0688431   0.1469870
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1382397   0.0799859   0.1964935
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0985136   0.0554931   0.1415341
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.0689008   0.0510029   0.0867986
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0686828   0.0516037   0.0857620
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0571806   0.0399041   0.0744572
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1526649   0.1157494   0.1895804
0-6 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.1039493   0.0804581   0.1274404
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0732924   0.0509081   0.0956767
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0823907   0.0646377   0.1001437
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.3347551   0.1970409   0.4724693
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.2197485   0.1395425   0.2999545
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.1653602   0.0691086   0.2616117
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.1771315   0.0743450   0.2799181
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1957410   0.1256946   0.2657874
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.0956747   0.0558251   0.1355242
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.0720632   0.0348447   0.1092816
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1252601   0.0584985   0.1920217
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0131983   0.0056771   0.0207196
0-6 months    ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.0098424   0.0060535   0.0136313
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0068490   0.0042007   0.0094973
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0072806   0.0040398   0.0105214
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1141027   0.1013239   0.1268815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1028290   0.0951727   0.1104852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1034786   0.0935148   0.1134425
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0942657   0.0827895   0.1057419
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.1363154   0.0897190   0.1829119
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.1431146   0.1063498   0.1798794
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.1190931   0.0814156   0.1567706
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1473695   0.1163207   0.1784183
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.1726184   0.1385870   0.2066499
0-6 months    ki1135781-COHORTS          INDIA                          [20-25)              NA                0.1360560   0.1204026   0.1517094
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1086400   0.0940972   0.1231828
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1095791   0.0927348   0.1264234
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0843385   0.0578730   0.1108041
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.0458077   0.0327959   0.0588194
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0654165   0.0491436   0.0816893
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0648047   0.0488765   0.0807329
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.2566926   0.1225301   0.3908551
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.3008846   0.1886707   0.4130985
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.4881133   0.3611855   0.6150412
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.3549763   0.2458995   0.4640531
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.3592637   0.3499326   0.3685948
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.2882511   0.2774227   0.2990795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2853422   0.2715748   0.2991096
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.3012845   0.2818774   0.3206916
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.6995894   0.5760482   0.8231306
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.4048332   0.3075300   0.5021364
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.3947877   0.3013834   0.4881921
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3590945   0.2522003   0.4659887
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.3397306   0.2335414   0.4459198
6-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.2204773   0.1226164   0.3183383
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.5110633   0.3832017   0.6389249
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4132544   0.2892333   0.5372756
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.2909208   0.1973555   0.3844861
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.3757766   0.2823843   0.4691688
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2516184   0.1558505   0.3473864
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.2440202   0.1676474   0.3203931
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.6000000   0.4243903   0.7756097
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.6861314   0.6082882   0.7639746
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6818182   0.5843340   0.7793023
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5757576   0.4068406   0.7446746
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2798428   0.2253657   0.3343199
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.2972523   0.2612774   0.3332273
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3559070   0.2840969   0.4277171
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3829063   0.3412980   0.4245147
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.3774499   0.1894120   0.5654878
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              NA                0.5404165   0.4401253   0.6407077
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.5638057   0.4601258   0.6674855
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.6671123   0.5430893   0.7911354
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.5026419   0.3786132   0.6266706
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.4369427   0.3595240   0.5143615
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.4766332   0.3914134   0.5618530
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4082899   0.3132906   0.5032892
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2140062   0.1132086   0.3148038
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.2296175   0.1739848   0.2852501
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1822733   0.1217164   0.2428302
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2528069   0.1683053   0.3373084
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1895584   0.1185054   0.2606115
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.1361385   0.0910686   0.1812083
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2090972   0.1563145   0.2618798
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2526748   0.1762404   0.3291092
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0987109   0.0501018   0.1473200
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.1251526   0.0978935   0.1524117
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1323805   0.1060604   0.1587005
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1416376   0.1119734   0.1713018
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.2189593   0.1753488   0.2625698
6-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.2290887   0.1964648   0.2617127
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.2251691   0.1915418   0.2587963
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2586195   0.2299710   0.2872680
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1851698   0.1475698   0.2227699
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              NA                0.1579049   0.1059434   0.2098663
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.1428151   0.1120983   0.1735320
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1465154   0.1151460   0.1778847
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4689607   0.3662260   0.5716954
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.3986555   0.3258526   0.4714585
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.4928448   0.4113808   0.5743089
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4681338   0.3527954   0.5834722
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0453029   0.0298002   0.0608056
6-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.0384174   0.0279639   0.0488709
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0375964   0.0254207   0.0497722
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0332975   0.0247643   0.0418307
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1531280   0.1349443   0.1713118
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1239905   0.1137389   0.1342422
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1453388   0.1313910   0.1592865
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1289356   0.1131057   0.1447655
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.5718715   0.4830347   0.6607082
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.5666435   0.4994183   0.6338688
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.5891295   0.5146381   0.6636210
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.5084980   0.4489228   0.5680733
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.5220262   0.4663177   0.5777348
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.4705184   0.4347250   0.5063119
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.4801081   0.4417603   0.5184558
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.5290499   0.4908300   0.5672699
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.2965854   0.2010532   0.3921176
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.3197542   0.2415654   0.3979430
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.3093137   0.2304683   0.3881591
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.3163951   0.2396898   0.3931004
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.1891367   0.1786702   0.1996032
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.1997024   0.1859970   0.2134077
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.1978570   0.1808568   0.2148572
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2060100   0.1825782   0.2294419


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.6471285   0.5249233   0.7977839
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.6103312   0.4924498   0.7564308
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.7944419   0.6485745   0.9731156
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               1.2029833   0.4882137   2.9642119
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               1.7590316   0.7463848   4.1455722
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               0.9729827   0.3547491   2.6686331
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              <20               0.8343684   0.6350078   1.0963182
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <20               0.8364978   0.6288770   1.1126636
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <20               0.7461451   0.5128948   1.0854712
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.7597154   0.5281954   1.0927158
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               1.1499773   0.8310694   1.5912603
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               1.0999365   0.7934326   1.5248432
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               1.0068376   0.7620464   1.3302628
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.4751941   0.3016417   0.7486016
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.8158424   0.6042985   1.1014404
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.0839161   0.8894228   1.3209399
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               1.0197601   0.8251613   1.2602513
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.9427549   0.7242352   1.2272075
0-24 months   ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          [20-25)              <20               0.9008834   0.6609097   1.2279908
0-24 months   ki1000108-IRC              INDIA                          [25-30)              <20               0.7591947   0.5364193   1.0744891
0-24 months   ki1000108-IRC              INDIA                          >=30                 <20               0.4860427   0.2526948   0.9348729
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               0.9907627   0.8891852   1.1039440
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               1.0667163   0.9389650   1.2118490
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               1.0028082   0.9090908   1.1061868
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              <20               1.0716295   0.8605875   1.3344255
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <20               1.1262314   0.9075439   1.3976152
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <20               1.1591670   0.9250022   1.4526107
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.0670576   0.8322467   1.3681183
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.1790097   0.9198530   1.5111805
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.0787038   0.8268883   1.4072055
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.8957397   0.6711789   1.1954334
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.9814655   0.7302802   1.3190480
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               1.1209297   0.8237310   1.5253563
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.8414128   0.6605263   1.0718354
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.8468500   0.6616580   1.0838756
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               1.0069635   0.7730494   1.3116569
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               0.8748464   0.6581402   1.1629074
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               0.9851273   0.7462449   1.3004790
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.9402925   0.7068124   1.2508977
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.9897334   0.8478759   1.1553249
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               0.9443267   0.8049639   1.1078174
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               1.1031424   0.9560000   1.2729321
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.8921073   0.6553026   1.2144855
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.6278851   0.4129164   0.9547689
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.8386995   0.5853078   1.2017898
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              <20               0.8501593   0.5436017   1.3295963
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <20               0.8212737   0.6777661   0.9951671
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <20               0.8631267   0.7253690   1.0270465
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.8900585   0.7375597   1.0740881
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.9776074   0.8117788   1.1773113
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.9558014   0.7647338   1.1946068
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.8249881   0.6865667   0.9913171
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.7189594   0.5958261   0.8675395
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <20               0.7406608   0.6177159   0.8880755
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8480253   0.7909504   0.9092189
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9261028   0.8591770   0.9982418
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8711601   0.8014503   0.9469333
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.9592242   0.8798182   1.0457968
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               0.9680594   0.8848057   1.0591467
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               0.9281372   0.8546359   1.0079599
0-24 months   ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          [20-25)              <20               0.8912641   0.7569105   1.0494659
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <20               0.7832790   0.6620899   0.9266506
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <20               0.8933549   0.7531167   1.0597069
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9542062   0.8652834   1.0522674
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.9843349   0.8918798   1.0863743
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               1.0540054   0.9581008   1.1595100
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.1264264   0.9144819   1.3874921
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.1531766   0.9349517   1.4223368
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.1981605   0.9775691   1.4685290
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.8629642   0.8352558   0.8915917
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.8508402   0.8182891   0.8846861
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.8555105   0.8111179   0.9023328
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.5554550   0.3297904   0.9355343
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.5226521   0.3104715   0.8798401
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.7187616   0.4280719   1.2068492
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.5995185   0.2738754   1.3123572
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.4631696   0.1757087   1.2209195
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               0.7963753   0.3671407   1.7274400
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               1.3520261   0.6546690   2.7922120
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.6251793   0.2289308   1.7072809
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.7579170   0.3282251   1.7501350
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               0.6850123   0.3925446   1.1953848
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               0.4621920   0.2377997   0.8983254
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.5887446   0.2667663   1.2993403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               0.7810565   0.5862734   1.0405542
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               0.8528365   0.6358837   1.1438099
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               0.7552275   0.5399229   1.0563888
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              <20               0.8212068   0.5400004   1.2488521
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <20               0.9944126   0.6625241   1.4925594
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <20               0.7136694   0.4481630   1.1364706
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.6533169   0.8156292   3.3513471
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.6098036   0.7799021   3.3228115
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.1103547   0.4987225   2.4720914
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.5412653   0.3006175   0.9745546
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.7924885   0.4486084   1.3999694
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.8811707   0.4750545   1.6344690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.8021259   0.5047467   1.2747105
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.6278703   0.3771645   1.0452234
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               0.8043050   0.4634931   1.3957198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               0.6994035   0.4210132   1.1618763
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               0.6971912   0.4220750   1.1516334
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.5804339   0.3415311   0.9864505
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.6808982   0.4891493   0.9478134
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20               0.4800869   0.3252596   0.7086137
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <20               0.5396834   0.3905551   0.7457544
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.6564455   0.3790493   1.1368460
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.4939736   0.2422142   1.0074138
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.5291377   0.2600736   1.0765672
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.4887820   0.2822656   0.8463938
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.3681557   0.1962755   0.6905530
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.6399280   0.3366466   1.2164321
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.7457291   0.4643088   1.1977199
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.5189294   0.3405970   0.7906346
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 <20               0.5516308   0.3275548   0.9289945
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.9011965   0.7879096   1.0307720
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9068905   0.7824920   1.0510655
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8261481   0.7002852   0.9746325
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               1.0498783   0.6868321   1.6048238
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               0.8736585   0.5496168   1.3887480
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.0810918   0.7253029   1.6114087
0-6 months    ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          [20-25)              <20               0.7881891   0.6273525   0.9902601
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              <20               0.6293650   0.4959610   0.7986521
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 <20               0.6348055   0.4944337   0.8150295
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.5431402   0.3559415   0.8287913
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.7756416   0.5201411   1.1566474
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.7683877   0.5162879   1.1435862
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.1721594   0.6190225   2.2195601
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.9015481   1.0640448   3.3982453
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.3828847   0.7586117   2.5208814
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.8023385   0.7685194   0.8376459
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.7942417   0.7537852   0.8368695
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.8386165   0.7831520   0.8980091
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.5786726   0.4320430   0.7750663
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.5643135   0.4222971   0.7540893
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.5132932   0.3648607   0.7221110
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.6489769   0.3785919   1.1124670
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               1.5043193   1.0090430   2.2426957
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               1.2164181   0.7919061   1.8684954
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               1.2916799   0.8595028   1.9411652
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.8649035   0.5252451   1.4242077
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.8387858   0.5360376   1.3125230
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.1435523   0.8354684   1.5652440
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               1.1363636   0.8204477   1.5739240
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.9595960   0.6340334   1.4523280
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               1.0622118   0.8365929   1.3486773
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               1.2718104   0.8939165   1.8094550
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               1.3682907   1.1146989   1.6795742
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              <20               1.4317569   0.8471442   2.4198097
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <20               1.4937231   0.8856429   2.5193099
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <20               1.7674195   1.0434789   2.9936128
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               0.8692923   0.6435123   1.1742885
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               0.9482560   0.7015616   1.2816969
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               0.8122878   0.5810752   1.1355012
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               1.0729478   0.6336902   1.8166873
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.8517198   0.4795559   1.5127047
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               1.1813062   0.6650700   2.0982519
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.7181873   0.4363034   1.1821889
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               1.1030748   0.7035904   1.7293785
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               1.3329651   0.8259986   2.1510883
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               1.2678703   0.7408041   2.1699329
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               1.3410933   0.7893782   2.2784152
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               1.4348739   0.8412750   2.4473130
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               1.0462618   0.8198706   1.3351664
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.0283605   0.8026907   1.3174755
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               1.1811306   0.9413383   1.4820064
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              <20               0.8527569   0.6030624   1.2058359
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <20               0.7712657   0.6178488   0.9627771
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <20               0.7912485   0.6437282   0.9725753
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.8500830   0.6392569   1.1304395
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               1.0509300   0.7985594   1.3830578
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.9982368   0.7177557   1.3883229
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.8480131   0.6616811   1.0868169
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.8298910   0.5938959   1.1596631
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <20               0.7349980   0.5213421   1.0362142
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8097181   0.7008167   0.9355420
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9491324   0.8150362   1.1052913
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8420119   0.7100428   0.9985089
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.9908582   0.8155342   1.2038733
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.0301782   0.8440617   1.2573336
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               0.8891823   0.7330095   1.0786290
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9013310   0.7910177   1.0270283
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.9197010   0.8052913   1.0503652
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               1.0134547   0.8914933   1.1521012
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.0781185   0.7215820   1.6108210
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.0429161   0.6936479   1.5680492
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.0667926   0.7151538   1.5913311
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               1.0558625   0.9702281   1.1490551
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               1.0461058   0.9498576   1.1521066
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               1.0892124   0.9597618   1.2361228


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.2831437   -0.3779914   -0.1882961
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0263058   -0.0616073    0.1142188
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.1621062   -0.2977089   -0.0265034
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0077655   -0.0970596    0.0815286
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0509078   -0.1391238    0.0373083
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0315408   -0.1038963    0.1669778
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0919578   -0.2445232    0.0606076
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0184118   -0.0356347    0.0724584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                 0.0706967   -0.0580269    0.1994203
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0466815   -0.0565670    0.1499300
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0113038   -0.1002687    0.0776612
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0497285   -0.1233713    0.0239144
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0176965   -0.0763133    0.0409203
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0095099   -0.0333494    0.0523691
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.0416735   -0.1576397    0.0742927
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.0541745   -0.1191744    0.0108253
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0323502   -0.1094153    0.0447148
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0247315   -0.0438513   -0.0056116
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0326936   -0.0495546   -0.0158325
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0382318   -0.0845155    0.0080519
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.0350376   -0.0722593    0.0021842
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0041229   -0.0478725    0.0396266
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0687953   -0.0128970    0.1504876
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0362929   -0.0429072   -0.0296786
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1431754   -0.2420220   -0.0443288
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0465625   -0.1121956    0.0190706
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.0086124   -0.0446439    0.0618687
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.1170077   -0.2650903    0.0310750
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.0562739   -0.1361204    0.0235726
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.0559918   -0.2077960    0.0958124
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0489721   -0.0195805    0.1175248
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0417330   -0.0977987    0.0143327
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0333523   -0.0880038    0.0212992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0315944   -0.0725753    0.0093865
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0597464   -0.0934094   -0.0260833
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.0961187   -0.2180146    0.0257771
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0844453   -0.1438863   -0.0250043
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0041413   -0.0094223    0.0011397
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0089710   -0.0205775    0.0026355
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0015767   -0.0456754    0.0425221
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.0509047   -0.0832151   -0.0185943
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0228605   -0.0470625    0.0013416
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0978528   -0.0253730    0.2210787
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0374183   -0.0437625   -0.0310741
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.3252304   -0.4393864   -0.2110744
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0122197   -0.1022037    0.0777644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0275279   -0.1168422    0.0617863
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0631944   -0.1023464    0.2287352
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0386219   -0.0261020    0.1033458
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                 0.1844970    0.0065395    0.3624545
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0515679   -0.1660253    0.0628895
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0254304   -0.0689884    0.1198492
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0008488   -0.0646979    0.0630004
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0348769   -0.0123407    0.0820946
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0197891   -0.0213190    0.0608972
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.0331364   -0.0621109   -0.0041619
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0210440   -0.1135812    0.0714932
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0072731   -0.0177554    0.0032093
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0171556   -0.0337133   -0.0005978
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0093715   -0.0923637    0.0736208
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0319183   -0.0841682    0.0203316
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0155165   -0.0709241    0.1019572
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                 0.0079458    0.0003149    0.0155766


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.5599484   -0.7903289   -0.3592135
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.1702569   -0.6396028    0.5800973
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.3255197   -0.6352677   -0.0744433
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0173011   -0.2370456    0.1634088
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.1321078   -0.3903261    0.0781530
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0396118   -0.1465700    0.1955611
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.1933472   -0.5622954    0.0884710
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0309828   -0.0628951    0.1165692
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                 0.0947155   -0.0956408    0.2519993
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0855827   -0.1249044    0.2566844
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0300860   -0.2963645    0.1814977
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.1282115   -0.3351402    0.0466460
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0785922   -0.3730933    0.1527443
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0252448   -0.0954037    0.1326050
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.0880469   -0.3636176    0.1318342
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.1634497   -0.3937376    0.0287877
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0559622   -0.1981776    0.0693733
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.2458163   -0.4415536   -0.0766566
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1117906   -0.1710162   -0.0555604
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0530023   -0.1194029    0.0094596
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.1475077   -0.3155605   -0.0009223
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0072128   -0.0867404    0.0664950
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.1181869   -0.0342741    0.2481738
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0817943   -0.0969501   -0.0668478
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.7904475   -1.4835240   -0.2907877
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.3813090   -1.0270650    0.0587304
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.0795382   -0.5645849    0.4584826
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5665635   -1.4732492    0.0077340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.1952359   -0.5117499    0.0550097
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.1464943   -0.6212068    0.1892156
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.3101569   -0.2895973    0.6309829
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.4426228   -1.1848871    0.0474745
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.2407719   -0.7023963    0.0956776
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.4721278   -1.2286031    0.0275701
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.6429972   -1.0468262   -0.3188417
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.4027833   -1.0151489    0.0234960
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.7587473   -1.3622822   -0.3094083
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.4572531   -1.0687429   -0.0265106
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0853312   -0.2015184    0.0196207
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0117016   -0.3983921    0.2680593
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.4182330   -0.7101179   -0.1761673
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.3718472   -0.8252760   -0.0310576
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.2759952   -0.1696406    0.5518427
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.1162616   -0.1362637   -0.0966116
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.8687662   -1.2712820   -0.5375840
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0373108   -0.3524383    0.2043898
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.1045129   -0.5101598    0.1921724
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0952880   -0.1925725    0.3136653
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.1212753   -0.0998056    0.2979150
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                 0.3283175   -0.0785488    0.5816996
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.1143225   -0.3996323    0.1128279
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.1062094   -0.3894008    0.4250315
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0044977   -0.4067969    0.2827566
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.2610787   -0.1906413    0.5414196
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0828869   -0.1061997    0.2396522
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.2179547   -0.4314285   -0.0363169
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0469820   -0.2754279    0.1405463
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.1912464   -0.4939552    0.0501268
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1261693   -0.2547131   -0.0107947
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0166604   -0.1755564    0.1207582
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0651251   -0.1773734    0.0364217
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0497162   -0.2718156    0.2899605
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                 0.0403170    0.0009598    0.0781238
