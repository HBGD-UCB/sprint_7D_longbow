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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0       78     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1      104     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1       29     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       18     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1       28     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      103     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1       36     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       34     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        9     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       42     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        9     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0       75     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1      119     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       15     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1       19     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       11     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1       10     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      127     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1       62     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       28     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1       18     240
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0       61     303
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1       92     303
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       29     303
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   1       54     303
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       25     303
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1       42     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0       76     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1       85     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       21     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1       27     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       46     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       59     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0       21     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1      119     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0        3     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1       13     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       17     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       89     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0       22     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1      274     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       40     373
0-24 months   ki1000108-IRC              INDIA                          [20-30)               0      124     410
0-24 months   ki1000108-IRC              INDIA                          [20-30)               1      220     410
0-24 months   ki1000108-IRC              INDIA                          <20                   0        8     410
0-24 months   ki1000108-IRC              INDIA                          <20                   1       29     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  0       15     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  1       14     410
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0       11     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1      151     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       22     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  1      192     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      368    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1      799    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0       61    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1      132    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       44    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1      129    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0       48     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1      242     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1       28     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       16     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       76     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      140     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1      282     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       26     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1       47     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0       45     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       87     627
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      285     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1      208     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       46     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1       39     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       65     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       57     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      263     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1      231     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0       72     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       64     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0       61     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       67     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1012    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      559    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      109    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       58    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      433    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1      205    2376
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               0      732    2859
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               1      705    2859
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      206    2859
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   1      189    2859
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      439    2859
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      588    2859
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0       80     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1       95     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       18     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1       29     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       27     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1       32     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1135    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1      607    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      232    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1      171    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3177
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      124     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1      264     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       42     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       81     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       30     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       61     602
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0    10120   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1     2009   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1386   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   1      359   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2561   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      462   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     5775   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1     3659   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1275   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      967   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1417   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      940   14033
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               0      151    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               1      510    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0       52    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1      150    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0      118    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1      379    1360
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)               0     2274    5313
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)               1     1328    5313
0-24 months   ki1135781-COHORTS          INDIA                          <20                   0      248    5313
0-24 months   ki1135781-COHORTS          INDIA                          <20                   1      179    5313
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  0      731    5313
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  1      553    5313
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               0      607    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               1     1220    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0      103    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1      275    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      249    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1      604    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      135     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1      229     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0       42     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1       66     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0       66     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1      132     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     6890   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1     5819   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     5658   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1     6528   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1234   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1     1096   27225
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      123     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       59     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   0       22     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   1       15     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       26     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  1       20     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      107     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               1       32     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   0       37     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   1        6     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  0       44     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  1        7     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               0      127     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               1       67     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   0       20     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   1       14     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  0       18     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  1        3     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               0      158     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               1       31     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   0        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  0       38     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  1        8     240
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)               0       88     303
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)               1       65     303
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   0       47     303
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   1       36     303
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  0       39     303
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  1       28     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      105     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1       56     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       28     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1       20     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       68     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       37     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0       75     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1       65     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       12     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        4     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       67     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       39     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      139     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1      153     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       17     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1       17     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       18     368
0-6 months    ki1000108-IRC              INDIA                          [20-30)               0      200     410
0-6 months    ki1000108-IRC              INDIA                          [20-30)               1      144     410
0-6 months    ki1000108-IRC              INDIA                          <20                   0       17     410
0-6 months    ki1000108-IRC              INDIA                          <20                   1       20     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  0       19     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  1       10     410
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               0       39     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               1      123     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   0        0     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   1        1     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  0       59     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  1      155     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      674    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1      490    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   0      109    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   1       84    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       96    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       77    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0      171     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1      118     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0       20     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1       16     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       63     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       28     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      264     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1      158     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   0       56     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   1       17     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  0       89     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       43     627
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      380     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1      113     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   0       61     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   1       24     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       92     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       30     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      347     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1      147     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0       90     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       46     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0       92     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       36     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1250    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      321    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      134    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       33    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      530    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1      108    2376
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               0      814    2443
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               1      358    2443
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   0      252    2443
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   1      107    2443
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  0      613    2443
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  1      299    2443
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      118     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1       46     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       25     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   1       21     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       37     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1       17     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      292     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       96     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   0       76     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   1       47     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  0       67     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  1       24     602
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               0    10954   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               1     1174   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   0     1511   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   1      233   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  0     2747   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  1      274   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     7029   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1     2392   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1613   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      624   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1753   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      600   14011
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)               0      372    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)               1      159    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   0      100    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   1       49    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  0      264    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  1      147    1091
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)               0     2841    5135
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)               1      642    5135
0-6 months    ki1135781-COHORTS          INDIA                          <20                   0      308    5135
0-6 months    ki1135781-COHORTS          INDIA                          <20                   1       95    5135
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  0     1009    5135
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  1      240    5135
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)               0     1440    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      387    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   0      265    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   1      113    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  0      622    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  1      231    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)               0       71     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)               1       45     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   0       29     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   1       10     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  0       42     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  1       23     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     7983   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1     4703   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     6610   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   1     5536   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1410   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      917   27159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0       68     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       45     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1       14     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       17     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        8     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0       93     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        4     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       28     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        3     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       38     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        2     168
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0       65     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1       52     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       15     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1        5     155
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       11     155
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        7     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      124     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1       31     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        2     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        0     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       28     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1       10     195
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0       46     149
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1       27     149
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       24     149
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   1       18     149
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       20     149
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1       14     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0       47     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1       29     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       15     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        7     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       39     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       22     159
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0       15     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1       54     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        9     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       16     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       50     145
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0       22     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1      121     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0        3     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1       14     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0        3     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       22     185
6-24 months   ki1000108-IRC              INDIA                          [20-30)               0      124     236
6-24 months   ki1000108-IRC              INDIA                          [20-30)               1       76     236
6-24 months   ki1000108-IRC              INDIA                          <20                   0        8     236
6-24 months   ki1000108-IRC              INDIA                          <20                   1        9     236
6-24 months   ki1000108-IRC              INDIA                          >=30                  0       15     236
6-24 months   ki1000108-IRC              INDIA                          >=30                  1        4     236
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0       11      96
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1       28      96
6-24 months   ki1000109-EE               PAKISTAN                       <20                   0        0      96
6-24 months   ki1000109-EE               PAKISTAN                       <20                   1        0      96
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       20      96
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       37      96
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      313     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1      309     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0       55     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1       48     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       36     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       52     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0       40     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1      124     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0        8     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1       12     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       11     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       48     243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0       95     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1      124     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       16     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1       30     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0       36     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       44     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      236     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1       95     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       29     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1       15     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       55     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       27     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      246     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1       84     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0       70     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       18     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0       57     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       31     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0      783    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      238    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0       90    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       25    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      358    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       97    1591
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               0      657    1972
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               1      347    1972
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      185    1972
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   1       82    1972
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      412    1972
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      289    1972
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0       72     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1       49     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       15     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        8     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       25     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1       15     184
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1135    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1      607    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      232    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1      171    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3177
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      120     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1      168     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       38     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       34     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       29     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       37     426
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0     9911   14951
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1      835   14951
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1360   14951
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   1      126   14951
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2531   14951
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      188   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     4058    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1     1267    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0      863    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      343    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1066    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      340    7937
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               0       94     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               1      351     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0       30     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1      101     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0       87     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1      232     895
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)               0     2088    4062
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)               1      686    4062
6-24 months   ki1135781-COHORTS          INDIA                          <20                   0      209    4062
6-24 months   ki1135781-COHORTS          INDIA                          <20                   1       84    4062
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  0      682    4062
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  1      313    4062
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               0      480    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      833    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0       75    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1      162    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      198    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1      373    2121
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      128     581
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1      184     581
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0       40     581
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1       56     581
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0       64     581
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1      109     581
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     4002   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1     1116   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     3642   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      992   10521
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/3a64e751-21f3-47eb-ae2b-0591f4267927/7663b6ec-065d-4861-97e0-9abb3404b3a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3a64e751-21f3-47eb-ae2b-0591f4267927/7663b6ec-065d-4861-97e0-9abb3404b3a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.5725251   0.5002710   0.6447792
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1804301   0.0708936   0.2899665
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4521229   0.2082412   0.6960047
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.6626084   0.5827084   0.7425084
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5718129   0.4778392   0.6657865
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.5031404   0.3119476   0.6943332
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6765972   0.6329778   0.7202165
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.8486946   0.7323069   0.9650822
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6678923   0.5724248   0.7633597
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4741894   0.4043196   0.5440591
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4281081   0.3607911   0.4954251
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2764453   0.2237610   0.3291297
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4952452   0.4525634   0.5379270
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.6883015   0.6045674   0.7720356
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3757366   0.2937238   0.4577495
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.7566708   0.6733019   0.8400396
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1567195   0.1348399   0.1785991
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3909710   0.3746261   0.4073158
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7493929   0.7062140   0.7925719
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3728386   0.3554502   0.3902271
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6997683   0.6735583   0.7259784
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6789781   0.6008262   0.7571299
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4861267   0.4729446   0.4993088
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3232134   0.2551412   0.3912856
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2401679   0.1150330   0.3653029
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.5334378   0.4353303   0.6315453
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4569407   0.3644601   0.5494213
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4289969   0.2741037   0.5838902
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.3459395   0.1627625   0.5291164
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4929324   0.3957431   0.5901216
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3216174   0.2282657   0.4149690
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2312391   0.1344777   0.3280005
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2463367   0.1941438   0.2985295
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3444538   0.2675743   0.4213333
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1301265   0.0931622   0.1670909
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2897339   0.2469772   0.3324906
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3970735   0.3056975   0.4884495
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2741781   0.2191816   0.3291746
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0969021   0.0801656   0.1136386
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2473692   0.2321375   0.2626009
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3243335   0.2715288   0.3771381
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1903802   0.1725391   0.2082213
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2090021   0.1904198   0.2275843
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2664818   0.1235426   0.4094209
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3815026   0.3690669   0.3939382
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3091911   0.1134504   0.5049318
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2621541   0.0588674   0.4654408
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.4608978   0.3324122   0.5893834
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3844362   0.1900439   0.5788285
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4447805   0.4044336   0.4851273
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.6113089   0.3752706   0.8473473
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6162208   0.5172870   0.7151547
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3264009   0.2519800   0.4008218
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2061437   0.1186498   0.2936377
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2282427   0.1630539   0.2934315
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3550692   0.3026239   0.4075145
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.5261456   0.3390025   0.7132887
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3695816   0.2907833   0.4483798
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4734265   0.3567868   0.5900663
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0814930   0.0684804   0.0945057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2397303   0.2215592   0.2579013
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7256811   0.6711141   0.7802481
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2548145   0.2359025   0.2737264
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6414031   0.6119395   0.6708668
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6302121   0.5404936   0.7199307
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2099182   0.1966876   0.2231488


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6075472   0.5486452   0.6664491
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2317597   0.1774632   0.2860561
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5943775   0.5332672   0.6554878
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6204620   0.5657315   0.6751926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5445860   0.4894148   0.5997572
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6634769   0.6264616   0.7004922
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3459596   0.3268289   0.3650903
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.5183631   0.5000444   0.5366817
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.5551601   0.4969525   0.6133678
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3966365   0.3885423   0.4047307
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7639706   0.7413939   0.7865473
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3877282   0.3746257   0.4008307
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6373134   0.6008819   0.6737450
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4937741   0.4859396   0.5016087
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3547170   0.2970055   0.4124285
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1931330   0.1423366   0.2439295
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4257426   0.3699763   0.4815088
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3598726   0.3067005   0.4130447
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3476874   0.3103810   0.3849938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1944444   0.1785274   0.2103615
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.3127302   0.2943427   0.3311178
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3181818   0.2618904   0.3744732
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2580829   0.2508371   0.2653287
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3253896   0.2975756   0.3532035
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1902629   0.1795262   0.2009996
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3545455   0.2911884   0.4179025
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4107662   0.4033277   0.4182048
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4213836   0.3443902   0.4983771
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4129032   0.3351414   0.4906651
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3647799   0.2897219   0.4398379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2262728   0.2057063   0.2468392
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3640974   0.3428547   0.3853400
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3913043   0.3205945   0.4620142
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2456848   0.2362134   0.2551561
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7642458   0.7364214   0.7920702
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2666174   0.2530174   0.2802175
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6006885   0.5608305   0.6405464
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2173748   0.2080019   0.2267477


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0611713   0.9900953   1.1373496
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.2844846   0.7403588   2.2285152
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.3146369   0.7834261   2.2060412
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.9363933   0.8519418   1.0292163
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9523850   0.8272617   1.0964331
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.2749193   0.8835749   1.8395941
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0219591   0.9910220   1.0538620
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.9753229   0.8549834   1.1126002
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9933891   0.8714228   1.1324260
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9158487   0.8081905   1.0378479
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1155420   0.9739537   1.2777136
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2514575   1.0454527   1.4980553
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0466797   0.9676322   1.1321848
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           0.8065653   0.7227326   0.9001222
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           0.9474621   0.8631237   1.0400415
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8912973   0.8052545   0.9865339
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0686951   0.9736808   1.1729811
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0144909   0.9783514   1.0519654
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0194526   0.9712701   1.0700255
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0399357   1.0079126   1.0729762
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9808908   0.9519941   1.0106647
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9386363   0.8464142   1.0409065
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0157313   0.9935893   1.0383666
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0974699   0.9721936   1.2388893
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.8041583   0.5086015   1.2714681
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           0.7981110   0.6827839   0.9329176
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.7875696   0.6634178   0.9349552
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.1908466   0.8467575   1.6747602
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.2267760   0.7348092   2.0481227
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.8631817   0.7318268   1.0181134
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.2108273   0.9366245   1.5653046
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.5035837   1.0095151   2.2394555
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9684771   0.8187274   1.1456167
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.8770721   0.7208416   1.0671629
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.4942722   1.1405600   1.9576782
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0793707   0.9421558   1.2365694
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           0.8013171   0.6620236   0.9699188
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0117826   0.8674583   1.1801191
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0268988   0.9520158   1.1076719
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0433109   0.9878009   1.1019402
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0032562   0.8717529   1.1545967
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           0.9993840   0.9260305   1.0785481
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1437454   1.0772323   1.2143652
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.3304679   0.8116216   2.1809977
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0767063   1.0488145   1.1053398
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3628583   0.7555176   2.4584242
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.5750404   0.7528030   3.2953535
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.8591344   0.6903321   1.0692128
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9488697   0.5923222   1.5200404
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1310637   1.0277670   1.2447423
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.2386563   0.8564078   1.7915174
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9313431   0.8155037   1.0636371
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9184446   0.7566442   1.1148443
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2750611   0.8637850   1.8821590
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9913691   0.7569892   1.2983182
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0254265   0.8968502   1.1724360
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           0.7437187   0.5317461   1.0401910
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           0.9632413   0.8748897   1.0605151
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1850474   0.9461967   1.4841918
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9430382   0.8411643   1.0572501
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0248383   0.9608812   1.0930524
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0531428   0.9909468   1.1192424
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0463197   0.9921892   1.1034034
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0055747   0.9740550   1.0381143
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9531528   0.8407837   1.0805398
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0355213   0.9857280   1.0878299


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0350221   -0.0043789    0.0744231
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0513296   -0.0483405    0.1509996
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1422546   -0.0905252    0.3750344
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0421464   -0.1043989    0.0201062
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0272269   -0.1075136    0.0530599
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.1383230   -0.0455426    0.3221886
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0148575   -0.0060082    0.0357232
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0209434   -0.1326728    0.0907861
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0044154   -0.0919091    0.0830783
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0399037   -0.0991254    0.0193181
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0494645   -0.0086235    0.1075524
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0695143    0.0198209    0.1192076
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0231179   -0.0157786    0.0620144
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.1331414   -0.2048767   -0.0614061
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.0197404   -0.0568559    0.0173751
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0822522   -0.1586967   -0.0058077
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0107659   -0.0039686    0.0255003
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0056655   -0.0085155    0.0198466
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0145777   -0.0216925    0.0508478
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0148896    0.0032303    0.0265488
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0133720   -0.0342846    0.0075405
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0416646   -0.1117803    0.0284511
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0076474   -0.0030680    0.0183628
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0315036   -0.0075924    0.0705996
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0470349   -0.1573689    0.0632991
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.1076952   -0.1894774   -0.0259131
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0970681   -0.1738369   -0.0202993
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0818726   -0.0641600    0.2279053
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0784508   -0.0986975    0.2555990
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0674422   -0.1504233    0.0155389
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0678057   -0.0146801    0.1502916
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1164483    0.0241925    0.2087040
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0077653   -0.0491361    0.0336056
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0423430   -0.1100277    0.0253417
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0643179    0.0288972    0.0997387
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0229964   -0.0164338    0.0624266
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.0788917   -0.1529199   -0.0048635
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0032305   -0.0389690    0.0454301
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0026065   -0.0046187    0.0098318
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0107138   -0.0028127    0.0242402
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0010561   -0.0445149    0.0466271
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0001173   -0.0146302    0.0143956
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0300431    0.0174561    0.0426300
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0880637   -0.0435610    0.2196884
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0292637    0.0192622    0.0392652
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1121925   -0.0695191    0.2939042
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1507492   -0.0427337    0.3442320
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0649246   -0.1651288    0.0352795
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0196564   -0.2006743    0.1613616
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0582946    0.0128459    0.1037432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1458927   -0.0783945    0.3701800
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0423078   -0.1242211    0.0396055
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0266198   -0.0896220    0.0363825
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0567021   -0.0234816    0.1368859
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0019699   -0.0635379    0.0595981
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0090282   -0.0385295    0.0565859
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.1348413   -0.3092732    0.0395906
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.0135853   -0.0503378    0.0231671
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0876064   -0.0186336    0.1938463
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0046420   -0.0135703    0.0042863
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0059545   -0.0094903    0.0213993
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0385647   -0.0054344    0.0825638
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0118029   -0.0017369    0.0253428
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0035756   -0.0168457    0.0239970
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0295237   -0.1086174    0.0495701
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0074566   -0.0029170    0.0178301


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0576450   -0.0100038    0.1207628
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.2214776   -0.3506965    0.5512707
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2393337   -0.2764446    0.5466993
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0679274   -0.1737892    0.0283869
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0499956   -0.2088073    0.0879517
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.2156366   -0.1317660    0.4564018
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0214873   -0.0090593    0.0511092
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0253015   -0.1696133    0.1012045
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0066549   -0.1475486    0.1169401
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0918834   -0.2373320    0.0364677
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1035747   -0.0267429    0.2173520
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2009317    0.0434765    0.3324679
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0445979   -0.0334505    0.1167519
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.2398252   -0.3836377   -0.1109602
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.0554512   -0.1585826    0.0384999
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1219601   -0.2418435   -0.0136499
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0642794   -0.0270306    0.1474714
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0142839   -0.0221276    0.0493984
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0190815   -0.0295797    0.0654428
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0384021    0.0078505    0.0680129
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0194815   -0.0504267    0.0105522
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0653754   -0.1814547    0.0392989
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0154876   -0.0064520    0.0369490
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0888133   -0.0286017    0.1928254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.2435362   -0.9661759    0.2135076
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.2529586   -0.4645922   -0.0719060
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.2697290   -0.5073458   -0.0695700
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1602613   -0.1809757    0.4028996
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.1848553   -0.3608975    0.5117480
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.1585046   -0.3664435    0.0177911
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1741184   -0.0676637    0.3611467
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3349223    0.0094254    0.5534629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0325490   -0.2214077    0.1271077
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.1401571   -0.3872673    0.0629360
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.3307779    0.1232377    0.4891908
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0735342   -0.0613956    0.1913110
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.2479454   -0.5105201   -0.0310141
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0116454   -0.1527932    0.1526279
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0261942   -0.0504027    0.0972056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0415129   -0.0123497    0.0925097
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0032456   -0.1471141    0.1338967
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0006164   -0.0798781    0.0728276
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1256795    0.0716951    0.1765245
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2483847   -0.2321012    0.5414942
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0712416    0.0465426    0.0953009
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2662480   -0.3235959    0.5932354
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3650956   -0.3283687    0.6965424
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.1639622   -0.4485782    0.0647325
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0538855   -0.6882705    0.3421228
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1158765    0.0270168    0.1966209
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1926735   -0.1676681    0.4418139
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0737181   -0.2262360    0.0598297
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0887973   -0.3216252    0.1030138
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2157238   -0.1576955    0.4686952
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0087060   -0.3210229    0.2297728
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0247960   -0.1150134    0.1470750
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.3445944   -0.8805967    0.0386381
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.0381615   -0.1430012    0.0570620
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1561519   -0.0568627    0.3262326
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0604024   -0.1888284    0.0541500
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0242363   -0.0407114    0.0851308
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0504611   -0.0091359    0.1065385
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0442692   -0.0078723    0.0937132
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0055438   -0.0266360    0.0367150
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0491497   -0.1893665    0.0745367
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0343028   -0.0144787    0.0807387
