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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        mage       pers_wast   n_cell       n
------------  -------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                0      108     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                1        7     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)            0       85     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)            1        4     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               0       42     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               1        2     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                0      104     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)            0       63     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)            1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               0       48     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               1        1     217
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                0      127     239
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                1       13     239
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)            0       70     239
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)            1        8     239
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30               0       21     239
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30               1        0     239
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                0       61     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                1        3     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)            0      127     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)            1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               0       46     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           <25                0      160     284
0-24 months   ki0047075b-MAL-ED          PERU                           <25                1        1     284
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)            0       60     284
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)            1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           >=30               0       63     284
0-24 months   ki0047075b-MAL-ED          PERU                           >=30               1        0     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                0      127     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            0       48     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       96     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                0       80     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            0       67     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0      106     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        0     253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                0      209     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                1       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)            0      101     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)            1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               0       40     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               1        3     373
0-24 months   ki1000108-IRC              INDIA                          <25                0      231     410
0-24 months   ki1000108-IRC              INDIA                          <25                1       27     410
0-24 months   ki1000108-IRC              INDIA                          [25-30)            0      109     410
0-24 months   ki1000108-IRC              INDIA                          [25-30)            1       14     410
0-24 months   ki1000108-IRC              INDIA                          >=30               0       22     410
0-24 months   ki1000108-IRC              INDIA                          >=30               1        7     410
0-24 months   ki1000109-EE               PAKISTAN                       <25                0       40     748
0-24 months   ki1000109-EE               PAKISTAN                       <25                1        2     748
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)            0      266     748
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)            1       16     748
0-24 months   ki1000109-EE               PAKISTAN                       >=30               0      386     748
0-24 months   ki1000109-EE               PAKISTAN                       >=30               1       38     748
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                0      797    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                1       63    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)            0      323    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)            1       37    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               0      132    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               1       14    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                0      142     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                1       19     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)            0      108     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)            1       22     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               0       60     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               1       24     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                0      236     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                1       23     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)            0      144     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)            1       16     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               0      105     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               1        8     532
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                0      324     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                1        5     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)            0      188     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)            1        5     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               0      113     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               1        5     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                0      367     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                1       16     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)            0      219     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)            1        5     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               0      118     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               1        5     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                0      797    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                1       23    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)            0      719    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)            1       18    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      574    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       17    2148
0-24 months   ki1101329-Keneba           GAMBIA                         <25                0      936    2419
0-24 months   ki1101329-Keneba           GAMBIA                         <25                1       48    2419
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)            0      511    2419
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)            1       19    2419
0-24 months   ki1101329-Keneba           GAMBIA                         >=30               0      842    2419
0-24 months   ki1101329-Keneba           GAMBIA                         >=30               1       63    2419
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                0      134     250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                1        2     250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)            0       60     250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)            1        1     250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               0       52     250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               1        1     250
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                0      603    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                1       72    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)            0      368    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)            1       39    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30               0      471    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30               1       80    1633
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                0      558    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                1       96    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)            0      312    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)            1       40    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               0      144    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               1       34    1184
0-24 months   ki1119695-PROBIT           BELARUS                        <25                0     8868   16581
0-24 months   ki1119695-PROBIT           BELARUS                        <25                1       87   16581
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)            0     4601   16581
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)            1       42   16581
0-24 months   ki1119695-PROBIT           BELARUS                        >=30               0     2953   16581
0-24 months   ki1119695-PROBIT           BELARUS                        >=30               1       30   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                0     5115    9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                1       84    9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)            0     2353    9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)            1       52    9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0     1677    9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1       30    9311
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                0      404    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                1       12    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)            0      223    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)            1        9    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               0      390    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               1       15    1053
0-24 months   ki1135781-COHORTS          INDIA                          <25                0     1466    4068
0-24 months   ki1135781-COHORTS          INDIA                          <25                1      175    4068
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)            0     1250    4068
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)            1      119    4068
0-24 months   ki1135781-COHORTS          INDIA                          >=30               0      947    4068
0-24 months   ki1135781-COHORTS          INDIA                          >=30               1      111    4068
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                0     1178    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                1       57    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)            0      738    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)            1       47    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               0      751    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               1       40    2811
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                0      251     581
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                1        3     581
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)            0      153     581
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)            1        0     581
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30               0      172     581
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30               1        2     581
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                0    22678   31346
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                1     1344   31346
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)            0     4704   31346
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)            1      292   31346
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               0     2170   31346
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               1      158   31346
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                0      113     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                1        2     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)            0       84     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)            1        5     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30               0       44     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30               1        0     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                0      104     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)            0       64     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)            1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30               0       48     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30               1        1     217
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                0      125     238
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                1       14     238
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)            0       75     238
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)            1        3     238
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30               0       19     238
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30               1        2     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                0       61     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                1        2     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)            0      125     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)            1        3     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30               0       46     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30               1        0     237
0-6 months    ki0047075b-MAL-ED          PERU                           <25                0      161     284
0-6 months    ki0047075b-MAL-ED          PERU                           <25                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)            0       60     284
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)            1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           >=30               0       63     284
0-6 months    ki0047075b-MAL-ED          PERU                           >=30               1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                0      126     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            0       47     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       96     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                0       80     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            0       67     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0      106     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        0     253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                0      181     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                1       32     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)            0       90     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)            1       14     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30               0       37     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30               1        4     358
0-6 months    ki1000108-IRC              INDIA                          <25                0      215     402
0-6 months    ki1000108-IRC              INDIA                          <25                1       37     402
0-6 months    ki1000108-IRC              INDIA                          [25-30)            0      100     402
0-6 months    ki1000108-IRC              INDIA                          [25-30)            1       21     402
0-6 months    ki1000108-IRC              INDIA                          >=30               0       23     402
0-6 months    ki1000108-IRC              INDIA                          >=30               1        6     402
0-6 months    ki1000109-EE               PAKISTAN                       <25                0       42     728
0-6 months    ki1000109-EE               PAKISTAN                       <25                1        0     728
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)            0      250     728
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)            1       28     728
0-6 months    ki1000109-EE               PAKISTAN                       >=30               0      382     728
0-6 months    ki1000109-EE               PAKISTAN                       >=30               1       26     728
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                0      324     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                1        4     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)            0      186     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)            1        6     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30               0      113     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30               1        4     637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                0      762    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                1       14    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)            0      686    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)            1       19    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      544    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       19    2044
0-6 months    ki1101329-Keneba           GAMBIA                         <25                0      810    2031
0-6 months    ki1101329-Keneba           GAMBIA                         <25                1       10    2031
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)            0      429    2031
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)            1        5    2031
0-6 months    ki1101329-Keneba           GAMBIA                         >=30               0      741    2031
0-6 months    ki1101329-Keneba           GAMBIA                         >=30               1       36    2031
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                0      512    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                1       66    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)            0      296    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)            1       36    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30               0      146    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30               1       28    1084
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                0       99     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                1       10     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)            0       81     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)            1        4     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               0       37     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               1        3     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                0       94     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)            0       59     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)            1        1     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               0       42     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               1        1     197
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                0      118     229
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                1       15     229
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)            0       63     229
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)            1       12     229
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30               0       21     229
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30               1        0     229
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                0       58     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                1        2     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)            0      126     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)            1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               0       45     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               1        0     231
6-24 months   ki0047075b-MAL-ED          PERU                           <25                0      137     251
6-24 months   ki0047075b-MAL-ED          PERU                           <25                1        1     251
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)            0       57     251
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)            1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           >=30               0       55     251
6-24 months   ki0047075b-MAL-ED          PERU                           >=30               1        1     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                0      118     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            0       41     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       94     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                0       72     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            0       63     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0      103     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        0     238
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                0      206     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                1       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)            0      100     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)            1        9     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               0       39     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               1        4     373
6-24 months   ki1000108-IRC              INDIA                          <25                0      230     410
6-24 months   ki1000108-IRC              INDIA                          <25                1       28     410
6-24 months   ki1000108-IRC              INDIA                          [25-30)            0      110     410
6-24 months   ki1000108-IRC              INDIA                          [25-30)            1       13     410
6-24 months   ki1000108-IRC              INDIA                          >=30               0       22     410
6-24 months   ki1000108-IRC              INDIA                          >=30               1        7     410
6-24 months   ki1000109-EE               PAKISTAN                       <25                0       36     730
6-24 months   ki1000109-EE               PAKISTAN                       <25                1        4     730
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)            0      252     730
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)            1       28     730
6-24 months   ki1000109-EE               PAKISTAN                       >=30               0      356     730
6-24 months   ki1000109-EE               PAKISTAN                       >=30               1       54     730
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                0      657    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                1      105    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)            0      254    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)            1       60    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               0      105    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               1       23    1204
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                0      130     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                1       22     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)            0       98     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)            1       17     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               0       61     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               1       20     348
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                0      214     490
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                1       22     490
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)            0      130     490
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)            1       20     490
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               0       92     490
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               1       12     490
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                0      288     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                1       20     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)            0      176     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)            1       10     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               0       99     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               1        8     601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                0      344     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                1       22     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)            0      202     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)            1       12     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               0      109     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               1        8     697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                0      594    1692
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                1       27    1692
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)            0      554    1692
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)            1       32    1692
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      460    1692
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       25    1692
6-24 months   ki1101329-Keneba           GAMBIA                         <25                0      794    2218
6-24 months   ki1101329-Keneba           GAMBIA                         <25                1       66    2218
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)            0      458    2218
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)            1       36    2218
6-24 months   ki1101329-Keneba           GAMBIA                         >=30               0      770    2218
6-24 months   ki1101329-Keneba           GAMBIA                         >=30               1       94    2218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                0      118     216
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                1        2     216
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)            0       50     216
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)            1        0     216
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               0       45     216
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               1        1     216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                0      603    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                1       72    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)            0      368    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)            1       39    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30               0      471    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30               1       80    1633
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                0      524    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                1      108    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)            0      286    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)            1       62    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               0      130    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               1       44    1154
6-24 months   ki1119695-PROBIT           BELARUS                        <25                0     3754    7097
6-24 months   ki1119695-PROBIT           BELARUS                        <25                1        2    7097
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)            0     2029    7097
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)            1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        >=30               0     1312    7097
6-24 months   ki1119695-PROBIT           BELARUS                        >=30               1        0    7097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                0     1109    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                1       48    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)            0      571    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)            1       32    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0      447    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1       15    2222
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                0      358     932
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                1       16     932
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)            0      196     932
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)            1       10     932
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               0      337     932
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               1       15     932
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                0     1072    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                1       79    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)            0      684    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)            1       54    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               0      690    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               1       60    2639
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                0      244     565
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                1        2     565
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)            0      149     565
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)            1        0     565
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30               0      167     565
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30               1        3     565


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/117e31ae-ccac-43d0-85c4-b5b737aba6fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/117e31ae-ccac-43d0-85c4-b5b737aba6fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/117e31ae-ccac-43d0-85c4-b5b737aba6fc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/117e31ae-ccac-43d0-85c4-b5b737aba6fc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.1046512   0.0672542   0.1420482
0-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.1138211   0.0576261   0.1700162
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.2413793   0.0854450   0.3973136
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.0732558   0.0559831   0.0905286
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.1027778   0.0583426   0.1472130
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.0958904   0.0577106   0.1340702
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.1180124   0.0681113   0.1679135
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.1692308   0.1046897   0.2337718
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2857143   0.1889778   0.3824508
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0888031   0.0541273   0.1234789
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.1000000   0.0534716   0.1465284
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.0707965   0.0234619   0.1181311
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.0151976   0.0019678   0.0284273
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.0259067   0.0034774   0.0483360
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.0423729   0.0059991   0.0787467
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.0417755   0.0217242   0.0618267
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.0223214   0.0029625   0.0416803
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0406504   0.0057272   0.0755736
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.0280488   0.0167451   0.0393525
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0244233   0.0132766   0.0355701
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0287648   0.0152861   0.0422435
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.0487805   0.0353187   0.0622423
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0358491   0.0200179   0.0516802
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0696133   0.0530292   0.0861973
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.1066667   0.0597076   0.1536257
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0958231   0.0559194   0.1357268
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1451906   0.1082806   0.1821006
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.1467890   0.1083992   0.1851788
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1136364   0.0667093   0.1605634
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1910112   0.1092738   0.2727487
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0097152   0.0049984   0.0144320
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0090459   0.0046666   0.0134252
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0100570   0.0038000   0.0163140
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0161570   0.0127296   0.0195843
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0216216   0.0158085   0.0274348
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0175747   0.0113410   0.0238084
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0288462   0.0127547   0.0449376
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0387931   0.0139334   0.0636528
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0370370   0.0186357   0.0554384
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.1066423   0.0917066   0.1215780
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.0869248   0.0719994   0.1018501
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1049149   0.0864474   0.1233825
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0461538   0.0344498   0.0578579
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0598726   0.0432730   0.0764722
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0505689   0.0352964   0.0658414
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.0559487   0.0513183   0.0605791
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0584468   0.0482750   0.0686185
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0678694   0.0537844   0.0819544
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                0.1468254   0.1030724   0.1905784
0-6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.1735537   0.1059889   0.2411185
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592812   0.3545119
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.0180412   0.0086742   0.0274083
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0269504   0.0149937   0.0389070
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0337478   0.0188278   0.0486678
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.0121951   0.0046810   0.0197092
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0115207   0.0014784   0.0215631
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0463320   0.0315483   0.0611158
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.1141869   0.0774857   0.1508880
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1084337   0.0610909   0.1557766
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1609195   0.0836345   0.2382046
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.1085271   0.0705264   0.1465278
6-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.1056911   0.0512923   0.1600898
6-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.2413793   0.0854450   0.3973136
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.1377953   0.1159342   0.1596564
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.1910828   0.1339176   0.2482480
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1796875   0.1393954   0.2199796
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.1447368   0.0887236   0.2007501
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.1478261   0.0828634   0.2127887
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2469136   0.1528708   0.3409563
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0932203   0.0560889   0.1303518
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.1333333   0.0788779   0.1877888
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1153846   0.0539198   0.1768494
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.0649351   0.0373931   0.0924770
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.0537634   0.0213223   0.0862046
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.0747664   0.0248898   0.1246429
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.0601093   0.0357408   0.0844778
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.0560748   0.0252283   0.0869212
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0683761   0.0226105   0.1141417
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.0434783   0.0274342   0.0595223
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0546075   0.0362057   0.0730093
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0515464   0.0318624   0.0712304
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.0767442   0.0589499   0.0945385
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0728745   0.0499479   0.0958011
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1087963   0.0880288   0.1295638
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.1066667   0.0597076   0.1536257
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0958231   0.0559194   0.1357268
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1451906   0.1082806   0.1821006
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.1708861   0.1293485   0.2124237
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1781609   0.1212560   0.2350658
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2528736   0.1614593   0.3442878
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0414866   0.0299936   0.0529796
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0530680   0.0351717   0.0709643
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0324675   0.0163023   0.0486328
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0427807   0.0222608   0.0633007
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0485437   0.0191801   0.0779072
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0426136   0.0215017   0.0637256
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0686360   0.0540267   0.0832452
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0731707   0.0543788   0.0919626
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0800000   0.0605805   0.0994195


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0883459   0.0642074   0.1124843
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0537412   0.0447529   0.0627295
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178284   0.0151404   0.0205163
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0341880   0.0232075   0.0451686
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0995575   0.0903557   0.1087594
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572322   0.0531458   0.0613186
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0254403   0.0186125   0.0322681
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0251108   0.0183045   0.0319170
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1561462   0.1410608   0.1712315
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1695402   0.1300601   0.2090204
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1102041   0.0824493   0.1379589
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0496454   0.0392926   0.0599982
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0883679   0.0765532   0.1001826
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1854419   0.1537023   0.2171816
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0427543   0.0343408   0.0511677
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0439914   0.0308183   0.0571645
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0731338   0.0631985   0.0830690


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               1.0876242   0.5912760   2.000633
0-24 months   ki1000108-IRC              INDIA                          >=30                 <25               2.3065134   1.1023830   4.825913
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.4029982   0.9760342   2.016737
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.3089802   0.9863043   1.737222
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.4340081   0.8114317   2.534260
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               2.4210526   1.4084745   4.161592
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.1260870   0.6134386   2.067153
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.7972297   0.3675530   1.729207
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.7046632   0.4993851   5.818910
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               2.7881356   0.8210254   9.468282
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.5343192   0.1982952   1.439757
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.9730691   0.3637102   2.603346
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.8707451   0.4736600   1.600720
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.0255278   0.5527558   1.902662
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.7349057   0.4365923   1.237050
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4270718   0.9910933   2.054836
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.8983416   0.4759908   1.695448
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               1.3611615   0.7972012   2.324082
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.7741477   0.4748292   1.262148
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.3012640   0.7880648   2.148666
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9311013   0.5609300   1.545558
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               1.0351763   0.7422344   1.443735
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.3382239   0.9501630   1.884775
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0877479   0.7195125   1.644441
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.3448276   0.5750214   3.145207
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.2839506   0.6083092   2.710018
0-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8151059   0.6531054   1.017290
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               0.9838023   0.7856265   1.231968
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.2972399   0.8909281   1.888852
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0956595   0.7385974   1.625337
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0446488   0.8657690   1.260488
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.2130648   0.9663804   1.522720
0-6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          [25-30)              <25               1.1820415   0.7239606   1.929970
0-6 months    ki1000108-IRC              INDIA                          >=30                 <25               1.4091333   0.6503596   3.053167
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.4938196   0.7545761   2.957286
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.8705912   0.9458478   3.699444
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9447005   0.3248657   2.747163
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               3.7992278   1.8982333   7.603982
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.9496167   0.5521967   1.633063
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.4092651   0.7907049   2.511718
6-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.9738676   0.5225744   1.814896
6-24 months   ki1000108-IRC              INDIA                          >=30                 <25               2.2241379   1.0666944   4.637495
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.3867152   0.9355339   2.055488
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.3040179   0.9438569   1.801611
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.0213439   0.5686742   1.834342
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.7059484   0.9911744   2.936173
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.4303029   0.8084744   2.530404
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.2377622   0.6364542   2.407173
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.8279570   0.3959938   1.731120
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1514019   0.5222863   2.538314
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.9328802   0.4710360   1.847556
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               1.1375291   0.5201357   2.487760
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.2559726   0.7619931   2.070186
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.1855670   0.6971109   2.016277
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9495767   0.6423932   1.403651
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4176487   1.0498733   1.914258
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.8983416   0.4759908   1.695448
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               1.3611615   0.7972012   2.324082
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0425713   0.6978965   1.557473
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.4797786   0.9572117   2.287628
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.2791598   0.8267720   1.979082
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.7826028   0.4426833   1.383534
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.1347087   0.5243443   2.455570
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.9960938   0.4998290   1.985084
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0660698   0.7636977   1.488160
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.1655696   0.8439707   1.609715


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0124220   -0.0122617   0.0371057
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0101995   -0.0021050   0.0225041
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0553209    0.0126161   0.0980257
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0004572   -0.0252424   0.0243280
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0082399   -0.0032785   0.0197583
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0061590   -0.0188542   0.0065362
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0010469   -0.0098348   0.0077409
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0049607   -0.0057433   0.0156648
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0102960   -0.0245383   0.0451302
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0032079   -0.0286032   0.0221873
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0001260   -0.0017030   0.0014511
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0016714   -0.0007480   0.0040909
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0053419   -0.0078837   0.0185675
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0070848   -0.0183886   0.0042190
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0050735   -0.0040403   0.0141873
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0012835   -0.0009124   0.0034793
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0123786   -0.0158454   0.0406026
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0073991   -0.0008313   0.0156294
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0129157    0.0053529   0.0204784
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0057393   -0.0199504   0.0314291
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0085460   -0.0158981   0.0329902
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0183509   -0.0043998   0.0411016
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0248034   -0.0194163   0.0690230
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0169837   -0.0116689   0.0456364
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0017071   -0.0206883   0.0172741
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0001490   -0.0166655   0.0169634
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0061671   -0.0070858   0.0194201
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0116237   -0.0028911   0.0261385
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0102960   -0.0245383   0.0451302
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0145559   -0.0144776   0.0435893
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0012677   -0.0068143   0.0093496
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0012107   -0.0148099   0.0172313
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0044978   -0.0067256   0.0157212


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.1061046   -0.1298445   0.2927797
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.1222154   -0.0137786   0.2399664
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.3191591    0.0327978   0.5207369
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0051754   -0.3287812   0.2396208
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.3515704   -0.3179584   0.6809756
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.1729263   -0.5820110   0.1303752
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0387721   -0.4207858   0.2405277
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0923077   -0.1297443   0.2707152
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0880279   -0.2706307   0.3454486
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0223421   -0.2153915   0.1400438
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0131349   -0.1911873   0.1383032
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0937507   -0.0518169   0.2191722
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.1562500   -0.3296912   0.4646019
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0711626   -0.1907770   0.0364365
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0990385   -0.0968825   0.2599648
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0224257   -0.0167318   0.0600750
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0777530   -0.1170336   0.2385730
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.2908406   -0.1046728   0.5447457
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.5143472    0.1569148   0.7202434
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0478573   -0.1921079   0.2395188
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0729974   -0.1603245   0.2594022
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.1175239   -0.0361478   0.2484044
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.1462979   -0.1567820   0.3699701
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.1541117   -0.1471467   0.3762550
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0269993   -0.3755514   0.2332328
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0024720   -0.3195032   0.2458813
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.1242236   -0.1863334   0.3534833
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1315377   -0.0483293   0.2805441
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0880279   -0.2706307   0.3454486
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0784928   -0.0917601   0.2221960
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0296502   -0.1789505   0.2013416
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0275205   -0.4140924   0.3312203
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0615009   -0.1049943   0.2029095
