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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        mage       ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      161     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              0       27     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              1       10     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             0       36     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             1       10     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      138     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20              0       43     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20              1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             0       50     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          0      152     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          1       42     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20              0       23     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20              1       11     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30             0       21     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30             1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          0      174     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          1       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20              0        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20              1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30             0       42     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30             1        4     240
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)          0      149     302
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)          1        4     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20              0       77     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20              1        5     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30             0       64     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30             1        3     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0      146     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1       13     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       45     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        3     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       99     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        6     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0      128     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1       11     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0       14     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        2     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       96     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1       10     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0      225     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1       71     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       27     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       35     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        8     373
0-24 months   ki1000108-IRC              INDIA                          [20-30)          0      281     410
0-24 months   ki1000108-IRC              INDIA                          [20-30)          1       63     410
0-24 months   ki1000108-IRC              INDIA                          <20              0       29     410
0-24 months   ki1000108-IRC              INDIA                          <20              1        8     410
0-24 months   ki1000108-IRC              INDIA                          >=30             0       24     410
0-24 months   ki1000108-IRC              INDIA                          >=30             1        5     410
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)          0      106     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)          1       56     377
0-24 months   ki1000109-EE               PAKISTAN                       <20              0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       <20              1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30             0      129     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30             1       85     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0      891    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1      261    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20              0      153    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20              1       39    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30             0      118    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30             1       51    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          0      187     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          1      103     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20              0       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20              1       12     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30             0       52     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30             1       40     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      325     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1       92     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              0       64     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              1        9     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             0       97     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             1       35     622
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      437     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1       56     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              0       70     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              1       15     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             0      103     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             1       19     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      451     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1       43     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      121     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              1       15     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0      115     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1       13     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1494    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1       77    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      157    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1       10    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      606    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1       32    2376
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)          0     1257    2856
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)          1      179    2856
0-24 months   ki1101329-Keneba           GAMBIA                         <20              0      349    2856
0-24 months   ki1101329-Keneba           GAMBIA                         <20              1       45    2856
0-24 months   ki1101329-Keneba           GAMBIA                         >=30             0      821    2856
0-24 months   ki1101329-Keneba           GAMBIA                         >=30             1      205    2856
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          0      163     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          1       12     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20              0       42     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20              1        5     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       54     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30             1        5     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          0     1551    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          1      191    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              0      348    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              1       55    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             0      899    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             1      133    3177
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      270     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          1      118     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20              0       82     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20              1       41     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       57     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1       34     602
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)          0    12108   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)          1       21   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20              0     1742   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20              1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30             0     3020   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30             1        3   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     8955   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      389   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     2130   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       85   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2231   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      107   13897
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          0      579    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          1       76    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20              0      179    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20              1       17    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30             0      435    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30             1       55    1341
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)          0     3279    5303
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)          1      317    5303
0-24 months   ki1135781-COHORTS          INDIA                          <20              0      377    5303
0-24 months   ki1135781-COHORTS          INDIA                          <20              1       49    5303
0-24 months   ki1135781-COHORTS          INDIA                          >=30             0     1127    5303
0-24 months   ki1135781-COHORTS          INDIA                          >=30             1      154    5303
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          0     1513    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          1      307    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20              0      292    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20              1       85    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             0      680    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             1      168    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          0      346     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          1       18     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20              0      101     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20              1        7     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30             0      187     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30             1       11     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0    11572   26916
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1     1013   26916
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              0    10864   26916
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              1     1166   26916
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     2097   26916
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      204   26916
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      176     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1        4     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              0       34     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              1        3     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             0       44     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             1        2     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      139     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20              0       43     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20              1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             0       51     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          0      182     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          1       12     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20              0       29     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20              1        5     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30             0       21     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30             1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)          0      184     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)          1        5     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20              0        4     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20              1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30             0       45     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30             1        1     240
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)          0      153     302
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)          1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20              0       81     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20              1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30             0       66     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30             1        1     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0      155     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1        4     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       47     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0      105     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        0     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0      138     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0       16     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0      103     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        3     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0      268     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       30     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       39     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        3     368
0-6 months    ki1000108-IRC              INDIA                          [20-30)          0      325     409
0-6 months    ki1000108-IRC              INDIA                          [20-30)          1       19     409
0-6 months    ki1000108-IRC              INDIA                          <20              0       30     409
0-6 months    ki1000108-IRC              INDIA                          <20              1        6     409
0-6 months    ki1000108-IRC              INDIA                          >=30             0       29     409
0-6 months    ki1000108-IRC              INDIA                          >=30             1        0     409
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)          0      149     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)          1       13     377
0-6 months    ki1000109-EE               PAKISTAN                       <20              0        0     377
0-6 months    ki1000109-EE               PAKISTAN                       <20              1        1     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30             0      175     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30             1       39     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0     1064    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1       81    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20              0      185    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20              1        6    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             0      149    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             1       19    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          0      269     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          1       20     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20              0       33     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20              1        3     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             0       82     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             1        9     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      379     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1       37     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              0       71     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              1        1     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             0      125     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             1        7     620
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      475     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1       18     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              0       82     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              1        3     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             0      113     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             1        9     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      484     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1       10     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      133     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20              1        3     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0      124     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        4     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1561    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1       10    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      163    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        4    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      633    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        5    2376
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)          0     1141    2411
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)          1       21    2411
0-6 months    ki1101329-Keneba           GAMBIA                         <20              0      345    2411
0-6 months    ki1101329-Keneba           GAMBIA                         <20              1       11    2411
0-6 months    ki1101329-Keneba           GAMBIA                         >=30             0      856    2411
0-6 months    ki1101329-Keneba           GAMBIA                         >=30             1       37    2411
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          0      163     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          1        1     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              0       43     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              1        3     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       51     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             1        3     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      376     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          1       12     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20              0      117     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20              1        6     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             0       85     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             1        6     602
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)          0    12113   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)          1       15   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20              0     1743   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20              1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30             0     3018   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30             1        3   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     9177   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      110   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     2169   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       27   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2289   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       30   13802
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)          0      515    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)          1        9    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20              0      136    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20              1        1    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30             0      391    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30             1       10    1062
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)          0     3373    5101
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)          1       89    5101
0-6 months    ki1135781-COHORTS          INDIA                          <20              0      386    5101
0-6 months    ki1135781-COHORTS          INDIA                          <20              1       14    5101
0-6 months    ki1135781-COHORTS          INDIA                          >=30             0     1202    5101
0-6 months    ki1135781-COHORTS          INDIA                          >=30             1       37    5101
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)          0     1786    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)          1       33    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20              0      365    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20              1       12    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             0      821    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             1       27    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)          0      116     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)          1        0     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20              0       39     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20              1        0     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30             0       65     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30             1        0     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0    12117   26809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1      427   26809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              0    11445   26809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              1      526   26809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     2191   26809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      103   26809
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      146     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1       17     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              0       26     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              1        8     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             0       32     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             1       10     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      123     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20              0       36     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20              1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             0       46     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          0      138     233
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          1       40     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20              0       27     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20              1        7     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30             0       21     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30             1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          0      172     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          1       12     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20              0        4     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20              1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30             0       43     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30             1        3     235
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)          0      130     270
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)          1        4     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20              0       70     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20              1        5     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30             0       59     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30             1        2     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0      112     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1       10     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       39     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        3     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       89     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        6     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0      117     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0       12     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        2     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       95     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        8     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0      239     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1       57     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       29     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        5     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       35     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        8     373
6-24 months   ki1000108-IRC              INDIA                          [20-30)          0      290     410
6-24 months   ki1000108-IRC              INDIA                          [20-30)          1       54     410
6-24 months   ki1000108-IRC              INDIA                          <20              0       32     410
6-24 months   ki1000108-IRC              INDIA                          <20              1        5     410
6-24 months   ki1000108-IRC              INDIA                          >=30             0       24     410
6-24 months   ki1000108-IRC              INDIA                          >=30             1        5     410
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)          0      107     371
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)          1       53     371
6-24 months   ki1000109-EE               PAKISTAN                       <20              0        1     371
6-24 months   ki1000109-EE               PAKISTAN                       <20              1        0     371
6-24 months   ki1000109-EE               PAKISTAN                       >=30             0      133     371
6-24 months   ki1000109-EE               PAKISTAN                       >=30             1       77     371
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0      826    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1      231    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20              0      144    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20              1       38    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30             0      105    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30             1       45    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          0      183     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          1       96     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20              0       25     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20              1       11     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30             0       48     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30             1       38     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      285     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1       75     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              0       53     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              1        8     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             0       89     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             1       30     540
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      389     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1       46     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              0       54     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              1       14     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             0       96     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             1       15     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      436     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1       38     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      119     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              1       14     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0      112     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1       11     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1231    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1       75    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      133    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        8    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      525    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1       30    2002
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)          0     1167    2686
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)          1      169    2686
6-24 months   ki1101329-Keneba           GAMBIA                         <20              0      325    2686
6-24 months   ki1101329-Keneba           GAMBIA                         <20              1       39    2686
6-24 months   ki1101329-Keneba           GAMBIA                         >=30             0      794    2686
6-24 months   ki1101329-Keneba           GAMBIA                         >=30             1      192    2686
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          0      154     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          1       12     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20              0       39     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20              1        3     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       54     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30             1        3     265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          0     1551    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          1      191    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              0      348    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              1       55    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             0      899    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             1      133    3177
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      267     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          1      115     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20              0       78     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20              1       41     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       55     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1       34     590
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)          0    11888   16598
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)          1        6   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <20              0     1713   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <20              1        2   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=30             0     2988   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=30             1        1   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     6818   10667
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      292   10667
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1619   10667
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       59   10667
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     1796   10667
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       83   10667
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          0      519    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          1       71    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20              0      156    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20              1       16    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30             0      400    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30             1       49    1211
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)          0     3086    4955
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)          1      278    4955
6-24 months   ki1135781-COHORTS          INDIA                          <20              0      335    4955
6-24 months   ki1135781-COHORTS          INDIA                          <20              1       42    4955
6-24 months   ki1135781-COHORTS          INDIA                          >=30             0     1074    4955
6-24 months   ki1135781-COHORTS          INDIA                          >=30             1      140    4955
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          0     1380    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          1      293    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20              0      264    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20              1       82    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             0      628    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             1      161    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          0      339     659
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          1       18     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20              0       99     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20              1        7     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30             0      185     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30             1       11     659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0     7205   17274
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1      648   17274
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              0     7438   17274
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              1      732   17274
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1130   17274
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      121   17274


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/a2a364bc-816c-4c1b-b312-26fbe217fdf3/666bb506-d85a-4c96-8a83-514593cb2716/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a2a364bc-816c-4c1b-b312-26fbe217fdf3/666bb506-d85a-4c96-8a83-514593cb2716/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a2a364bc-816c-4c1b-b312-26fbe217fdf3/666bb506-d85a-4c96-8a83-514593cb2716/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2a364bc-816c-4c1b-b312-26fbe217fdf3/666bb506-d85a-4c96-8a83-514593cb2716/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1026142   0.0577499   0.1474786
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2439230   0.0949223   0.3929238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2040586   0.0819089   0.3262083
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2398649   0.1911553   0.2885744
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.2058824   0.0697869   0.3419778
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1860465   0.0695783   0.3025147
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1831395   0.1422168   0.2240622
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.2162162   0.0834096   0.3490229
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138   0.0347651   0.3100625
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2265503   0.1800413   0.2730593
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2038181   0.1466781   0.2609581
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2964742   0.2471309   0.3458175
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.3545420   0.2994440   0.4096400
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.3368421   0.1773855   0.4962987
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4416360   0.3378309   0.5454411
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2206235   0.1807918   0.2604552
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1232877   0.0478090   0.1987664
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2651515   0.1897888   0.3405142
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1152880   0.0873390   0.1432370
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1690821   0.0851780   0.2529861
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1601506   0.0957111   0.2245902
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0872699   0.0623775   0.1121623
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1110590   0.0581404   0.1639776
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1032836   0.0508135   0.1557538
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0485937   0.0379206   0.0592669
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0591505   0.0235962   0.0947049
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0516345   0.0345241   0.0687450
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1264035   0.1088908   0.1439162
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1131136   0.0800939   0.1461333
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1905562   0.1664838   0.2146286
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0685714   0.0310612   0.1060816
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.1063830   0.0180780   0.1946879
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.0847458   0.0135546   0.1559369
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.1096074   0.0866081   0.1326067
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1323995   0.0887507   0.1760484
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1316970   0.0991395   0.1642545
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.3026915   0.2567719   0.3486111
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.3271859   0.2428698   0.4115020
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3591443   0.2585789   0.4597098
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0418091   0.0377403   0.0458779
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0390174   0.0308270   0.0472078
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0443250   0.0359466   0.0527033
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1152622   0.0906307   0.1398938
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0893346   0.0485250   0.1301441
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1134716   0.0852553   0.1416878
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0881902   0.0789077   0.0974726
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1169065   0.0859377   0.1478752
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1187088   0.1008794   0.1365382
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1698335   0.1525603   0.1871067
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2060869   0.1656862   0.2464875
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1965144   0.1699812   0.2230477
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0494505   0.0271613   0.0717398
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0648148   0.0183476   0.1112820
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0555556   0.0236261   0.0874850
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0813383   0.0760527   0.0866239
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0951513   0.0891463   0.1011563
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0916289   0.0802872   0.1029707
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.0707424   0.0475077   0.0939770
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0314136   0.0078973   0.0549299
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1130952   0.0651121   0.1610784
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0186467   0.0104426   0.0268507
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0270596   0.0101226   0.0439966
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0395521   0.0268595   0.0522447
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.0309278   0.0136875   0.0481682
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.0487805   0.0106809   0.0868801
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.0659341   0.0149033   0.1169648
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0118929   0.0096797   0.0141062
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0121714   0.0075761   0.0167667
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0127058   0.0081534   0.0172582
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0257578   0.0204533   0.0310624
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.0337035   0.0166404   0.0507666
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0290181   0.0195977   0.0384385
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0182888   0.0121132   0.0244644
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0300509   0.0126129   0.0474890
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0324416   0.0204014   0.0444818
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0343433   0.0308895   0.0377971
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0432841   0.0393325   0.0472357
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0457585   0.0366715   0.0548454
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1042945   0.0572750   0.1513140
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2352941   0.0924140   0.3781743
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2380952   0.1090150   0.3671754
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1925676   0.1475865   0.2375486
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.1470588   0.0278532   0.2662644
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1860465   0.0695783   0.3025147
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1569767   0.1184877   0.1954657
6-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.1351351   0.0248452   0.2454250
6-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138   0.0347651   0.3100625
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2187743   0.1800091   0.2575395
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2037742   0.1453696   0.2621789
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2927511   0.2377372   0.3477650
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.3437229   0.2877954   0.3996504
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.3050008   0.1530391   0.4569624
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4486427   0.3419870   0.5552984
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2083333   0.1663429   0.2503237
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1311475   0.0463587   0.2159364
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2521008   0.1740126   0.3301891
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1057301   0.0769496   0.1345107
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1907754   0.0880837   0.2934671
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1338158   0.0694860   0.1981457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0817590   0.0572297   0.1062883
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1172518   0.0653318   0.1691717
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0940872   0.0448691   0.1433054
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0574273   0.0448060   0.0700485
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0567376   0.0185433   0.0949319
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0540541   0.0352368   0.0728714
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1270715   0.1089788   0.1451642
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1081787   0.0728903   0.1434672
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1877638   0.1631576   0.2123701
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.1093713   0.0863623   0.1323804
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1314160   0.0881920   0.1746400
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1314847   0.0986679   0.1643015
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.3009139   0.2548094   0.3470184
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.3435749   0.2572790   0.4298708
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3759024   0.2728796   0.4789251
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0412216   0.0365975   0.0458456
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0348916   0.0260636   0.0437195
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0443353   0.0350129   0.0536577
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1190125   0.0926102   0.1454148
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0935977   0.0494461   0.1377493
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1123181   0.0822822   0.1423539
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0826330   0.0732956   0.0919705
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1136701   0.0811189   0.1462213
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1136232   0.0956510   0.1315954
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1768501   0.1585569   0.1951434
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2135838   0.1708411   0.2563265
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2005641   0.1728859   0.2282422
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0504202   0.0277052   0.0731351
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0660377   0.0187242   0.1133513
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0561224   0.0238764   0.0883685
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0842087   0.0776726   0.0907448
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0874953   0.0807446   0.0942461
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0994832   0.0839263   0.1150400


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2186495   0.1861408   0.2511582
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500842   0.0413120   0.0588564
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1502101   0.1371047   0.1633155
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0782918   0.0468271   0.1097565
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1192949   0.0996089   0.1389809
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3205980   0.2832855   0.3579105
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0418076   0.0384798   0.0451354
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1103654   0.0935883   0.1271425
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0980577   0.0900528   0.1060627
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0537313   0.0366447   0.0708180
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0885347   0.0846552   0.0924142
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0286188   0.0219621   0.0352756
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0398671   0.0242254   0.0555088
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120997   0.0102756   0.0139237
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0274456   0.0229617   0.0319295
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393898   0.0369053   0.0418742
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2092593   0.1749182   0.2436003
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0564436   0.0463321   0.0665551
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1489203   0.1354543   0.1623863
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1192949   0.0996089   0.1389809
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3220339   0.2842988   0.3597690
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406862   0.0369369   0.0444355
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1123039   0.0945135   0.1300943
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0928355   0.0847544   0.1009166
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0546282   0.0372644   0.0719920
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0868936   0.0822329   0.0915543


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           2.3770884   1.1287773   5.0059026
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.9885999   0.9518257   4.1546783
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8583264   0.4298605   1.7138681
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.7756305   0.4016362   1.4978796
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           1.1806092   0.6141094   2.2696901
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.9414340   0.4109046   2.1569435
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.8996595   0.6456289   1.2536416
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.3086463   1.1357942   1.5078041
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.9500768   0.5777386   1.5623776
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.2456523   0.9397286   1.6511678
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5588148   0.2951655   1.0579624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2018281   0.8582375   1.6829732
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.4666059   0.8444878   2.5470265
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.3891352   0.8695189   2.2192694
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.2725923   0.7306337   2.2165570
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.1834969   0.6608575   2.1194656
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2172461   0.6419746   2.3080166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0625765   0.7139910   1.5813489
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8948615   0.6480661   1.2356409
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.5075233   1.2508156   1.8169157
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.5514184   0.5741090   4.1924077
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.2358757   0.4535355   3.3677377
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.2079432   0.8707298   1.6757514
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.2015331   0.8903034   1.6215617
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0809222   0.8017255   1.4573476
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1865030   0.8628574   1.6315433
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9332267   0.7404824   1.1761416
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0601754   0.8572012   1.3112113
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.7750549   0.4680849   1.2833358
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9844643   0.7094720   1.3660439
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3256182   0.9967205   1.7630454
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.3460549   1.1205486   1.6169435
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2134641   0.9736301   1.5123763
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1571005   0.9779528   1.3690656
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.3106996   0.5619843   3.0569064
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.1234568   0.5411892   2.3321884
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1698223   1.0723981   1.2760973
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1265166   0.9775228   1.2982201
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.4440566   0.2286595   0.8623576
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.5986919   1.0804462   2.3655188
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.4511777   0.6737365   3.1257276
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           2.1211333   1.2325924   3.6501979
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.5772358   0.6041760   4.1174636
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           2.1318681   0.8213422   5.5334573
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0234131   0.6718053   1.5590446
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0683479   0.7134358   1.5998178
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3084753   0.7575620   2.2600230
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1265734   0.7670893   1.6545242
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.6431335   0.8398056   3.2148961
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.7738485   1.0741918   2.9292146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.2603362   1.1014131   1.4421904
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.3323850   1.0630770   1.6699163
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           2.2560553   1.0589904   4.8062623
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           2.2829132   1.1278960   4.6207207
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.7636739   0.3285070   1.7752978
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9661363   0.4952828   1.8846189
6-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.8608609   0.3671435   2.0185061
6-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           1.0983397   0.4764631   2.5318856
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9314359   0.6849840   1.2665594
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.3381422   1.1549411   1.5504032
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.8873449   0.5255296   1.4982619
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.3052454   0.9785035   1.7410929
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6295082   0.3198124   1.2391032
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2100840   0.8362207   1.7510969
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.8043611   0.9874829   3.2969875
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.2656355   0.7295573   2.1956237
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.4341150   0.8404161   2.4472231
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.1507881   0.6292395   2.1046251
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9879905   0.4866427   2.0058358
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9412613   0.6236126   1.4207101
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8513219   0.5966582   1.2146804
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.4776240   1.2183705   1.7920433
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.2015578   0.8668674   1.6654692
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.2021861   0.8872843   1.6288482
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1417714   0.8506982   1.5324375
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2492024   0.9129042   1.7093870
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8464402   0.6417954   1.1163386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0755377   0.8475178   1.3649050
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.7864526   0.4669561   1.3245521
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9437502   0.6669689   1.3353911
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3756012   1.0110443   1.8716082
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.3750340   1.1321524   1.6700212
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2077109   0.9648055   1.5117717
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1340907   0.9551693   1.3465276
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.3097484   0.5618623   3.0531342
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.1130952   0.5363418   2.3100584
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0390300   0.9352667   1.1543054
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1813886   0.9898141   1.4100414


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0456748    0.0126165   0.0787330
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0093019   -0.0302523   0.0116486
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0022263   -0.0145899   0.0190425
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0054391   -0.0050696   0.0159479
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0162714   -0.0148691   0.0474119
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0019740   -0.0246909   0.0207429
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0132834   -0.0038151   0.0303819
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0063976   -0.0091843   0.0219796
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0014905   -0.0048443   0.0078252
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0238066    0.0104815   0.0371317
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0097204   -0.0156673   0.0351081
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0096875   -0.0034530   0.0228280
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0179065   -0.0101952   0.0460082
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0000015   -0.0023424   0.0023393
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0048968   -0.0221645   0.0123708
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0098675    0.0040595   0.0156756
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0140745    0.0026723   0.0254768
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0042808   -0.0114972   0.0200588
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0071964    0.0032840   0.0111088
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0002636   -0.0057992   0.0052719
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0099722    0.0027250   0.0172194
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0089393   -0.0036604   0.0215390
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0002068   -0.0010880   0.0015015
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0016878   -0.0015343   0.0049098
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0053643    0.0006704   0.0100582
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0050465    0.0023845   0.0077084
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0421490    0.0073244   0.0769737
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0049000   -0.0245550   0.0147550
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0008792   -0.0161369   0.0143785
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0072876   -0.0019996   0.0165749
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0178731   -0.0137208   0.0494671
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0009259   -0.0233964   0.0252482
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0164197   -0.0015458   0.0343851
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0045424   -0.0109322   0.0200171
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0009837   -0.0083121   0.0063447
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0218489    0.0081672   0.0355306
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0099236   -0.0033898   0.0232370
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0211200   -0.0071605   0.0494005
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0005353   -0.0031812   0.0021106
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0067086   -0.0251112   0.0116939
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0102025    0.0043101   0.0160949
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0140331    0.0019380   0.0261281
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0042081   -0.0118680   0.0202841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0026849   -0.0021503   0.0075202


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.3080119    0.0609410   0.4900773
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0403441   -0.1351701   0.0465606
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0120104   -0.0829843   0.0986726
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0234457   -0.0252311   0.0698114
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0438803   -0.0439200   0.1242961
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0090281   -0.1184575   0.0896948
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.1033154   -0.0383067   0.2256207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0683017   -0.1131400   0.2201684
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0297591   -0.1052912   0.1483082
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1584886    0.0656135   0.2421322
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1241558   -0.2635432   0.3928953
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0812064   -0.0358263   0.1850161
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0558535   -0.0360134   0.1395742
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0000363   -0.0576241   0.0544158
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0443694   -0.2129582   0.1007872
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.1006300    0.0398980   0.1575203
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0765303    0.0125301   0.1363826
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0796703   -0.2648804   0.3303662
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0812837    0.0361605   0.1242945
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0037406   -0.0854510   0.0718188
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.3484477    0.0566756   0.5499741
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.2242268   -0.1484932   0.4759882
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0170878   -0.0959344   0.1184542
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0614944   -0.0631239   0.1715052
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.2267900    0.0091559   0.3966219
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.1281162    0.0582042   0.1928385
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.2878177    0.0231064   0.4807995
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0261100   -0.1362897   0.0733861
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0056323   -0.1082792   0.0875077
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0322373   -0.0114656   0.0740520
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0494284   -0.0421397   0.1329509
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0044248   -0.1188612   0.1141260
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.1344225   -0.0231089   0.2676983
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0526342   -0.1440181   0.2154828
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0174281   -0.1558754   0.1044365
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1467151    0.0502999   0.2333421
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0831854   -0.0353989   0.1881882
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0655832   -0.0264757   0.1493858
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0131574   -0.0803130   0.0498236
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0597364   -0.2365595   0.0918017
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.1098987    0.0447224   0.1706281
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0735165    0.0080635   0.1346505
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0770308   -0.2683220   0.3283471
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0308989   -0.0263089   0.0849178
