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

unadjusted

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
![](/tmp/3c777e34-7a1f-4dd7-a0a5-d2ec2761641b/bb240515-e095-498c-bddd-6756be8ef3eb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3c777e34-7a1f-4dd7-a0a5-d2ec2761641b/bb240515-e095-498c-bddd-6756be8ef3eb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3c777e34-7a1f-4dd7-a0a5-d2ec2761641b/bb240515-e095-498c-bddd-6756be8ef3eb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3c777e34-7a1f-4dd7-a0a5-d2ec2761641b/bb240515-e095-498c-bddd-6756be8ef3eb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1055556   0.0605821   0.1505290
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2702703   0.1269015   0.4136391
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2173913   0.0979678   0.3368148
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2398649   0.1911553   0.2885744
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.2058824   0.0697869   0.3419778
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1860465   0.0695783   0.3025147
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1831395   0.1422168   0.2240622
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.2162162   0.0834096   0.3490229
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138   0.0347651   0.3100625
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2265625   0.1799846   0.2731404
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2031250   0.1481601   0.2580899
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3017751   0.2563737   0.3471766
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.3551724   0.3000268   0.4103180
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.3333333   0.1791595   0.4875072
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4347826   0.3333639   0.5362013
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2206235   0.1807918   0.2604552
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1232877   0.0478090   0.1987664
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2651515   0.1897888   0.3405142
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1135903   0.0855603   0.1416202
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1764706   0.0953699   0.2575713
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1557377   0.0913483   0.2201271
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0870445   0.0621693   0.1119197
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1102941   0.0576118   0.1629764
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1015625   0.0491976   0.1539274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0490134   0.0383352   0.0596915
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0598802   0.0238875   0.0958730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0501567   0.0332165   0.0670970
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1246518   0.1075640   0.1417396
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1142132   0.0828010   0.1456254
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1998051   0.1753341   0.2242761
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0685714   0.0310612   0.1060816
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.1063830   0.0180780   0.1946879
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.0847458   0.0135546   0.1559369
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.1096441   0.0861711   0.1331171
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1364764   0.0942070   0.1787458
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1288760   0.0971690   0.1605829
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.3041237   0.2583112   0.3499363
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.3333333   0.2499556   0.4167111
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3736264   0.2741491   0.4731037
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0416310   0.0375808   0.0456812
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0383747   0.0303745   0.0463749
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0457656   0.0372945   0.0542367
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1160305   0.0914951   0.1405660
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0867347   0.0473183   0.1261511
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1122449   0.0842846   0.1402052
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0881535   0.0788861   0.0974209
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1150235   0.0847234   0.1453235
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1202186   0.1024076   0.1380296
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1686813   0.1514745   0.1858882
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2254642   0.1832743   0.2676541
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1981132   0.1712823   0.2249441
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0494505   0.0271613   0.0717398
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0648148   0.0183476   0.1112820
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0555556   0.0236261   0.0874850
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0804926   0.0752517   0.0857336
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0969244   0.0908287   0.1030200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0886571   0.0771318   0.1001824
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.0707424   0.0475077   0.0939770
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0314136   0.0078973   0.0549299
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1130952   0.0651121   0.1610784
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0180723   0.0104114   0.0257332
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0308989   0.0129197   0.0488780
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0414334   0.0283597   0.0545071
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.0309278   0.0136875   0.0481682
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.0487805   0.0106809   0.0868801
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.0659341   0.0149033   0.1169648
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0118445   0.0096441   0.0140449
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0122951   0.0076859   0.0169043
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0129366   0.0083373   0.0175360
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0257077   0.0204353   0.0309800
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.0350000   0.0169881   0.0530119
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0298628   0.0203844   0.0393412
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0181418   0.0120075   0.0242762
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0318302   0.0141069   0.0495535
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0318396   0.0200207   0.0436586
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0340402   0.0306144   0.0374659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0439395   0.0399766   0.0479024
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0448997   0.0357199   0.0540795
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1042945   0.0572750   0.1513140
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2352941   0.0924140   0.3781743
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2380952   0.1090150   0.3671754
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1925676   0.1475865   0.2375486
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.1470588   0.0278532   0.2662644
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1860465   0.0695783   0.3025147
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1569767   0.1184877   0.1954657
6-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.1351351   0.0248452   0.2454250
6-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138   0.0347651   0.3100625
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2185430   0.1788718   0.2582143
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2087912   0.1553227   0.2622597
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3000000   0.2539161   0.3460839
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.3440860   0.2882718   0.3999003
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.3055556   0.1548939   0.4562173
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4418605   0.3367720   0.5469489
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2083333   0.1663429   0.2503237
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1311475   0.0463587   0.2159364
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2521008   0.1740126   0.3301891
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1057471   0.0768256   0.1346687
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2058824   0.1096991   0.3020656
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1351351   0.0714851   0.1987852
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0801688   0.0557056   0.1046320
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1052632   0.0530709   0.1574554
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0894309   0.0389655   0.1398963
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0574273   0.0448060   0.0700485
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0567376   0.0185433   0.0949319
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0540541   0.0352368   0.0728714
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1264970   0.1086692   0.1443248
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1071429   0.0753631   0.1389226
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1947262   0.1700047   0.2194476
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.1096441   0.0861711   0.1331171
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1364764   0.0942070   0.1787458
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1288760   0.0971690   0.1605829
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.3010471   0.2550081   0.3470861
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.3445378   0.2590833   0.4299924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3820225   0.2809920   0.4830529
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0410689   0.0364559   0.0456819
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0351609   0.0263478   0.0439740
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0441724   0.0348813   0.0534636
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1203390   0.0940749   0.1466031
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0930233   0.0495965   0.1364500
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1091314   0.0802787   0.1379841
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0826397   0.0733345   0.0919450
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1114058   0.0796424   0.1431692
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1153213   0.0973520   0.1332905
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1751345   0.1569184   0.1933506
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2369942   0.1921796   0.2818089
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2040558   0.1759301   0.2321814
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0504202   0.0277052   0.0731351
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0660377   0.0187242   0.1133513
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0561224   0.0238764   0.0883685
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0825162   0.0760401   0.0889923
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0895961   0.0827032   0.0964890
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0967226   0.0810240   0.1124213


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           2.5604552   1.2966711   5.0559705
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           2.0594966   1.0276283   4.1274905
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8583264   0.4298605   1.7138681
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.7756305   0.4016362   1.4978796
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           1.1806092   0.6141094   2.2696901
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.9414340   0.4109046   2.1569435
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.8965517   0.6447549   1.2466831
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.3319731   1.1648329   1.5230959
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.9385113   0.5761733   1.5287128
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.2241452   0.9249931   1.6200461
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5588148   0.2951655   1.0579624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2018281   0.8582375   1.6829732
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.5535714   0.9221259   2.6174129
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.3710480   0.8471197   2.2190165
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.2670999   0.7262332   2.2107802
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.1667878   0.6471093   2.1038082
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2217124   0.6446233   2.3154317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0233278   0.6846442   1.5295532
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9162578   0.6738421   1.2458829
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.6029055   1.3337461   1.9263830
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.5514184   0.5741090   4.1924077
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.2358757   0.4535355   3.3677377
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.2447222   0.9110520   1.7005981
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1754028   0.8700355   1.5879487
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0960452   0.8184999   1.4677035
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2285342   0.9047593   1.6681744
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9217824   0.7323437   1.1602241
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0993159   0.8918844   1.3549911
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.7475163   0.4528318   1.2339694
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9673738   0.6977322   1.3412195
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3048089   0.9825823   1.7327059
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.3637414   1.1371985   1.6354142
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.3366281   1.0800719   1.6541257
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1744822   0.9913146   1.3914942
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.3106996   0.5619843   3.0569064
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.1234568   0.5411892   2.3321884
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.2041392   1.1036238   1.3138093
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1014311   0.9505026   1.2763252
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.4440566   0.2286595   0.8623576
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.5986919   1.0804462   2.3655188
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.7097378   0.8322947   3.5122215
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           2.2926464   1.3515582   3.8890133
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.5772358   0.6041760   4.1174636
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           2.1318681   0.8213422   5.5334573
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0380402   0.6831415   1.5773123
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0922028   0.7312920   1.6312319
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3614607   0.7823706   2.3691780
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1616291   0.7960683   1.6950581
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.7545213   0.9146271   3.3656831
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.7550385   1.0622298   2.8997118
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.2908135   1.1283407   1.4766811
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.3190218   1.0470792   1.6615922
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
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9553780   0.7063152   1.2922658
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.3727273   1.2112823   1.5556904
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.8880208   0.5284373   1.4922887
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.2841570   0.9629251   1.7125518
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6295082   0.3198124   1.2391032
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2100840   0.8362207   1.7510969
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.9469309   1.1330459   3.3454428
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.2779083   0.7412385   2.2031365
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.3130194   0.7335413   2.3502699
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.1155327   0.5873210   2.1187959
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9879905   0.4866427   2.0058358
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9412613   0.6236126   1.4207101
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8469992   0.6099082   1.1762550
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.5393737   1.2734010   1.8608997
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.2447222   0.9110520   1.7005981
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1754028   0.8700355   1.5879487
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1444647   0.8551768   1.5316125
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2689790   0.9349305   1.7223822
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8561440   0.6505189   1.1267659
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0755685   0.8473836   1.3651993
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.7730102   0.4617192   1.2941735
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9068666   0.6436563   1.2777114
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3480908   0.9921765   1.8316789
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.3954701   1.1514081   1.6912655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.3532127   1.0905338   1.6791636
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1651375   0.9803601   1.3847417
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.3097484   0.5618623   3.0531342
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.1130952   0.5363418   2.3100584
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0857994   0.9761251   1.2077965
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1721647   0.9759073   1.4078900


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0427334    0.0094795   0.0759874
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0093019   -0.0302523   0.0116486
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0022263   -0.0145899   0.0190425
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0054269   -0.0050242   0.0158780
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0156410   -0.0155152   0.0467972
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0019740   -0.0246909   0.0207429
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0149812   -0.0021866   0.0321489
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0066230   -0.0089669   0.0222129
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0010708   -0.0052689   0.0074105
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0255583    0.0125154   0.0386011
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0097204   -0.0156673   0.0351081
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0096508   -0.0032819   0.0225836
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0164743   -0.0115542   0.0445028
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0001766   -0.0021513   0.0025045
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0056651   -0.0228520   0.0115217
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0099042    0.0041175   0.0156909
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0152267    0.0037572   0.0266963
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0042808   -0.0114972   0.0200588
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0080421    0.0041429   0.0119412
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0002636   -0.0057992   0.0052719
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0105465    0.0037326   0.0173605
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0089393   -0.0036604   0.0215390
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0002552   -0.0010306   0.0015409
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0017379   -0.0014513   0.0049271
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0055113    0.0008411   0.0101814
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0053496    0.0026985   0.0080007
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0421490    0.0073244   0.0769737
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0049000   -0.0245550   0.0147550
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0008792   -0.0161369   0.0143785
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0075189   -0.0021137   0.0171514
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0175100   -0.0140696   0.0490895
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0009259   -0.0233964   0.0252482
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0164027   -0.0015755   0.0343810
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0061326   -0.0092558   0.0215210
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0009837   -0.0083121   0.0063447
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0224233    0.0088960   0.0359507
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0096508   -0.0032819   0.0225836
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0209868   -0.0072769   0.0492505
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0003827   -0.0030226   0.0022573
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0080351   -0.0263150   0.0102448
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0101958    0.0043374   0.0160542
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0157487    0.0035919   0.0279055
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0042081   -0.0118680   0.0202841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0043774   -0.0004791   0.0092338


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.2881766    0.0409567   0.4716688
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0403441   -0.1351701   0.0465606
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0120104   -0.0829843   0.0986726
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0233930   -0.0250665   0.0695616
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0421802   -0.0456597   0.1226411
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0090281   -0.1184575   0.0896948
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.1165202   -0.0259894   0.2392352
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0707076   -0.1108536   0.2225940
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0213802   -0.1136953   0.1400729
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1701502    0.0796144   0.2517802
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1241558   -0.2635432   0.3928953
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0808990   -0.0349734   0.1837988
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0513861   -0.0401714   0.1348847
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0042239   -0.0530421   0.0583757
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0513307   -0.2190147   0.0932872
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.1010038    0.0405075   0.1576857
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0827953    0.0184538   0.1429192
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0796703   -0.2648804   0.3303662
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0908350    0.0459065   0.1336478
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0037406   -0.0854510   0.0718188
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.3685175    0.1014346   0.5562147
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.2242268   -0.1484932   0.4759882
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0210899   -0.0911038   0.1217472
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0633222   -0.0598998   0.1722186
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.2330035    0.0168622   0.4016264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.1358114    0.0662592   0.2001829
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.2878177    0.0231064   0.4807995
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0261100   -0.1362897   0.0733861
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0056323   -0.1082792   0.0875077
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0332602   -0.0125375   0.0769865
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0484242   -0.0430622   0.1318864
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0044248   -0.1188612   0.1141260
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.1342835   -0.0236529   0.2678524
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0710602   -0.1247224   0.2327626
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0174281   -0.1558754   0.1044365
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1505726    0.0555025   0.2360733
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0808990   -0.0349734   0.1837988
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0651695   -0.0268079   0.1489078
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0094058   -0.0764168   0.0534335
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0715478   -0.2469980   0.0792168
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.1098266    0.0450690   0.1701927
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0825044    0.0167433   0.1438673
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0770308   -0.2683220   0.3283471
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0503761   -0.0070465   0.1045244
