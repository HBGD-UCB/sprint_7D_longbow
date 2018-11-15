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

unadjusted

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
0-24 months   ki1000109-EE               PAKISTAN                       <25                   0        2     377
0-24 months   ki1000109-EE               PAKISTAN                       <25                   1       20     377
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)               0        9     377
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)               1      132     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       22     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  1      192     377
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                   0      118     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                   1      215     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               0       48     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               1      130     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       30     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       61     602
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                   0    10150   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                   1    10347   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               0     2398   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               1     2000   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1234   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1     1096   27225
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
0-6 months    ki1000109-EE               PAKISTAN                       <25                   0        4     377
0-6 months    ki1000109-EE               PAKISTAN                       <25                   1       18     377
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)               0       35     377
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)               1      106     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  0       59     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  1      155     377
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                   0      239     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                   1       94     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)               0      129     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)               1       49     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  0       67     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  1       24     602
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                   0    11827   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                   1     8614   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               0     2766   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               1     1625   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1410   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      917   27159
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
6-24 months   ki1000109-EE               PAKISTAN                       <25                   0        2      96
6-24 months   ki1000109-EE               PAKISTAN                       <25                   1        2      96
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)               0        9      96
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)               1       26      96
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       20      96
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       37      96
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                   0      111     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                   1      121     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               0       47     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)               1       81     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       29     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       37     426
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                   0     6293   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                   1     1733   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               0     1351   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)               1      375   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0      590   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      179   10521


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
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/6872a13a-73ce-4f63-8eb7-6f52b27bfc5e/1cf53234-fa47-473f-ad50-f3efd8498bbb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6872a13a-73ce-4f63-8eb7-6f52b27bfc5e/1cf53234-fa47-473f-ad50-f3efd8498bbb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6872a13a-73ce-4f63-8eb7-6f52b27bfc5e/1cf53234-fa47-473f-ad50-f3efd8498bbb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6872a13a-73ce-4f63-8eb7-6f52b27bfc5e/1cf53234-fa47-473f-ad50-f3efd8498bbb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.6428571   0.5590344   0.7266799
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.5591398   0.4580428   0.6602368
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.6086957   0.4673939   0.7499974
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  NA                0.2307692   0.1542613   0.3072772
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.2769231   0.1679053   0.3859408
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1764706   0.0716196   0.2813216
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                0.6206897   0.5415539   0.6998254
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.5783133   0.4718599   0.6847666
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.4761905   0.2621532   0.6902277
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.3787879   0.2615141   0.4960616
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.3125000   0.2320342   0.3929658
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.3913043   0.2499747   0.5326340
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                0.5988372   0.5254676   0.6722069
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.6718750   0.5566518   0.7870982
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.6268657   0.5108682   0.7428631
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.5666667   0.4872393   0.6460940
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.4576271   0.3303004   0.5849539
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.5619048   0.4668527   0.6569569
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.8275862   0.7480598   0.9071126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.8695652   0.7899490   0.9491815
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.8396226   0.7696321   0.9096132
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.6782946   0.6212247   0.7353644
0-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.6016260   0.5150027   0.6882493
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4827586   0.3006666   0.6648507
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.6751864   0.6328498   0.7175229
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.7054632   0.6465699   0.7643565
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.7456647   0.6827952   0.8085342
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.8152174   0.7590704   0.8713644
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.8450704   0.7854853   0.9046555
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.8260870   0.7485421   0.9036319
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.6325879   0.5791364   0.6860393
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.7197802   0.6544809   0.7850795
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6590909   0.5781627   0.7400191
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.4281843   0.3776613   0.4787072
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.4258373   0.3587524   0.4929222
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.4672131   0.3786174   0.5558089
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.4686717   0.4196753   0.5176681
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.4675325   0.4031480   0.5319170
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.5234375   0.4368566   0.6100184
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.3481081   0.3174028   0.3788134
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.3628536   0.3297954   0.3959119
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3213166   0.2850732   0.3575601
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.4900947   0.4613345   0.5188550
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.4843517   0.4465318   0.5221716
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5725414   0.5422800   0.6028028
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                0.5822785   0.5052409   0.6593160
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.5000000   0.3772837   0.6227163
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.5423729   0.4150223   0.6697235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.3788218   0.2847355   0.4729080
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.3358209   0.2866811   0.3849607
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3420543   0.3028041   0.3813045
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.6456456   0.5942291   0.6970622
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.7303371   0.6650884   0.7955857
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.6703297   0.5736639   0.7669954
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.1807242   0.1585556   0.2028928
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.1512783   0.1347218   0.1678347
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1528283   0.1310796   0.1745770
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.3934466   0.3828592   0.4040341
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.4026308   0.3863757   0.4188860
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.3988120   0.3790436   0.4185805
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.7557118   0.7203950   0.7910286
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7823129   0.7351239   0.8295019
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7625755   0.7251529   0.7999980
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.3930610   0.3729974   0.4131247
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.3493151   0.3269888   0.3716413
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.4306854   0.4035982   0.4577725
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.6893996   0.6647022   0.7140969
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.6600467   0.6283088   0.6917847
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7080891   0.6775741   0.7386041
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.6146179   0.5595958   0.6696401
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.6432749   0.5714227   0.7151270
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6666667   0.6009563   0.7323770
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.5048056   0.4962203   0.5133909
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.4547522   0.4392469   0.4702574
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4703863   0.4480779   0.4926946
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.3888889   0.3036070   0.4741707
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.2688172   0.1785419   0.3590925
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.4347826   0.2912555   0.5783097
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  NA                0.1880342   0.1170803   0.2589881
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.2461538   0.1412068   0.3511009
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1372549   0.0426089   0.2319009
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.2424242   0.1388185   0.3460300
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.1406250   0.0802757   0.2009743
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.1739130   0.0641503   0.2836757
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                0.4244186   0.3504321   0.4984051
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.4375000   0.3157620   0.5592380
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4179104   0.2996158   0.5362051
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.3800000   0.3021994   0.4578006
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.3220339   0.2026160   0.4414518
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3523810   0.2608618   0.4439001
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.4367816   0.3323602   0.5412030
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.4492754   0.3316834   0.5668673
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3679245   0.2759454   0.4599037
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.5296804   0.4634861   0.5958746
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.5046729   0.4098096   0.5995362
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4285714   0.2787041   0.5784387
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                0.4418605   0.3811893   0.5025317
0-6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.4065041   0.3195946   0.4934135
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.3448276   0.1716235   0.5180317
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.4040512   0.3693886   0.4387138
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.4653938   0.4244913   0.5062963
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4450867   0.3608940   0.5292794
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.3879781   0.3172923   0.4586640
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.4436620   0.3618490   0.5254749
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3076923   0.2127504   0.4026342
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.3354633   0.2831147   0.3878118
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3846154   0.3138785   0.4553522
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3257576   0.2457441   0.4057710
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.2357724   0.1924309   0.2791138
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2392344   0.1813552   0.2971137
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2459016   0.1694348   0.3223685
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.3283208   0.2822126   0.3744290
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2683983   0.2112167   0.3255798
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2812500   0.2033092   0.3591908
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.2021622   0.1762755   0.2280488
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2054121   0.1776355   0.2331886
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1692790   0.1401746   0.1983834
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.3046953   0.2761759   0.3332147
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3018868   0.2627951   0.3409784
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3278509   0.2973782   0.3583236
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                0.3466667   0.2703622   0.4229711
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.2500000   0.1402266   0.3597734
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.3148148   0.1907048   0.4389248
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.2822823   0.2338979   0.3306667
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.2752809   0.2096101   0.3409517
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2637363   0.1731234   0.3543492
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.1092023   0.0943234   0.1240813
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0864145   0.0731356   0.0996935
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0906984   0.0738671   0.1075298
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.2601347   0.2506186   0.2696509
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2553679   0.2409062   0.2698295
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2549936   0.2373821   0.2726052
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.3082192   0.2649554   0.3514829
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.3016529   0.2437995   0.3595063
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.3576642   0.3113041   0.4040244
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.2048468   0.1879305   0.2217631
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1701001   0.1522328   0.1879674
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1921537   0.1703014   0.2140061
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2342476   0.2116431   0.2568521
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2149533   0.1874299   0.2424767
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2708089   0.2409828   0.3006350
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                0.2871287   0.1986944   0.3755630
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.4814815   0.3479104   0.6150526
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.3538462   0.2373381   0.4703542
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.4214080   0.4131462   0.4296697
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.3700752   0.3548934   0.3852570
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.3940696   0.3725085   0.4156307
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.4637681   0.3457305   0.5818057
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.4153846   0.2952075   0.5355617
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3200000   0.1365670   0.5034330
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                0.4090909   0.3060327   0.5121491
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.4285714   0.2895608   0.5675821
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.3888889   0.1629504   0.6148274
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.1914894   0.0787097   0.3042690
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.2000000   0.1250575   0.2749425
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.2631579   0.1227899   0.4035259
6-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                0.3658537   0.2612488   0.4704585
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.4545455   0.2840859   0.6250050
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4117647   0.2457789   0.5777505
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.4000000   0.2848737   0.5151263
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2857143   0.1178567   0.4535719
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3606557   0.2397722   0.4815392
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.7727273   0.6484730   0.8969815
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.8285714   0.7032794   0.9538634
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.7575758   0.6538277   0.8613238
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.4847909   0.4426826   0.5268991
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.5125628   0.4514108   0.5737148
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.5909091   0.4991655   0.6826526
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.7247706   0.6407516   0.8087897
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.7600000   0.6631443   0.8568557
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.8135593   0.7139769   0.9131417
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.5535714   0.4782902   0.6288526
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.6288660   0.5325858   0.7251462
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5500000   0.4408255   0.6591745
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.3021277   0.2433553   0.3609000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2785714   0.2042311   0.3529118
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3292683   0.2274405   0.4310961
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.2187500   0.1680595   0.2694405
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2839506   0.2144461   0.3534551
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3522727   0.2523712   0.4521742
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.2253756   0.1919045   0.2588467
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2383613   0.2023125   0.2744100
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2131868   0.1755429   0.2508307
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.3358779   0.3028514   0.3689043
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3402062   0.2980305   0.3823819
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4122682   0.3758198   0.4487166
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                0.4123711   0.3141418   0.5106005
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.3617021   0.2239591   0.4994452
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.3750000   0.2245622   0.5254378
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.3788218   0.2847355   0.4729080
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.3358209   0.2866811   0.3849607
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3420543   0.3028041   0.3813045
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5215517   0.4571970   0.5859065
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.6328125   0.5492070   0.7164180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5606061   0.4407273   0.6804849
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0819138   0.0659499   0.0978777
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0722693   0.0561287   0.0884099
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0691431   0.0565323   0.0817538
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.2430571   0.2305255   0.2555887
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2541872   0.2352455   0.2731289
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2418208   0.2194379   0.2642036
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.7742782   0.7322768   0.8162796
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.8051282   0.7495019   0.8607546
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7272727   0.6783728   0.7761727
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.2646536   0.2436124   0.2856949
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.2343977   0.2120282   0.2567671
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.3145729   0.2857172   0.3434285
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.6518047   0.6213751   0.6822342
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.6266447   0.5881882   0.6651013
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6532399   0.6141933   0.6922865
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.5931559   0.5337345   0.6525773
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.5793103   0.4988884   0.6597323
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6300578   0.5580539   0.7020617
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.2159232   0.2055580   0.2262885
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2172654   0.1965824   0.2379484
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2327698   0.2010507   0.2644890


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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4937741   0.4859396   0.5016087
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3547170   0.2970055   0.4124285
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1931330   0.1423366   0.2439295
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1750000   0.1268279   0.2231721
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4257426   0.3699763   0.4815088
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3598726   0.3067005   0.4130447
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4122137   0.3524966   0.4719309
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2173748   0.2080019   0.2267477


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.8697730   0.6959739   1.0869733
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               0.9468599   0.7255276   1.2357127
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25               1.2000000   0.7172304   2.0077230
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               0.7647059   0.3872603   1.5100309
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <25               0.9317269   0.7448047   1.1655607
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <25               0.7671958   0.4808384   1.2240898
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               0.8250000   0.5515312   1.2340643
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25               1.0330435   0.6419772   1.6623315
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25               1.1219660   0.9087529   1.3852036
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25               1.0468048   0.8384619   1.3069172
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.8075773   0.5914011   1.1027727
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.9915966   0.7960252   1.2352171
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0507246   0.9201216   1.1998657
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.0145440   0.8933535   1.1521750
0-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.8869686   0.7507305   1.0479305
0-24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.7117241   0.4835862   1.0474890
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.0448422   0.9788767   1.1152530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.1043836   1.0199626   1.1957919
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.0366197   0.9393191   1.1439994
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.0133333   0.9019632   1.1384549
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.1378344   1.0051643   1.2880153
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.0418962   0.8976191   1.2093635
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.9945188   0.8168322   1.2108578
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.0911496   0.8727488   1.3642041
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.9975693   0.8391788   1.1858551
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               1.1168533   0.9183644   1.3582422
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0423590   0.9182155   1.1832869
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9230369   0.7998938   1.0651377
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9882818   0.8963144   1.0896856
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.1682259   1.0795126   1.2642296
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               0.8586957   0.6497535   1.1348276
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               0.9314665   0.7114097   1.2195923
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.8864878   0.6821811   1.1519825
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               0.9029425   0.6984206   1.1673554
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.1311732   1.0035806   1.2749877
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.0382315   0.8805441   1.2241576
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.8370669   0.7752968   0.9037585
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.8456438   0.7496710   0.9539032
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.0233429   0.9748771   1.0742182
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0136370   0.9580486   1.0724507
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0352001   0.9591476   1.1172830
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.0090824   0.9429664   1.0798341
0-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8887044   0.8189054   0.9644526
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.0957213   1.0104667   1.1881689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9574226   0.9017005   1.0165882
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0271099   0.9711331   1.0863132
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.0466256   0.9070351   1.2076986
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.0846847   0.9494593   1.2391693
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9008461   0.8696990   0.9331088
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.9318167   0.8874918   0.9783553
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.6912442   0.4628527   1.0323341
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.1180124   0.7521934   1.6617425
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25               1.3090909   0.7408040   2.3133231
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               0.7299465   0.3325908   1.6020345
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               0.5800781   0.3165582   1.0629659
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 <25               0.7173913   0.3347556   1.5373911
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              <25               1.0308219   0.7423028   1.4314829
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 <25               0.9846657   0.7061778   1.3729780
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.8474576   0.5548241   1.2944363
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.9273183   0.6661966   1.2907890
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0286041   0.7216004   1.4662221
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8423535   0.5960310   1.1904742
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9527876   0.7602676   1.1940588
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.8091133   0.5581283   1.1729639
0-6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          [25-30)              <25               0.9199829   0.7135573   1.1861255
0-6 months    ki1000108-IRC              INDIA                          >=30                 <25               0.7803993   0.4636288   1.3136004
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.1518189   1.0286633   1.2897193
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.1015602   0.8852714   1.3706927
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.1435231   0.8823982   1.4819218
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               0.7930661   0.5542260   1.1348328
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.1465201   0.9008055   1.4592589
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.9710678   0.7258876   1.2990616
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.0146840   0.7488076   1.3749643
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.0429621   0.7267507   1.4967581
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.8174879   0.6333773   1.0551158
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.8566317   0.6278694   1.1687428
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0160757   0.8434261   1.2240667
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8373426   0.6757733   1.0375413
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9907826   0.8444771   1.1624355
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               1.0759958   0.9430250   1.2277162
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               0.7211538   0.4412798   1.1785331
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               0.9081197   0.5781655   1.4263759
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.9751972   0.7269723   1.3081787
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9342997   0.6364087   1.3716281
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.7913251   0.6961459   0.8995175
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               0.8305542   0.7154702   0.9641496
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9816755   0.9176741   1.0501405
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9802368   0.9065425   1.0599219
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.9786961   0.7716680   1.2412670
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.1604217   0.9586045   1.4047281
0-6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8303768   0.7265192   0.9490812
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               0.9380361   0.8150463   1.0795850
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9176328   0.7816937   1.0772121
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.1560798   0.9986045   1.3383882
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.6768838   1.1078531   2.5381877
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.2323607   0.7851127   1.9343885
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.8781874   0.8413190   0.9166715
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.9351262   0.8838440   0.9893839
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
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25               1.2424242   0.7752955   1.9910060
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25               1.1254902   0.6866061   1.8449124
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.7142857   0.3713217   1.3740216
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.9016393   0.5796480   1.4024951
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0722689   0.8598868   1.3371069
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9803922   0.7937267   1.2109568
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.0572864   0.9685847   1.1541113
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.2188948   1.0840712   1.3704862
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.0486076   0.8826595   1.2457554
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.1225059   0.9483589   1.3286315
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.1360160   0.9256584   1.3941777
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.9935484   0.7810722   1.2638247
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.9220322   0.6627132   1.2828224
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.0898317   0.7562937   1.5704654
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.2980600   0.9266352   1.8183636
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               1.6103896   1.1165567   2.3226360
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0576178   0.8556073   1.3073233
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9459178   0.7510164   1.1913994
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.0128866   0.8646524   1.1865338
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.2274348   1.0754041   1.4009583
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               0.8771277   0.5597384   1.3744866
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               0.9093750   0.5703203   1.4499972
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.8864878   0.6821811   1.1519825
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               0.9029425   0.6984206   1.1673554
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.2133264   1.0126683   1.4537446
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.0748810   0.8397303   1.3758813
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.8822601   0.7814197   0.9961137
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.8440952   0.7041684   1.0118271
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.0457921   0.9551932   1.1449842
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9949134   0.8948938   1.1061120
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0398435   0.9523994   1.1353163
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.9392912   0.8615509   1.0240463
6-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8856771   0.7822235   1.0028132
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.1886210   1.0527486   1.3420296
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9613996   0.8900540   1.0384642
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0022020   0.9290014   1.0811703
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               0.9766578   0.8229878   1.1590214
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.0622128   0.9124525   1.2365532
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0062157   0.9087978   1.1140761
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.0780212   0.9350728   1.2428226


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0353100   -0.0970686    0.0264486
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0009904   -0.0530742    0.0550551
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0263121   -0.0783054    0.0256811
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0329545   -0.1320765    0.0661674
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0216248   -0.0259885    0.0692381
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0220807   -0.0797447    0.0355833
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0159252   -0.0478482    0.0796987
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0368312   -0.0731365   -0.0005258
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0162683    0.0015164    0.0310201
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0125338   -0.0285825    0.0536501
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0308890   -0.0061878    0.0679658
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0061014   -0.0287068    0.0409097
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0089009   -0.0248543    0.0426560
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0021485   -0.0261215    0.0218245
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0282683    0.0061112    0.0504254
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0271183   -0.0785860    0.0243493
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                -0.0228256   -0.0758104    0.0301593
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0287730   -0.0047299    0.0622758
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0132389   -0.0197931   -0.0066846
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0031899   -0.0036617    0.0100415
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0082588   -0.0184490    0.0349666
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0053328   -0.0204716    0.0098060
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0030032   -0.0215046    0.0154981
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0226955   -0.0177337    0.0631247
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0110315   -0.0146405   -0.0074225
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0341719   -0.0948959    0.0265521
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0050989   -0.0454845    0.0556822
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0674242   -0.1519873    0.0171388
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0013240   -0.0473501    0.0499981
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0201274   -0.0757794    0.0355246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0245679   -0.1095884    0.0604526
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0188108   -0.0610256    0.0234040
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0174702   -0.0541133    0.0191728
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0214390    0.0003212    0.0425568
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0014449   -0.0514842    0.0543740
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0122241   -0.0251408    0.0495891
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0027991   -0.0271398    0.0327380
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0262100   -0.0571573    0.0047373
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0077177   -0.0277602    0.0123248
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0080349   -0.0139861    0.0300560
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0284848   -0.0772164    0.0202467
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0048736   -0.0370041    0.0272569
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0096936   -0.0151064   -0.0042809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0020518   -0.0081766    0.0040730
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0171704   -0.0166302    0.0509709
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0145839   -0.0271412   -0.0020267
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0047975   -0.0121946    0.0217897
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0674167   -0.0008034    0.1356368
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0106417   -0.0141572   -0.0071262
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0423845   -0.1305218    0.0457528
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                 0.0038123   -0.0640695    0.0716941
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                 0.0187670   -0.0806105    0.1181446
6-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0301195   -0.0413403    0.1015793
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0352201   -0.1201762    0.0497359
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0065831   -0.0966506    0.1098168
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0182842    0.0055718    0.0309965
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0324310   -0.0279396    0.0928016
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0203416   -0.0333109    0.0739941
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0023465   -0.0432133    0.0385203
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0440958    0.0061035    0.0820882
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0008972   -0.0255549    0.0273493
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0282195    0.0022870    0.0541520
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0210668   -0.0879658    0.0458323
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                -0.0228256   -0.0758104    0.0301593
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0394811   -0.0036069    0.0825692
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0050628   -0.0089036   -0.0012220
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0026277   -0.0056569    0.0109123
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0100324   -0.0422248    0.0221600
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0019638   -0.0141456    0.0180732
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0068259   -0.0295939    0.0159421
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0075326   -0.0363184    0.0513835
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0014515   -0.0031699    0.0060730


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0581189   -0.1652050    0.0391256
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0042735   -0.2585957    0.2122400
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0442684   -0.1357768    0.0398672
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0952903   -0.4230049    0.1569525
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0348528   -0.0451625    0.1087423
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0405458   -0.1521380    0.0602379
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0188797   -0.0597809    0.0917018
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0574174   -0.1160045   -0.0019059
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0235276    0.0019811    0.0446090
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0151420   -0.0358436    0.0636180
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0465563   -0.0111728    0.1009896
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0140494   -0.0694540    0.0910327
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0186378   -0.0546621    0.0868432
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0062103   -0.0779464    0.0607518
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0545338    0.0107615    0.0963693
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0488478   -0.1460260    0.0400901
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                -0.0641174   -0.2171254    0.0696556
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0426634   -0.0085011    0.0912320
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0790449   -0.1161188   -0.0432024
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0080423   -0.0093835    0.0251672
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0108104   -0.0247820    0.0451666
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0137540   -0.0535614    0.0245492
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0043753   -0.0316953    0.0222212
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0356112   -0.0300419    0.0970797
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0223411   -0.0296894   -0.0150453
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0963357   -0.2817870    0.0622841
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0264008   -0.2740557    0.2560015
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.3852814   -0.9566711    0.0192503
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0031098   -0.1180319    0.1111255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0559292   -0.2225183    0.0879593
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0595998   -0.2874023    0.1278936
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0368211   -0.1229402    0.0426934
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0411655   -0.1312622    0.0417557
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0503866   -0.0006336    0.0988054
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0037104   -0.1419139    0.1307638
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0351584   -0.0785242    0.1368583
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0117326   -0.1220715    0.1295810
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0867562   -0.1941483    0.0109779
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0396911   -0.1480214    0.0584169
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0256929   -0.0473275    0.0936223
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0895238   -0.2539834    0.0533669
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0175685   -0.1402359    0.0919023
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0974151   -0.1526700   -0.0448089
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0079501   -0.0319633    0.0155043
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0527687   -0.0570090    0.1511452
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0766514   -0.1446413   -0.0127000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0200696   -0.0536509    0.0886321
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1901498   -0.0266275    0.3611535
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0259070   -0.0345090   -0.0173765
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.1005840   -0.3315303    0.0903059
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                 0.0092330   -0.1695991    0.1607215
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                 0.0892579   -0.5297766    0.4577959
6-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0760645   -0.1233954    0.2401101
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0965517   -0.3563007    0.1134520
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0084473   -0.1332909    0.1324586
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0363448    0.0115509    0.0605167
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0428301   -0.0406290    0.1195957
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0354437   -0.0628201    0.1246225
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0078273   -0.1537986    0.1196766
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.1677632    0.0109164    0.2997375
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0039649   -0.1200753    0.1142686
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0775054    0.0034507    0.1460569
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0538373   -0.2395662    0.1040631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                -0.0641174   -0.2171254    0.0696556
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0703722   -0.0100309    0.1443749
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0658778   -0.1131378   -0.0206243
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0106953   -0.0236056    0.0438467
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0131272   -0.0561540    0.0281467
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0073656   -0.0549324    0.0659846
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0105831   -0.0465117    0.0241119
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0125399   -0.0632375    0.0829166
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0066775   -0.0148079    0.0277081
