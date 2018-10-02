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

* arm
* meducyrs
* feducyrs
* W_mhtcm
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm

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
![](/tmp/6369f306-8726-4009-ad36-252501b01944/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6369f306-8726-4009-ad36-252501b01944/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6369f306-8726-4009-ad36-252501b01944/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6369f306-8726-4009-ad36-252501b01944/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.1046512   0.0672542   0.1420482
0-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.1138211   0.0576261   0.1700162
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.2413793   0.0854450   0.3973136
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.0743646   0.0564258   0.0923033
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.1042170   0.0666625   0.1417715
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1067119   0.0691436   0.1442802
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.1179414   0.0681435   0.1677393
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.1691421   0.1048736   0.2334105
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2865510   0.1914139   0.3816881
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0888031   0.0541273   0.1234789
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.1000000   0.0534716   0.1465284
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.0707965   0.0234619   0.1181311
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.0151976   0.0019678   0.0284273
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.0259067   0.0034774   0.0483360
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.0423729   0.0059991   0.0787467
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.0417755   0.0217242   0.0618267
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.0223214   0.0029625   0.0416803
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0406504   0.0057272   0.0755736
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.0279240   0.0166576   0.0391904
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0243004   0.0131963   0.0354046
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0286220   0.0151888   0.0420553
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.0480823   0.0349520   0.0612127
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0356713   0.0203452   0.0509973
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0720723   0.0551677   0.0889769
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.1026943   0.0587294   0.1466591
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0898270   0.0504563   0.1291978
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1417672   0.1078747   0.1756598
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.1473974   0.1089298   0.1858650
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1181281   0.0709467   0.1653094
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1951108   0.1139413   0.2762804
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0096492   0.0049271   0.0143714
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0090986   0.0047330   0.0134642
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0103713   0.0042133   0.0165293
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0160977   0.0126937   0.0195017
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0215301   0.0158045   0.0272557
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0177400   0.0116080   0.0238721
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0288462   0.0127547   0.0449376
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0387931   0.0139334   0.0636528
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0370370   0.0186357   0.0554384
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.1039735   0.0894415   0.1185054
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.0851831   0.0706049   0.0997614
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1012673   0.0835615   0.1189732
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0454575   0.0339275   0.0569875
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0617550   0.0451685   0.0783415
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0510624   0.0360121   0.0661127
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.0558160   0.0511960   0.0604360
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0605512   0.0503063   0.0707961
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0679846   0.0550259   0.0809432
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                0.1468254   0.1030724   0.1905784
0-6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.1735537   0.1059889   0.2411185
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592812   0.3545119
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.0170402   0.0077688   0.0263117
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0259570   0.0141584   0.0377556
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0311540   0.0164356   0.0458724
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.0121951   0.0046810   0.0197092
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0115207   0.0014784   0.0215631
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0463320   0.0315483   0.0611158
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.1147460   0.0779552   0.1515367
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1133686   0.0657415   0.1609958
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1655639   0.0887102   0.2424176
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.1085271   0.0705264   0.1465278
6-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.1056911   0.0512923   0.1600898
6-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.2413793   0.0854450   0.3973136
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.1400231   0.1190918   0.1609545
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.2001364   0.1460459   0.2542269
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1995531   0.1604056   0.2387006
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.1447805   0.0887701   0.2007910
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.1478647   0.0829003   0.2128291
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2467104   0.1526989   0.3407220
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0937447   0.0571956   0.1302938
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.1330067   0.0800932   0.1859202
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1151254   0.0553311   0.1749196
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.0649351   0.0373931   0.0924770
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.0537634   0.0213223   0.0862046
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.0747664   0.0248898   0.1246429
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.0601093   0.0357408   0.0844778
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.0560748   0.0252283   0.0869212
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0683761   0.0226105   0.1141417
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.0422164   0.0266282   0.0578046
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0554964   0.0372681   0.0737247
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0509533   0.0319757   0.0699310
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.0796402   0.0616266   0.0976539
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0739137   0.0514333   0.0963941
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1188364   0.0971489   0.1405239
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.1028167   0.0586824   0.1469511
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0895988   0.0502569   0.1289408
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1416383   0.1083330   0.1749435
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.1716270   0.1300071   0.2132468
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1824339   0.1253521   0.2395158
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2567581   0.1660276   0.3474886
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0406313   0.0291681   0.0520946
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0493148   0.0315575   0.0670721
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0295349   0.0134419   0.0456279
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0428151   0.0225974   0.0630327
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0478650   0.0195676   0.0761624
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0439835   0.0227116   0.0652554
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0673473   0.0529844   0.0817103
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0744657   0.0557305   0.0932008
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0794518   0.0604346   0.0984690


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.4014332   1.0480647   1.873944
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.4349832   1.1014453   1.869523
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.4341199   0.8130575   2.529587
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               2.4296054   1.4208878   4.154433
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
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.8702346   0.4730625   1.600863
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.0249982   0.5520674   1.903067
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.7418788   0.4475182   1.229858
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4989347   1.0483982   2.143084
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.8747035   0.4641227   1.648500
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               1.3804784   0.8430066   2.260624
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.8014258   0.4970852   1.292099
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.3237061   0.8098196   2.163689
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9429343   0.5684664   1.564077
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               1.0748337   0.7840221   1.473514
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.3374649   0.9525733   1.877874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.1020226   0.7352740   1.651703
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.3448276   0.5750214   3.145207
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.2839506   0.6083092   2.710018
0-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8192776   0.6570124   1.021618
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               0.9739728   0.7789310   1.217853
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.3585224   0.9390105   1.965455
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.1233002   0.7614667   1.657070
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0848361   0.9036182   1.302397
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.2180123   0.9852586   1.505751
0-6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          [25-30)              <25               1.1820415   0.7239606   1.929970
0-6 months    ki1000108-IRC              INDIA                          >=30                 <25               1.4091333   0.6503596   3.053167
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.5232764   0.7503306   3.092465
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.8282582   0.8899274   3.755956
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9447005   0.3248657   2.747163
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               3.7992278   1.8982333   7.603982
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.9879965   0.5820826   1.676974
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.4428735   0.8204703   2.537428
6-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.9738676   0.5225744   1.814896
6-24 months   ki1000108-IRC              INDIA                          >=30                 <25               2.2241379   1.0666944   4.637495
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.4293092   0.9978446   2.047338
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.4251435   1.0602809   1.915562
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.0213022   0.5687494   1.833950
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.7040304   0.9900646   2.932859
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.4188187   0.8168400   2.464432
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.2280737   0.6450440   2.338081
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.8279570   0.3959938   1.731120
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1514019   0.5222863   2.538314
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.9328802   0.4710360   1.847556
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               1.1375291   0.5201357   2.487760
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.3145701   0.8024970   2.153397
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.2069564   0.7148643   2.037790
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9280947   0.6369939   1.352226
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4921655   1.1178382   1.991843
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.8714419   0.4613032   1.646229
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               1.3775801   0.8419723   2.253906
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0629677   0.7152002   1.579838
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.4960243   0.9743352   2.297042
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.2137136   0.7684917   1.916873
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.7269008   0.3936580   1.342243
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.1179484   0.5245990   2.382407
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.0272897   0.5225483   2.019572
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.1056956   0.7952918   1.537251
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.1797320   0.8565189   1.624912


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0124220   -0.0122617   0.0371057
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0090908   -0.0023482   0.0205298
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0553920    0.0128127   0.0979712
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0004572   -0.0252424   0.0243280
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0082399   -0.0032785   0.0197583
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0061590   -0.0188542   0.0065362
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0009221   -0.0096819   0.0078376
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0056589   -0.0049147   0.0162325
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0142684   -0.0178431   0.0463799
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0038163   -0.0292700   0.0216374
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0000600   -0.0016570   0.0015371
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0017307   -0.0006691   0.0041304
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0053419   -0.0078837   0.0185675
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0044160   -0.0153999   0.0065680
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0057698   -0.0032649   0.0148046
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0014162   -0.0007774   0.0036097
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0123786   -0.0158454   0.0406026
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0084001    0.0002426   0.0165575
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0129157    0.0053529   0.0204784
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0051802   -0.0205726   0.0309330
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0085460   -0.0158981   0.0329902
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0161230   -0.0055837   0.0378297
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0247597   -0.0194544   0.0689738
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0164594   -0.0114874   0.0444062
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0017071   -0.0206883   0.0172741
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0001490   -0.0166655   0.0169634
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0074290   -0.0054681   0.0203261
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0087277   -0.0061004   0.0235558
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0141459   -0.0181868   0.0464786
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0138150   -0.0152754   0.0429054
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0021229   -0.0059328   0.0101787
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0011763   -0.0146287   0.0169814
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0057864   -0.0052913   0.0168642


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.1061046   -0.1298445   0.2927797
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.1089299   -0.0187426   0.2206021
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.3195690    0.0342170   0.5206105
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0051754   -0.3287812   0.2396208
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.3515704   -0.3179584   0.6809756
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.1729263   -0.5820110   0.1303752
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0341508   -0.4150559   0.2442222
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1052985   -0.1134114   0.2810467
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.1219909   -0.2083421   0.3620184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0265795   -0.2200354   0.1362009
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0062518   -0.1871044   0.1470483
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0970743   -0.0471609   0.2214426
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.1562500   -0.3296912   0.4646019
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0443558   -0.1606748   0.0603061
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.1126322   -0.0813432   0.2718116
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0247446   -0.0143711   0.0623521
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0777530   -0.1170336   0.2385730
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.3301874   -0.0657971   0.5790485
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.5143472    0.1569148   0.7202434
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0431953   -0.1973155   0.2353934
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0729974   -0.1603245   0.2594022
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.1032560   -0.0428484   0.2288910
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.1460402   -0.1569812   0.3696981
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.1493538   -0.1427978   0.3668180
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0269993   -0.3755514   0.2332328
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0024720   -0.3195032   0.2458813
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.1496413   -0.1518928   0.3722420
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0987651   -0.0847084   0.2512050
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.1209439   -0.2118067   0.3623243
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0744976   -0.0960718   0.2185232
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0496546   -0.1586743   0.2205261
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0267404   -0.4075449   0.3270309
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0791210   -0.0850993   0.2184879
