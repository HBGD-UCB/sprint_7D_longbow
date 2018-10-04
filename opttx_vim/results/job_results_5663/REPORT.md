---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
```




# Results Detail

## Results Plots
![](/tmp/5b4baed1-4cae-4573-a364-e55f8015a7fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5b4baed1-4cae-4573-a364-e55f8015a7fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.5503204   0.4500916   0.6505491
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1728349   0.0679802   0.2776897
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4710675   0.2520302   0.6901047
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3123557   0.2371231   0.3875882
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5982583   0.5254360   0.6710805
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2403638   0.1491482   0.3315794
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8444065   0.7615845   0.9272285
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.4843327   0.3027213   0.6659441
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6802887   0.6397035   0.7208738
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7705845   0.7076536   0.8335153
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6333935   0.5806772   0.6861098
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2835389   0.2321945   0.3348832
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3536534   0.3045314   0.4027754
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2703220   0.2388183   0.3018257
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4447779   0.4107149   0.4788409
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.5080491   0.3999297   0.6161684
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3373531   0.2949944   0.3797119
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6467934   0.5955980   0.6979887
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1258346   0.1083669   0.1433024
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3496436   0.3332614   0.3660257
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7065867   0.6709136   0.7422598
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3561961   0.3345781   0.3778142
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6684315   0.6380119   0.6988511
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5892755   0.5353276   0.6432234
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4149625   0.3985672   0.4313577
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2310937   0.1499800   0.3122075
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1435613   0.0489029   0.2382196
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1418674   0.0815179   0.2022169
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.1511526   0.0710900   0.2312152
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1707993   0.0814401   0.2601585
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3726213   0.2816246   0.4636181
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5165093   0.3935846   0.6394340
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.4459266   0.3186295   0.5732236
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                0.7226914   0.6627402   0.7826425
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4052807   0.3719135   0.4386480
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3226136   0.2386602   0.4065670
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2322640   0.1705111   0.2940169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2302937   0.1878628   0.2727245
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2654670   0.2126778   0.3182563
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1114376   0.0891273   0.1337479
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2375064   0.2050034   0.2700095
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2526669   0.1565301   0.3488038
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2633984   0.1732941   0.3535027
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0707629   0.0572215   0.0843044
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1879932   0.1740071   0.2019793
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2979236   0.2449166   0.3509307
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1496394   0.1328367   0.1664422
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2233910   0.1965442   0.2502378
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2141928   0.1416417   0.2867438
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3369600   0.3217562   0.3521639
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4304207   0.2707476   0.5900939
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4245904   0.2211658   0.6280150
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2096008   0.1236192   0.2955824
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.3686916   0.2652320   0.4721513
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2895842   0.1217215   0.4574468
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7794793   0.6679742   0.8909844
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4330269   0.3706644   0.4953894
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.6682992   0.5816647   0.7549337
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4254869   0.3312645   0.5197093
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2794015   0.2099154   0.3488877
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2223509   0.1725087   0.2721930
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1345867   0.1064687   0.1627046
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2767176   0.2415624   0.3118728
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3351030   0.1986392   0.4715668
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3349941   0.2926098   0.3773784
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5196583   0.4557333   0.5835834
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0511229   0.0402659   0.0619799
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2436169   0.2220038   0.2652301
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7268699   0.6819180   0.7718218
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2430307   0.2212107   0.2648507
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6297956   0.5924891   0.6671020
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.4897116   0.4248176   0.5546055
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2006696   0.1903652   0.2109739


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6067349   0.5478330   0.6656369
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2319512   0.1776548   0.2862477
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5954955   0.5343852   0.6566058
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3474925   0.2871912   0.4077939
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6193217   0.5645912   0.6740523
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5448414   0.4896702   0.6000126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8443585   0.8002812   0.8884357
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6411031   0.5946260   0.6875802
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6906824   0.6502787   0.7310862
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8290925   0.7928508   0.8653341
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6633349   0.6263196   0.7003502
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4354093   0.3986645   0.4721541
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4776218   0.4420396   0.5132040
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3470437   0.3279130   0.3661745
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.5186596   0.5003409   0.5369783
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.5565300   0.4983224   0.6147377
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3575387   0.3075771   0.4075002
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6742599   0.6367966   0.7117231
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1672968   0.1486162   0.1859773
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3968685   0.3887743   0.4049627
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7642248   0.7416481   0.7868014
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3876961   0.3745935   0.4007986
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6861661   0.6697194   0.7026128
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6413463   0.6049148   0.6777778
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4944512   0.4866129   0.5022894
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3549397   0.2972283   0.4126512
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1933412   0.1425447   0.2441376
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1757781   0.1276060   0.2239501
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4286675   0.3729012   0.4844338
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3620557   0.3088836   0.4152277
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4116589   0.3519418   0.4713760
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5111278   0.4599853   0.5622704
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4243884   0.3764886   0.4722881
0-6 months    ki1000109-EE               PAKISTAN                       observed             NA                0.7399029   0.6955698   0.7842360
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4242287   0.3964587   0.4519986
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3911859   0.3442716   0.4381001
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3474992   0.3101928   0.3848056
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2388815   0.2072854   0.2704776
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3026970   0.2699873   0.3354067
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1957956   0.1798786   0.2117126
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.3131660   0.2947785   0.3315536
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3179753   0.2616838   0.3742667
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2773806   0.2415860   0.3131752
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0994478   0.0864032   0.1124924
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2586182   0.2513724   0.2658640
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3252020   0.2973881   0.3530160
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1907026   0.1799659   0.2014392
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2391173   0.2239984   0.2542362
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3608426   0.2974856   0.4241996
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4110797   0.4036412   0.4185183
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4198775   0.3428841   0.4968710
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4212345   0.3434726   0.4989964
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2100257   0.1526848   0.2673667
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.3966511   0.3178598   0.4754424
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3657370   0.2906789   0.4407950
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7788093   0.7110744   0.8465443
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5037275   0.4595016   0.5479534
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7563750   0.7023532   0.8103968
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5753414   0.5230848   0.6275979
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3000218   0.2579700   0.3420736
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2630647   0.2246735   0.3014559
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2280683   0.2075019   0.2486348
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3646052   0.3433626   0.3858479
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3913012   0.3205913   0.4620111
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3575434   0.3075819   0.4075049
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5609474   0.5137668   0.6081280
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0770498   0.0630845   0.0910151
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2456244   0.2361530   0.2550957
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7640923   0.7362679   0.7919167
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2666562   0.2530562   0.2802563
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6448365   0.6244670   0.6652060
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6048782   0.5650203   0.6447361
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2172462   0.2078868   0.2266056


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.9070194   0.7868564   1.0455329
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.7451349   0.4297227   1.2920563
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.7910513   0.5071609   1.2338534
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.8988846   0.7644438   1.0569692
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.9659895   0.8930206   1.0449207
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.4411629   0.3113948   0.6250095
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          1.0000569   0.9270069   1.0788632
0-24 months   ki1000108-IRC              INDIA                          optimal              observed          0.7554678   0.5262177   1.0845921
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9849515   0.9686355   1.0015422
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9294313   0.8749099   0.9873502
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.9548624   0.9021108   1.0106987
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6512007   0.5595405   0.7578760
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.7404465   0.6621091   0.8280523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7789278   0.7044652   0.8612612
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          0.8575526   0.8031797   0.9156064
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.9128871   0.7593403   1.0974826
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.9435431   0.8212713   1.0840189
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.9592642   0.9107405   1.0103732
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.7521642   0.6860548   0.8246441
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8810060   0.8452929   0.9182281
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9245797   0.8894194   0.9611299
0-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.9187509   0.8738514   0.9659574
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9741540   0.9377916   1.0119264
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.9188102   0.8591780   0.9825813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8392386   0.8108621   0.8686081
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.6510788   0.4894619   0.8660604
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.7425280   0.4068038   1.3553164
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.8070824   0.5880696   1.1076614
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          0.3526104   0.2148419   0.5787237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.4717487   0.2897617   0.7680341
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9051701   0.7492746   1.0935014
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          1.0105286   0.8165549   1.2505810
0-6 months    ki1000108-IRC              INDIA                          optimal              observed          1.0507511   0.8073136   1.3675949
0-6 months    ki1000109-EE               PAKISTAN                       optimal              observed          0.9767381   0.9260322   1.0302205
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9553356   0.9145496   0.9979405
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.8247067   0.6542379   1.0395928
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.6683870   0.5261759   0.8490339
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9640498   0.8498167   1.0936383
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8770058   0.7415583   1.0371932
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.5691527   0.4753778   0.6814262
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          0.7584041   0.6713153   0.8567909
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.7946119   0.5652518   1.1170387
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.9495919   0.6923701   1.3023740
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          0.7115590   0.6434159   0.7869189
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.7269140   0.6791425   0.7780458
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9161186   0.7834016   1.0713194
0-6 months    ki1135781-COHORTS          INDIA                          optimal              observed          0.7846744   0.7130597   0.8634817
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9342317   0.8431884   1.0351055
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          0.5935906   0.4554957   0.7735525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8196951   0.7873615   0.8533564
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          1.0251103   0.7454156   1.4097518
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          1.0079669   0.6557664   1.5493279
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.9979767   0.6835837   1.4569649
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.9295111   0.7673587   1.1259284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.7917826   0.4645619   1.3494857
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          1.0008603   0.8871779   1.1291098
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8596451   0.7962283   0.9281128
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.8835554   0.8045777   0.9702855
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.7395381   0.6162675   0.8874663
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9312708   0.7573774   1.1450899
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8452326   0.7181482   0.9948060
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.5901155   0.4908888   0.7093997
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          0.7589513   0.6806568   0.8462518
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.8563813   0.6030050   1.2162235
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.9369326   0.8149800   1.0771341
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.9263941   0.8525371   1.0066495
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.6635044   0.5461948   0.8060092
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9918271   0.9150301   1.0750695
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9512855   0.9066441   0.9981249
6-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.9114008   0.8461262   0.9817111
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9766748   0.9295490   1.0261897
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.8096036   0.7251924   0.9038402
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9236965   0.8993771   0.9486736
