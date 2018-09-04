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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_nrooms
* W_nchldlt5
* impfloor
* impsan
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mage       ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                   0       45     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                   1       81     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               0       41     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               1       52     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       18     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1       28     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                   0       90     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                   1       27     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               0       47     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               1       18     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       42     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        9     233
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                   0       55     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                   1       90     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               0       35     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               1       48     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       11     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1       10     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                   0       41     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                   1       25     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               0       88     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               1       40     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       28     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1       18     240
0-24 months   ki0047075b-MAL-ED          PERU                           <25                   0       69     303
0-24 months   ki0047075b-MAL-ED          PERU                           <25                   1      103     303
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               0       21     303
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               1       43     303
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       25     303
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1       42     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   0       65     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   1       85     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               0       32     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               1       27     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       46     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       59     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                   0       15     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                   1       72     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               0        9     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               1       60     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       17     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       89     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                   0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                   1      204     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               1      101     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       40     373
0-24 months   ki1000108-IRC              INDIA                          <25                   0       83     410
0-24 months   ki1000108-IRC              INDIA                          <25                   1      175     410
0-24 months   ki1000108-IRC              INDIA                          [25-30)               0       49     410
0-24 months   ki1000108-IRC              INDIA                          [25-30)               1       74     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  0       15     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  1       14     410
0-24 months   ki1000109-EE               PAKISTAN                       <25                   0        4     754
0-24 months   ki1000109-EE               PAKISTAN                       <25                   1       40     754
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)               0       18     754
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)               1      264     754
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       44     754
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  1      384     754
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                   0      305    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                   1      634    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               0      124    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               1      297    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       44    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1      129    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                   0       34     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                   1      150     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               0       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               1      120     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       16     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       76     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                   0      115     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                   1      198     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)               0       51     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)               1      131     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0       45     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       87     627
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                   0      211     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                   1      158     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)               0      120     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)               1       89     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       65     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       57     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                   0      212     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                   1      187     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               0      123     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               1      108     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0       61     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       67     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                   0      603    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                   1      322    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               0      518    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               1      295    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      433    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1      205    2376
0-24 months   ki1101329-Keneba           GAMBIA                         <25                   0      592    2859
0-24 months   ki1101329-Keneba           GAMBIA                         <25                   1      569    2859
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)               0      346    2859
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)               1      325    2859
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      439    2859
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      588    2859
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                   0       66     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                   1       92     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               0       32     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               1       32     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       27     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1       32     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                   0      833    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                   1      508    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)               0      534    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)               1      270    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3177
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                   0      236    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                   1      430    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               0       96    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               1      260    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       60    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1      122    1204
0-24 months   ki1119695-PROBIT           BELARUS                        <25                   0     7489   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <25                   1     1652   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               0     4017   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               1      716   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2561   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      462   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                   0     4961   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                   1     3218   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               0     2089   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               1     1408   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1417   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      940   14033
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                   0      139    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                   1      430    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               0       64    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               1      230    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0      118    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1      379    1360
0-24 months   ki1135781-COHORTS          INDIA                          <25                   0     1382    5313
0-24 months   ki1135781-COHORTS          INDIA                          <25                   1      895    5313
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)               0     1140    5313
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)               1      612    5313
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  0      731    5313
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  1      553    5313
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                   0      419    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                   1      930    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               0      291    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               1      565    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      249    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1      604    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                   0      116     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                   1      185     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               0       61     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               1      110     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0       66     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1      132     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                   0    20266   54391
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                   1    20677   54391
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               0     4791   54391
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               1     3999   54391
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     2467   54391
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1     2191   54391
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                   0       77     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                   1       49     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)               0       68     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)               1       25     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       26     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  1       20     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                   0       95     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                   1       22     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)               0       49     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)               1       16     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  0       44     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  1        7     233
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                   0       91     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                   1       54     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)               0       56     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)               1       27     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  0       18     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  1        3     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                   0       50     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                   1       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)               0      110     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)               1       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  0       38     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  1        8     240
0-6 months    ki0047075b-MAL-ED          PERU                           <25                   0       99     303
0-6 months    ki0047075b-MAL-ED          PERU                           <25                   1       73     303
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)               0       36     303
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)               1       28     303
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  0       39     303
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  1       28     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   0       93     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   1       57     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               0       40     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               1       19     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       68     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       37     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                   0       49     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                   1       38     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               0       38     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               1       31     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       67     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       39     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                   0      103     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                   1      116     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               0       53     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               1       54     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       18     368
0-6 months    ki1000108-IRC              INDIA                          <25                   0      144     410
0-6 months    ki1000108-IRC              INDIA                          <25                   1      114     410
0-6 months    ki1000108-IRC              INDIA                          [25-30)               0       73     410
0-6 months    ki1000108-IRC              INDIA                          [25-30)               1       50     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  0       19     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  1       10     410
0-6 months    ki1000109-EE               PAKISTAN                       <25                   0        8     754
0-6 months    ki1000109-EE               PAKISTAN                       <25                   1       36     754
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)               0       70     754
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)               1      212     754
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  0      118     754
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  1      310     754
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                   0      559    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                   1      379    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)               0      224    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)               1      195    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       96    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       77    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                   0      112     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                   1       71     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               0       79     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               1       63     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       63     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       28     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                   0      208     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                   1      105     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)               0      112     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)               1       70     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  0       89     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       43     627
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                   0      282     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                   1       87     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)               0      159     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)               1       50     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       92     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       30     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                   0      268     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                   1      131     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               0      169     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               1       62     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0       92     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       36     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                   0      738    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                   1      187    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               0      646    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               1      167    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      530    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1      108    2376
0-6 months    ki1101329-Keneba           GAMBIA                         <25                   0      696    2443
0-6 months    ki1101329-Keneba           GAMBIA                         <25                   1      305    2443
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)               0      370    2443
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)               1      160    2443
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  0      613    2443
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  1      299    2443
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                   0       98     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                   1       52     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               0       45     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               1       15     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       37     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1       17     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                   0      478    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                   1      188    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)               0      258    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)               1       98    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  0      134    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  1       48    1204
0-6 months    ki1119695-PROBIT           BELARUS                        <25                   0     8141   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <25                   1      998   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)               0     4324   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)               1      409   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  0     2747   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  1      274   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                   0     6041   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                   1     2124   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               0     2601   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               1      892   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1753   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      600   14011
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                   0      303    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                   1      135    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)               0      169    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)               1       73    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  0      264    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  1      147    1091
0-6 months    ki1135781-COHORTS          INDIA                          <25                   0     1739    5135
0-6 months    ki1135781-COHORTS          INDIA                          <25                   1      448    5135
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)               0     1410    5135
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)               1      289    5135
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  0     1009    5135
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  1      240    5135
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                   0     1033    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                   1      316    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)               0      672    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)               1      184    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  0      622    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  1      231    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                   0       72     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                   1       29     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)               0       28     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)               1       26     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  0       42     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  1       23     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                   0    23654   54318
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                   1    17228   54318
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               0     5532   54318
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               1     3250   54318
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     2820   54318
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1     1834   54318
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                   0       37     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                   1       32     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               0       38     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               1       27     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       17     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        8     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                   0       76     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                   1        5     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               0       45     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               1        2     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       38     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        2     168
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                   0       52     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                   1       36     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               0       28     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               1       21     155
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       11     155
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        7     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                   0       38     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                   1        9     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               0       88     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               1       22     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       28     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1       10     195
6-24 months   ki0047075b-MAL-ED          PERU                           <25                   0       52     149
6-24 months   ki0047075b-MAL-ED          PERU                           <25                   1       30     149
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               0       18     149
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               1       15     149
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       20     149
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1       14     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   0       42     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   1       28     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               0       20     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               1        8     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       39     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       22     159
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                   0       10     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                   1       34     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               0        6     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               1       29     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       16     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       50     145
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                   0       17     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                   1       88     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               0        8     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)               1       47     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0        3     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       22     185
6-24 months   ki1000108-IRC              INDIA                          <25                   0       83     236
6-24 months   ki1000108-IRC              INDIA                          <25                   1       61     236
6-24 months   ki1000108-IRC              INDIA                          [25-30)               0       49     236
6-24 months   ki1000108-IRC              INDIA                          [25-30)               1       24     236
6-24 months   ki1000108-IRC              INDIA                          >=30                  0       15     236
6-24 months   ki1000108-IRC              INDIA                          >=30                  1        4     236
6-24 months   ki1000109-EE               PAKISTAN                       <25                   0        4     192
6-24 months   ki1000109-EE               PAKISTAN                       <25                   1        4     192
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)               0       18     192
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)               1       52     192
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       40     192
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       74     192
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                   0      271     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                   1      255     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               0       97     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               1      102     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       36     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       52     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                   0       30     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                   1       79     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               0       18     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               1       57     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       11     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       48     243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                   0       75     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                   1       93     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)               0       36     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)               1       61     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0       36     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       44     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                   0      164     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                   1       71     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)               0      101     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)               1       39     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       55     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       27     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                   0      200     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                   1       56     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               0      116     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)               1       46     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0       57     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       31     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                   0      464    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                   1      135    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               0      409    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)               1      128    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      358    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       97    1591
6-24 months   ki1101329-Keneba           GAMBIA                         <25                   0      522    1972
6-24 months   ki1101329-Keneba           GAMBIA                         <25                   1      264    1972
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)               0      320    1972
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)               1      165    1972
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      412    1972
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      289    1972
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                   0       57     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                   1       40     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               0       30     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)               1       17     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       25     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1       15     184
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                   0      833    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                   1      508    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)               0      534    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)               1      270    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3177
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                   0      222     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                   1      242     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               0       94     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               1      162     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       58     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       74     852
6-24 months   ki1119695-PROBIT           BELARUS                        <25                   0     7330   14951
6-24 months   ki1119695-PROBIT           BELARUS                        <25                   1      654   14951
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               0     3941   14951
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               1      307   14951
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2531   14951
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      188   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                   0     3407    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                   1     1094    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               0     1514    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)               1      516    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1066    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      340    7937
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                   0       86     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                   1      295     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               0       38     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               1      157     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0       87     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1      232     895
6-24 months   ki1135781-COHORTS          INDIA                          <25                   0     1242    4062
6-24 months   ki1135781-COHORTS          INDIA                          <25                   1      447    4062
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)               0     1055    4062
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)               1      323    4062
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  0      682    4062
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  1      313    4062
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                   0      328    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                   1      614    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               0      227    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               1      381    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      198    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1      373    2121
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                   0      107     581
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                   1      156     581
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               0       61     581
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               1       84     581
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0       64     581
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1      109     581
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                   0    12552   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                   1     3449   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               0     2697   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               1      749   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1179   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      357   20983


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

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/d242b10f-9945-48a4-8073-06bb8e18d158/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d242b10f-9945-48a4-8073-06bb8e18d158/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d242b10f-9945-48a4-8073-06bb8e18d158/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d242b10f-9945-48a4-8073-06bb8e18d158/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.6583863   0.5792597   0.7375129
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.5632795   0.4654118   0.6611472
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.6248640   0.4986744   0.7510536
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  NA                0.2307692   0.1542613   0.3072772
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.2769231   0.1679053   0.3859408
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1764706   0.0716196   0.2813216
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                0.6262816   0.5482768   0.7042865
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.5698766   0.4678548   0.6718984
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.4667508   0.2474925   0.6860092
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.4164089   0.3157805   0.5170374
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.3166701   0.2429581   0.3903821
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.3935448   0.2796958   0.5073937
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                0.5986879   0.5258866   0.6714892
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.6690605   0.5555675   0.7825534
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.6301476   0.5146652   0.7456300
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.5707062   0.4981053   0.6433072
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.4576497   0.3478707   0.5674288
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.5430403   0.4579496   0.6281310
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.8275862   0.7480598   0.9071126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.8695652   0.7899490   0.9491815
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.8396226   0.7696321   0.9096132
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.6782889   0.6212176   0.7353601
0-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.6016942   0.5150999   0.6882886
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4825135   0.3006176   0.6644095
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.6757348   0.6348217   0.7166480
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.6841667   0.6268360   0.7414975
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.7145358   0.6581488   0.7709227
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.8140565   0.7596013   0.8685116
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.8502550   0.7939353   0.9065747
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.8368306   0.7634693   0.9101918
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.6339414   0.5813695   0.6865132
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.7187154   0.6559331   0.7814976
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6588128   0.5800354   0.7375902
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.4293718   0.3802360   0.4785075
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.4399652   0.3758851   0.5040453
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.4816367   0.3990620   0.5642115
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.4661982   0.4200470   0.5123495
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.4498860   0.3944201   0.5053518
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.4991613   0.4261424   0.5721802
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.3518485   0.3225541   0.3811430
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.3771703   0.3454778   0.4088628
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3458454   0.3116039   0.3800868
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.5052022   0.4767599   0.5336445
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.4792506   0.4431137   0.5153875
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5434513   0.5138096   0.5730929
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                0.5776062   0.5054964   0.6497160
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.4662861   0.3643733   0.5681990
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.5040898   0.4002084   0.6079711
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.3677452   0.2804661   0.4550243
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.3253124   0.2831287   0.3674962
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3307971   0.2925316   0.3690626
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.6401502   0.5887850   0.6915155
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.7171086   0.6522944   0.7819228
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.6321122   0.5385650   0.7256594
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.1808586   0.1586215   0.2030956
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.1525098   0.1361758   0.1688438
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1525250   0.1310918   0.1739581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.3981898   0.3877182   0.4086614
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.4008170   0.3850646   0.4165693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.3877033   0.3689424   0.4064643
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.7568335   0.7241785   0.7894885
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7501668   0.7088252   0.7915084
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7333586   0.6998567   0.7668605
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.3849834   0.3656107   0.4043562
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.3599003   0.3382418   0.3815589
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.4386198   0.4127333   0.4645064
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.6819228   0.6576024   0.7062431
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.6694237   0.6390091   0.6998384
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7103832   0.6813394   0.7394270
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.6047541   0.5540920   0.6554162
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.6121175   0.5507940   0.6734411
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6457720   0.5888827   0.7026613
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.5027883   0.4943260   0.5112506
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.4596996   0.4446491   0.4747501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4784838   0.4589847   0.4979830
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.4272531   0.3483845   0.5061216
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.3250109   0.2419034   0.4081184
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5483413   0.4287799   0.6679027
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  NA                0.1880342   0.1170803   0.2589881
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.2461538   0.1412068   0.3511009
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1372549   0.0426089   0.2319009
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.2424242   0.1388185   0.3460300
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.1406250   0.0802757   0.2009743
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.1739130   0.0641503   0.2836757
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                0.4237666   0.3509306   0.4966025
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.4353994   0.3188042   0.5519945
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4227420   0.3083501   0.5371339
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.3780901   0.3026974   0.4534829
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.3137182   0.2005604   0.4268761
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3590829   0.2710720   0.4470938
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.4304028   0.3302779   0.5305277
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.4519011   0.3431254   0.5606768
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3713744   0.2828592   0.4598897
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.5296804   0.4634861   0.5958746
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.5046729   0.4098096   0.5995362
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4285714   0.2787041   0.5784387
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                0.4418605   0.3811893   0.5025317
0-6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.4065041   0.3195946   0.4934135
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.3448276   0.1716235   0.5180317
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                0.8181818   0.6567991   0.9795646
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              NA                0.7517730   0.6803755   0.8231706
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 NA                0.7242991   0.6643481   0.7842500
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.4046213   0.3713375   0.4379051
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.4482457   0.4100432   0.4864481
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4221937   0.3424636   0.5019238
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.3938678   0.3272890   0.4604466
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.4704617   0.3946077   0.5463158
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3392408   0.2557027   0.4227790
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.3337382   0.2827432   0.3847333
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3811848   0.3138372   0.4485324
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3219561   0.2460518   0.3978605
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.2304549   0.1881979   0.2727120
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2519569   0.1963083   0.3076056
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2556227   0.1836868   0.3275586
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.3205387   0.2760034   0.3650739
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2509150   0.1988136   0.3030164
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2577016   0.1876125   0.3277907
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.2007915   0.1762360   0.2253470
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2171145   0.1907596   0.2434693
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1781962   0.1510190   0.2053734
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.3040324   0.2753951   0.3326697
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.2996779   0.2610117   0.3383441
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3166375   0.2869765   0.3462985
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                0.3443647   0.2700700   0.4186595
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.2311271   0.1369957   0.3252586
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.2690001   0.1678575   0.3701427
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.2808724   0.2325784   0.3291664
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.2684795   0.2026527   0.3343063
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2471443   0.1579450   0.3363436
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.1089797   0.0941358   0.1238236
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0869007   0.0738401   0.0999613
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0901195   0.0734955   0.1067436
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.2622669   0.2528216   0.2717122
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2524590   0.2384435   0.2664744
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2459562   0.2293955   0.2625169
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.3203790   0.2796242   0.3611337
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.3103378   0.2580802   0.3625953
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.3616333   0.3190126   0.4042541
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.2003914   0.1841583   0.2166244
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1727444   0.1552508   0.1902380
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1944090   0.1733302   0.2154877
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2239588   0.2021921   0.2457255
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2199263   0.1931117   0.2467409
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2716384   0.2430081   0.3002687
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                0.3095290   0.2323148   0.3867431
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.5393637   0.4411475   0.6375798
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4003119   0.3099777   0.4906462
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.4192553   0.4111253   0.4273853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.3728021   0.3580665   0.3875378
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.3969540   0.3781650   0.4157429
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.4637681   0.3457305   0.5818057
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.4153846   0.2952075   0.5355617
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3200000   0.1365670   0.5034330
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                0.4090909   0.3060327   0.5121491
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.4285714   0.2895608   0.5675821
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.3888889   0.1629504   0.6148274
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.1914894   0.0787097   0.3042690
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.2000000   0.1250575   0.2749425
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.2631579   0.1227899   0.4035259
6-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                0.3765857   0.2748993   0.4782721
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.4961226   0.3452368   0.6470084
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4317395   0.2872605   0.5762185
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.4000000   0.2848737   0.5151263
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2857143   0.1178567   0.4535719
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3606557   0.2397722   0.4815392
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.7727273   0.6484730   0.8969815
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.8285714   0.7032794   0.9538634
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.7575758   0.6538277   0.8613238
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.4896618   0.4477542   0.5315693
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.5022462   0.4409945   0.5634979
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.5847134   0.5019670   0.6674599
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.7060422   0.6240475   0.7880369
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.7344114   0.6430332   0.8257897
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.7969422   0.7006320   0.8932523
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.5515222   0.4778821   0.6251623
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.6292056   0.5371310   0.7212802
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5543540   0.4494164   0.6592917
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.3002635   0.2435914   0.3569357
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2767749   0.2061088   0.3474410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3309176   0.2386700   0.4231651
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.2236225   0.1734430   0.2738019
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2832854   0.2160750   0.3504958
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3351865   0.2364217   0.4339512
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.2265158   0.1947582   0.2582733
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2415327   0.2073261   0.2757393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2248815   0.1890101   0.2607528
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.3492877   0.3167166   0.3818588
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3330923   0.2931037   0.3730809
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4010741   0.3658900   0.4362582
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                0.4154898   0.3187750   0.5122046
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.3299754   0.1933762   0.4665746
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.3685390   0.2259003   0.5111778
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.3677427   0.2801932   0.4552923
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.3250545   0.2827925   0.3673164
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3308047   0.2924822   0.3691272
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5212867   0.4570426   0.5855308
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.6329889   0.5493686   0.7166093
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5609177   0.4410273   0.6808081
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0824145   0.0663659   0.0984631
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0734328   0.0573478   0.0895179
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0696197   0.0570817   0.0821577
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.2437404   0.2313111   0.2561697
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2579764   0.2394773   0.2764756
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2455439   0.2239119   0.2671759
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.7673654   0.7272899   0.8074409
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7809077   0.7292395   0.8325759
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7125265   0.6676994   0.7573536
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.2525265   0.2324373   0.2726157
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.2418174   0.2200338   0.2636011
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.3205995   0.2931967   0.3480023
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.6469003   0.6170021   0.6767986
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.6333935   0.5959898   0.6707972
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6619280   0.6245061   0.6993499
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.5980017   0.5446109   0.6513925
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.5675376   0.5020145   0.6330607
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6329900   0.5728633   0.6931167
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.2139750   0.2037537   0.2241962
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2210442   0.2016660   0.2404224
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2481204   0.2209912   0.2752495


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6075472   0.5486452   0.6664491
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2317597   0.1774632   0.2860561
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5943775   0.5332672   0.6554878
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3458333   0.2855320   0.4061346
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5445860   0.4894148   0.5997572
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8435115   0.7994342   0.8875887
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6634769   0.6264616   0.7004922
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3459596   0.3268289   0.3650903
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5183631   0.5000444   0.5366817
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5551601   0.4969525   0.6133678
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3966365   0.3885423   0.4047307
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7639706   0.7413939   0.7865473
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3877282   0.3746257   0.4008307
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6373134   0.6008819   0.6737450
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4939604   0.4861221   0.5017987
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3547170   0.2970055   0.4124285
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1931330   0.1423366   0.2439295
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1750000   0.1268279   0.2231721
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4257426   0.3699763   0.4815088
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3598726   0.3067005   0.4130447
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4122137   0.3524966   0.4719309
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.7400531   0.6957200   0.7843861
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3476874   0.3103810   0.3849938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1944444   0.1785274   0.2103615
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3127302   0.2943427   0.3311178
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3181818   0.2618904   0.3744732
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2580829   0.2508371   0.2653287
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3253896   0.2975756   0.3532035
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1902629   0.1795262   0.2009996
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3545455   0.2911884   0.4179025
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4107662   0.4033277   0.4182048
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3647799   0.2897219   0.4398379
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7793103   0.7115754   0.8470453
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2262728   0.2057063   0.2468392
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3640974   0.3428547   0.3853400
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3913043   0.3205945   0.4620142
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2456848   0.2362134   0.2551561
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7642458   0.7364214   0.7920702
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2666174   0.2530174   0.2802175
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6006885   0.5608305   0.6405464
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2170805   0.2077211   0.2264399


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.8555456   0.6957246   1.0520805
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               0.9490842   0.7540472   1.1945682
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25               1.2000000   0.7172304   2.0077230
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               0.7647059   0.3872603   1.5100309
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <25               0.9099366   0.7350758   1.1263934
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <25               0.7452730   0.4585317   1.2113272
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               0.7604787   0.5514685   1.0487051
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25               0.9450921   0.6565812   1.3603786
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25               1.1175447   0.9082224   1.3751105
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25               1.0525478   0.8454460   1.3103816
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.8019007   0.6158824   1.0441031
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.9515234   0.7863350   1.1514136
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0507246   0.9201216   1.1998657
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.0145440   0.8933535   1.1521750
0-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.8870767   0.7508717   1.0479888
0-24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.7113688   0.4834543   1.0467289
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.0124781   0.9564281   1.0718129
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.0574204   0.9836028   1.1367778
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.0444668   0.9521061   1.1457871
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.0279761   0.9215526   1.1466896
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.1337253   1.0068925   1.2765346
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.0392330   0.8998028   1.2002687
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.0246720   0.8539048   1.2295900
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1217243   0.9154744   1.3744407
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.9650101   0.8278563   1.1248866
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               1.0707061   0.9007129   1.2727824
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0719677   0.9532704   1.2054447
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9829382   0.8644512   1.1176656
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9486313   0.8643096   1.0411793
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.0757104   0.9954496   1.1624424
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               0.8072735   0.6302563   1.0340087
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               0.8727222   0.6887014   1.1059133
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.8846137   0.6848645   1.1426223
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               0.8995279   0.6971158   1.1607117
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.1202192   0.9927243   1.2640882
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9874435   0.8342014   1.1688361
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.8432545   0.7794740   0.9122538
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.8433383   0.7490539   0.9494903
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.0065977   0.9604051   1.0550121
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9736647   0.9217629   1.0284888
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.9911913   0.9261191   1.0608358
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.9689828   0.9121198   1.0293907
0-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9348463   0.8648561   1.0105007
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.1393213   1.0548039   1.2306107
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9816709   0.9270035   1.0395622
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0417355   0.9873887   1.0990736
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.0121759   0.8909994   1.1498325
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.0678257   0.9482344   1.2025000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9143006   0.8843581   0.9452568
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.9516607   0.9127192   0.9922636
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.7606988   0.5574175   1.0381135
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.2834110   0.9714530   1.6955466
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25               1.3090909   0.7408040   2.3133231
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               0.7299465   0.3325908   1.6020345
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               0.5800781   0.3165582   1.0629659
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 <25               0.7173913   0.3347556   1.5373911
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              <25               1.0274509   0.7496748   1.4081510
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 <25               0.9975822   0.7261269   1.3705183
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.8297445   0.5516386   1.2480564
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.9497283   0.6973357   1.2934714
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0499493   0.7567538   1.4567399
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8628532   0.6217395   1.1974720
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9527876   0.7602676   1.1940588
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.8091133   0.5581283   1.1729639
0-6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          [25-30)              <25               0.9199829   0.7135573   1.1861255
0-6 months    ki1000108-IRC              INDIA                          >=30                 <25               0.7803993   0.4636288   1.3136004
0-6 months    ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              <25               0.9188337   0.7381789   1.1437003
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 <25               0.8852544   0.7147741   1.0963959
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.1078153   1.0086716   1.2167040
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.0434292   0.8432793   1.2910841
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.1944662   0.9493081   1.5029362
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               0.8613064   0.6421689   1.1552237
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.1421671   0.9066831   1.4388111
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.9646966   0.7304881   1.2739968
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.0933024   0.8223841   1.4534694
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1092089   0.7944392   1.5486956
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.7827918   0.6105317   1.0036546
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.8039642   0.5930983   1.0897998
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0812931   0.9119933   1.2820212
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8874687   0.7307789   1.0777551
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9856775   0.8404142   1.1560491
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               1.0414597   0.9125106   1.1886310
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               0.6711696   0.4236410   1.0633264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               0.7811489   0.5077163   1.2018395
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.9558769   0.7086131   1.2894210
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.8799166   0.5899529   1.3123984
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.7974024   0.7021239   0.9056103
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               0.8269387   0.7128342   0.9593081
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9626031   0.9012139   1.0281739
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9378085   0.8691107   1.0119365
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.9686584   0.7871383   1.1920384
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.1287674   0.9528838   1.3371157
0-6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8620352   0.7576076   0.9808569
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               0.9701466   0.8477577   1.1102044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9819945   0.8413381   1.1461662
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.2128945   1.0526509   1.3975318
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.7425304   1.2923054   2.3496088
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.2932939   0.9332577   1.7922264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.8892007   0.8535401   0.9263512
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.9468073   0.9017847   0.9940776
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.8956731   0.6092572   1.3167349
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               0.6900000   0.3685216   1.2919190
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <25               1.0476190   0.6947683   1.5796715
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <25               0.9506173   0.5046477   1.7907012
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               1.0444444   0.5196644   2.0991707
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25               1.3742690   0.6208427   3.0420190
6-24 months   ki0047075b-MAL-ED          PERU                           <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25               1.3174228   0.8769602   1.9791124
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25               1.1464574   0.7454365   1.7632147
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.7142857   0.3713217   1.3740216
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.9016393   0.5796480   1.4024951
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0722689   0.8598868   1.3371069
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9803922   0.7937267   1.2109568
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.0257002   0.9417507   1.1171332
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.1941170   1.0670770   1.3362816
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.0401806   0.8782166   1.2320146
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.1287457   0.9554279   1.3335040
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.1408527   0.9386597   1.3865993
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.0051346   0.7997609   1.2632471
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.9217733   0.6726490   1.2631640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1020905   0.7905964   1.5363129
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.2668022   0.9179224   1.7482826
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               1.4988945   1.0372411   2.1660199
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0662954   0.8745096   1.3001411
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9927849   0.8037372   1.2262987
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9536331   0.8206007   1.1082321
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.1482630   1.0113794   1.3036729
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               0.7941840   0.4959412   1.2717805
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               0.8869989   0.5658240   1.3904801
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.8839182   0.6838277   1.1425558
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               0.8995548   0.6967081   1.1614603
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.2142819   1.0136973   1.4545571
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.0760255   0.8408475   1.3769808
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.8910187   0.7870412   1.0087328
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.8447509   0.7051747   1.0119535
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.0584065   0.9694334   1.1555455
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0073992   0.9100693   1.1151383
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0176478   0.9362965   1.1060674
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.9285361   0.8569544   1.0060972
6-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9575922   0.8499817   1.0788265
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.2695678   1.1304987   1.4257445
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9791206   0.9088323   1.0548450
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0232303   0.9518591   1.0999529
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               0.9490568   0.8241114   1.0929454
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.0585086   0.9332061   1.2006356
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0330375   0.9407051   1.1344326
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1595766   1.0321197   1.3027731


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0508391   -0.1084423    0.0067640
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0009904   -0.0530742    0.0550551
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0319041   -0.0818526    0.0180443
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0705756   -0.1524390    0.0112879
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0217742   -0.0251148    0.0686631
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0261202   -0.0759137    0.0236733
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0159252   -0.0478482    0.0796987
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0368254   -0.0731192   -0.0005316
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0157198    0.0042876    0.0271520
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0136947   -0.0254290    0.0528185
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0295355   -0.0061947    0.0652657
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0049140   -0.0281779    0.0380059
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0113743   -0.0190758    0.0418244
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0058889   -0.0286286    0.0168507
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0131609   -0.0087226    0.0350444
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0224460   -0.0696412    0.0247491
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                -0.0117490   -0.0581733    0.0346753
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0342684    0.0004940    0.0680427
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0133732   -0.0200776   -0.0066689
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0015533   -0.0082692    0.0051626
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0071371   -0.0167504    0.0310246
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0027448   -0.0117504    0.0172399
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0044735   -0.0135749    0.0225220
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0325593   -0.0035500    0.0686686
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0088279   -0.0123042   -0.0053515
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0725361   -0.1282651   -0.0168071
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0050989   -0.0454845    0.0556822
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0674242   -0.1519873    0.0171388
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0019760   -0.0451527    0.0491047
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0182175   -0.0709978    0.0345628
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0181891   -0.0979410    0.0615629
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0188108   -0.0610256    0.0234040
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0174702   -0.0541133    0.0191728
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                -0.0781288   -0.2361482    0.0798907
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0208689    0.0032578    0.0384800
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                -0.0044447   -0.0533821    0.0444927
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0139492   -0.0218763    0.0497746
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0081165   -0.0208062    0.0370392
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0184278   -0.0480096    0.0111539
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0063471   -0.0251709    0.0124767
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0086979   -0.0137004    0.0310961
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0261829   -0.0732321    0.0208662
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0034638   -0.0355286    0.0286010
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0094710   -0.0148841   -0.0040579
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0041840   -0.0102279    0.0018599
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0050106   -0.0262660    0.0362872
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0101285   -0.0221475    0.0018906
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0150863   -0.0011865    0.0313591
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0450165   -0.0125496    0.1025825
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0084891   -0.0118898   -0.0050884
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0423845   -0.1305218    0.0457528
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                 0.0038123   -0.0640695    0.0716941
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                 0.0187670   -0.0806105    0.1181446
6-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0193874   -0.0503468    0.0891217
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0352201   -0.1201762    0.0497359
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0065831   -0.0966506    0.1098168
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0134133    0.0007020    0.0261245
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0511594   -0.0074193    0.1097381
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0223909   -0.0289322    0.0737139
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0004824   -0.0395030    0.0385383
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0392234    0.0023241    0.0761227
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0002430   -0.0252555    0.0247695
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0148097   -0.0106738    0.0402932
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0241855   -0.0901637    0.0417927
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                -0.0117465   -0.0584239    0.0349309
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0397462   -0.0032780    0.0827704
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0055634   -0.0095170   -0.0016099
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0019444   -0.0062453    0.0101340
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0031196   -0.0333044    0.0270652
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0140909   -0.0011572    0.0293391
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0019216   -0.0240633    0.0202201
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0026867   -0.0350988    0.0404723
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0031055   -0.0014342    0.0076453


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0836793   -0.1838242    0.0079939
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0042735   -0.2585957    0.2122400
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0536766   -0.1414906    0.0273820
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.2040740   -0.4698193    0.0136242
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0350935   -0.0436533    0.1078985
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0479635   -0.1438882    0.0399172
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0188797   -0.0597809    0.0917018
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0574085   -0.1159754   -0.0019151
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0227344    0.0061367    0.0390550
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0165445   -0.0319131    0.0627266
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0445163   -0.0110598    0.0970374
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0113150   -0.0678900    0.0846455
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0238169   -0.0420425    0.0855139
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0170221   -0.0849577    0.0466597
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0253893   -0.0177585    0.0667078
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0404316   -0.1294747    0.0415917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                -0.0330031   -0.1686996    0.0869378
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0508117   -0.0008063    0.0997675
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0798471   -0.1178559   -0.0431308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0039162   -0.0209927    0.0128747
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0093421   -0.0224217    0.0401191
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0070791   -0.0310149    0.0437657
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0065174   -0.0201272    0.0324662
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0510884   -0.0072998    0.1060921
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0178716   -0.0249494   -0.0108427
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.2044901   -0.3775259   -0.0531899
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0264008   -0.2740557    0.2560015
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.3852814   -0.9566711    0.0192503
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0046412   -0.1124452    0.1094042
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0506221   -0.2081268    0.0863485
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0441253   -0.2567303    0.1325126
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0368211   -0.1229402    0.0426934
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0411655   -0.1312622    0.0417557
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                -0.1055718   -0.3417110    0.0890071
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0490467    0.0065234    0.0897500
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                -0.0114135   -0.1452843    0.1068093
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0401198   -0.0686193    0.1377941
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0340212   -0.0951050    0.1479219
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0609969   -0.1636748    0.0326210
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0326420   -0.1341966    0.0598195
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0278127   -0.0464912    0.0968407
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0822892   -0.2411238    0.0562183
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0124863   -0.1349238    0.0967425
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0951780   -0.1505135   -0.0425039
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0162118   -0.0399059    0.0069423
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0153988   -0.0855040    0.1069221
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0532340   -0.1183666    0.0081054
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0631108   -0.0074524    0.1287316
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1269695   -0.0482462    0.2728977
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0206665   -0.0289936   -0.0124067
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.1005840   -0.3315303    0.0903059
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                 0.0092330   -0.1695991    0.1607215
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                 0.0892579   -0.5297766    0.4577959
6-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0489615   -0.1440514    0.2094112
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0965517   -0.3563007    0.1134520
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0084473   -0.1332909    0.1324586
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0266625    0.0017344    0.0509681
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0675638   -0.0135691    0.1422023
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0390144   -0.0548247    0.1245054
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0016090   -0.1406154    0.1204567
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.1492258   -0.0025174    0.2780009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0010739   -0.1179535    0.1035862
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0406751   -0.0318817    0.1081301
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0618074   -0.2449754    0.0944119
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                -0.0329961   -0.1694890    0.0875665
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0708447   -0.0094270    0.1447331
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0723924   -0.1208330   -0.0260453
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0079140   -0.0259830    0.0406912
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0040819   -0.0443728    0.0346546
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0528507   -0.0060740    0.1083243
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0029793   -0.0379042    0.0307705
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0044728   -0.0604442    0.0654158
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0143059   -0.0068120    0.0349808
