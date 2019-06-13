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
![](/tmp/484762d3-9932-4fff-a1f7-fc4f2da38663/56fa7299-8a38-4023-a4cc-d0be9cebb396/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/484762d3-9932-4fff-a1f7-fc4f2da38663/56fa7299-8a38-4023-a4cc-d0be9cebb396/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.6143990   0.5346152   0.6941829
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1697115   0.0639437   0.2754793
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4584377   0.2230346   0.6938408
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.6855462   0.5999010   0.7711914
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5215143   0.4102951   0.6327335
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.4825818   0.2947386   0.6704250
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6765972   0.6329778   0.7202165
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7765818   0.6364826   0.9166809
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.7015100   0.6109028   0.7921172
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4768244   0.4206889   0.5329599
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4418985   0.3775137   0.5062833
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2899124   0.2379881   0.3418368
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4777526   0.4333292   0.5221759
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.6439910   0.5433398   0.7446422
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3480329   0.3071285   0.3889372
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.7271957   0.6402045   0.8141868
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1543303   0.1324573   0.1762034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3913810   0.3754093   0.4073528
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7597025   0.7160366   0.8033684
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3708686   0.3541752   0.3875620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6911045   0.6653345   0.7168745
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6793891   0.5966517   0.7621264
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4749413   0.4618651   0.4880175
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3225379   0.2545555   0.3905204
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1992114   0.0781281   0.3202947
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.5046957   0.3943463   0.6150451
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4821118   0.3783158   0.5859078
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4316618   0.2760244   0.5872992
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.3500590   0.1661066   0.5340115
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4929324   0.3957431   0.5901216
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3132627   0.2215716   0.4049538
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2254138   0.1283796   0.3224480
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2515811   0.2004040   0.3027581
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3381244   0.2617319   0.4145169
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1413701   0.1027622   0.1799780
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.3033772   0.2593265   0.3474278
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3351244   0.2556772   0.4145715
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2475917   0.2045535   0.2906299
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0968390   0.0798145   0.1138634
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2385747   0.2235141   0.2536352
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3197674   0.2612044   0.3783305
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1883186   0.1702741   0.2063631
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2115896   0.1920865   0.2310928
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2765522   0.1360739   0.4170306
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3865646   0.3738675   0.3992618
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3392426   0.1393706   0.5391146
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2430719   0.0424372   0.4437066
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.3758443   0.2625273   0.4891613
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3850268   0.1855304   0.5845232
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4447805   0.4044336   0.4851273
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.6013912   0.3689391   0.8338433
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6585963   0.5723884   0.7448042
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2676360   0.1878919   0.3473801
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2005686   0.1140507   0.2870865
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2030225   0.1421787   0.2638663
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3316947   0.2751969   0.3881925
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.5560593   0.3806526   0.7314659
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3634309   0.2849461   0.4419157
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4700015   0.3541371   0.5858659
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0776280   0.0661761   0.0890799
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2379540   0.2202170   0.2556910
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7237199   0.6716389   0.7758009
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2483353   0.2322396   0.2644309
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6556264   0.6269436   0.6843092
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6392417   0.5594539   0.7190295
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2304729   0.2121124   0.2488335


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9888479   0.9051352   1.0803029
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.3656096   0.7755899   2.4044788
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2965285   0.7925370   2.1210192
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.9050623   0.8180961   1.0012734
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0442398   0.8646994   1.2610588
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.3292324   0.9129517   1.9353257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0219591   0.9910220   1.0538620
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0658906   0.8980333   1.2651232
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9457839   0.8378997   1.0675588
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9107874   0.8316647   0.9974378
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0807290   0.9539071   1.2244119
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1933245   1.0079846   1.4127432
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0850032   0.9966804   1.1811528
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           0.8620620   0.7559487   0.9830704
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0228811   0.9022732   1.1596108
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9274238   0.8316275   1.0342551
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0852395   0.9906169   1.1889003
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0134280   0.9782982   1.0498193
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0056181   0.9587496   1.0547778
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0454597   1.0158011   1.0759842
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9931875   0.9644217   1.0228112
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9380684   0.8412207   1.0460660
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0396529   1.0173279   1.0624679
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0997682   0.9751586   1.2403009
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.9694878   0.5624911   1.6709717
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           0.8435629   0.7068144   1.0067683
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.7464506   0.6133371   0.9084538
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.1834949   0.8419344   1.6636215
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.2123390   0.7290697   2.0159470
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.8631817   0.7318268   1.0181134
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.2431199   0.9574277   1.6140615
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.5424406   1.0235926   2.3242868
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9482885   0.8040025   1.1184680
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.8934901   0.7311421   1.0918870
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3754285   1.0619170   1.7814983
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0308299   0.9025253   1.1773746
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           0.9494440   0.7956762   1.1329280
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1204278   1.0034767   1.2510092
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0275683   0.9357900   1.1283478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0817700   1.0226340   1.1443256
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0175819   0.8686742   1.1920153
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.0103244   0.9350008   1.0917160
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1297582   1.0588124   1.2054577
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.2820200   0.8032204   2.0462321
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0626069   1.0354806   1.0904438
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.2421306   0.7179646   2.1489755
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.6986876   0.7733650   3.7311488
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.0535563   0.8472301   1.3101292
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9474142   0.5860325   1.5316449
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1310637   1.0277670   1.2447423
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.2590834   0.8701591   1.8218404
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.8714185   0.7786226   0.9752739
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1201077   0.8613762   1.4565545
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.3105034   0.8817202   1.9478051
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1145208   0.8396760   1.4793285
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0976883   0.9358670   1.2874901
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           0.7037098   0.5178396   0.9562950
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           0.9795431   0.8632305   1.1115279
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1936832   0.9527499   1.4955441
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9899914   0.8574238   1.1430555
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0324885   0.9693564   1.0997322
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0559966   0.9953300   1.1203610
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0736189   1.0330820   1.1157464
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9837596   0.9539412   1.0145101
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9396891   0.8408139   1.0501914
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9431683   0.8827555   1.0077155


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0068518   -0.0611893    0.0474856
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0620481   -0.0343245    0.1584208
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1359398   -0.0886404    0.3605200
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0650842   -0.1338103    0.0036420
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0230717   -0.0753693    0.1215127
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.1588816   -0.0216907    0.3394538
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0148575   -0.0060082    0.0357232
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0511694   -0.0817346    0.1840735
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0380331   -0.1228508    0.0467846
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0425387   -0.0856569    0.0005794
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0356740   -0.0195362    0.0908842
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0560472    0.0071027    0.1049917
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0406105    0.0000650    0.0811560
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.0888308   -0.1726390   -0.0050227
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0079634   -0.0363963    0.0523230
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0527771   -0.1319542    0.0264001
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0131550   -0.0010488    0.0273589
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0052555   -0.0085523    0.0190633
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0042681   -0.0319842    0.0405204
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0168596    0.0061875    0.0275317
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0047082   -0.0250168    0.0156004
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0420756   -0.1160869    0.0319356
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0188328    0.0085339    0.0291317
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0321790   -0.0064933    0.0708514
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0060784   -0.1145611    0.1024044
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0789531   -0.1686734    0.0107671
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1222392   -0.2142427   -0.0302356
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0792077   -0.0675300    0.2259455
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0743312   -0.1035345    0.2521969
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0674422   -0.1504233    0.0155389
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0761604   -0.0057231    0.1580439
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1222736    0.0297552    0.2147920
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0130096   -0.0544362    0.0284169
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0360136   -0.1038491    0.0318219
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0530744    0.0163443    0.0898044
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0093531   -0.0309779    0.0496841
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.0169426   -0.0759264    0.0420412
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0298169    0.0024426    0.0571913
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0026697   -0.0063261    0.0116655
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0195082    0.0060915    0.0329250
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0056221   -0.0449512    0.0561955
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0019443   -0.0126470    0.0165356
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0274555    0.0136842    0.0412267
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0779933   -0.0514397    0.2074262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0242016    0.0142341    0.0341691
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0821410   -0.1034314    0.2677135
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1698313   -0.0212262    0.3608888
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0201288   -0.0617103    0.1019679
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0202469   -0.2051484    0.1646545
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0582946    0.0128459    0.1037432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1558105   -0.0650090    0.3766299
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0846833   -0.1577900   -0.0115766
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0321452   -0.0382865    0.1025768
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0622772   -0.0171224    0.1416769
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0232503   -0.0342209    0.0807215
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0324027   -0.0205150    0.0853204
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.1647549   -0.3305211    0.0010113
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.0074347   -0.0537070    0.0388377
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0910314   -0.0146248    0.1966875
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0007769   -0.0118513    0.0102975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0077308   -0.0072804    0.0227419
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0405259   -0.0021982    0.0832500
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0182822    0.0087066    0.0278578
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0106476   -0.0308250    0.0095297
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0385533   -0.1094638    0.0323573
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0130982   -0.0283755    0.0021792


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0112779   -0.1048073    0.0743337
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.2677263   -0.2893412    0.5841095
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2287096   -0.2617707    0.5285285
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.1048963   -0.2223503    0.0012718
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0423656   -0.1564713    0.2070156
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.2476861   -0.0953482    0.4832911
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0214873   -0.0090593    0.0511092
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0618174   -0.1135445    0.2095632
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0573240   -0.1934603    0.0632835
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0979510   -0.2024077   -0.0025688
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0746986   -0.0483202    0.1832814
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1620050    0.0079214    0.2921573
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0783437   -0.0033307    0.1533695
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.1600094   -0.3228410   -0.0172211
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0223693   -0.1083118    0.1376417
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0782556   -0.2024614    0.0331205
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0785444   -0.0094719    0.1588865
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0132501   -0.0221832    0.0474551
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0055867   -0.0430252    0.0519330
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0434830    0.0155553    0.0706183
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0068593   -0.0368908    0.0223024
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0660203   -0.1887487    0.0440374
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0381406    0.0170328    0.0587951
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0907175   -0.0254742    0.1937440
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0314725   -0.7778060    0.4015458
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.1854481   -0.4147986    0.0067228
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.3396734   -0.6304247   -0.1007715
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1550450   -0.1877410    0.3989017
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.1751482   -0.3716109    0.5039552
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.1585046   -0.3664435    0.0177911
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1955724   -0.0444653    0.3804449
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3516768    0.0230489    0.5697605
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0545314   -0.2437772    0.1059199
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.1192066   -0.3677233    0.0841543
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2729538    0.0583069    0.4386747
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0299079   -0.1080022    0.1506527
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.0532480   -0.2567926    0.1173313
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1074838    0.0034646    0.2006454
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0268287   -0.0686158    0.1137485
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0755891    0.0221331    0.1261228
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0172781   -0.1511796    0.1610846
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0102189   -0.0695177    0.0840109
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1148548    0.0555457    0.1704396
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2199810   -0.2449884    0.5112969
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0589182    0.0342649    0.0829422
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1949317   -0.3928264    0.5346620
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.4113103   -0.2930506    0.7319860
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0508338   -0.1803169    0.2367165
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0555045   -0.7063901    0.3471072
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1158765    0.0270168    0.1966209
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2057714   -0.1492152    0.4511045
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.1475542   -0.2843192   -0.0253530
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1072287   -0.1609330    0.3134483
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2369344   -0.1341466    0.4866016
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1027534   -0.1909356    0.3240176
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0889945   -0.0685279    0.2232950
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.4210403   -0.9310997   -0.0457024
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.0208841   -0.1584392    0.1003375
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1622568   -0.0495934    0.3313470
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0101098   -0.1662844    0.1251518
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0314662   -0.0316123    0.0906877
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0530273   -0.0046919    0.1074305
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0685708    0.0320227    0.1037390
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0165085   -0.0482827    0.0143026
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0641818   -0.1893238    0.0477927
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0602562   -0.1328165    0.0076564
