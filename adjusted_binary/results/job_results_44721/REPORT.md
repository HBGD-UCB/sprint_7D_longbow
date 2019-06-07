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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        mage       ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      167     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       13     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0       32     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1        5     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       43     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        3     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      138     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       41     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       50     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        1     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0      175     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1       19     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       31     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1        3     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       19     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        2     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      180     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1        9     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        5     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       46     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0      151     302
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1        2     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       81     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       67     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1        0     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      152     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1        7     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       44     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        4     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0      102     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        3     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      136     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        3     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       14     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        2     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0      104     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1        2     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      219     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1       77     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       27     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       32     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       11     373
0-24 months   ki1000108-IRC              INDIA                          [20-30)               0      226     410
0-24 months   ki1000108-IRC              INDIA                          [20-30)               1      118     410
0-24 months   ki1000108-IRC              INDIA                          <20                   0       27     410
0-24 months   ki1000108-IRC              INDIA                          <20                   1       10     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  0       17     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  1       12     410
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0      143     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1       19     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   0        1     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   1        0     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  0      171     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       43     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      290     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1       52     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0       62     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1        7     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       45     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1        7     463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0       63     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1       15     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0        8     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1        0     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       14     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1        6     106
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      350     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1       67     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       66     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1        7     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0      108     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       24     622
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      464     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1       29     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       83     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1        2     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0      111     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       11     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      455     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1       39     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0      122     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       14     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0      115     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       13     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1472    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       99    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      154    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       13    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      593    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       45    2376
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               0     1238    2863
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               1      205    2863
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      348    2863
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   1       46    2863
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      840    2863
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      186    2863
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      174     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1        1     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       47     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        0     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       57     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        2     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0      424     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1       21     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0       89     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1        5     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      228     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1       12     779
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      295     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       93     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       92     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       31     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       59     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       32     602
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0     5341    8127
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1      520    8127
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   0      764    8127
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   1       49    8127
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     1341    8127
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      112    8127
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     8483   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      863   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     2017   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      199   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     2132   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      207   13901
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               0      285     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               1       23     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0       97     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1       12     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0      213     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1       26     656
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)               0     3245    5305
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)               1      352    5305
0-24 months   ki1135781-COHORTS          INDIA                          <20                   0      384    5305
0-24 months   ki1135781-COHORTS          INDIA                          <20                   1       42    5305
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  0     1129    5305
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  1      153    5305
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               0     1596    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      224    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0      326    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1       51    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      741    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1      107    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      361     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1        3     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0      104     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1        4     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0      196     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1        2     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     5851   13325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1      374   13325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     5586   13325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      405   13325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1021   13325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1       88   13325
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      169     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       11     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   0       34     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   1        3     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       44     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        2     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      138     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   0       42     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  0       51     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               0      179     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               1       15     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   0       31     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   1        3     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  0       19     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  1        2     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               0      182     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               1        7     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   0        5     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  0       46     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)               0      152     302
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)               1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   0       82     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  0       67     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  1        0     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      158     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       45     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        3     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0      104     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        1     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      139     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       15     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0      104     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1        2     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      235     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1       57     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       29     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       34     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1        8     368
0-6 months    ki1000108-IRC              INDIA                          [20-30)               0      238     410
0-6 months    ki1000108-IRC              INDIA                          [20-30)               1      106     410
0-6 months    ki1000108-IRC              INDIA                          <20                   0       28     410
0-6 months    ki1000108-IRC              INDIA                          <20                   1        9     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  0       18     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  1       11     410
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               0      154     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               1        8     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   0        1     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   1        0     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  0      195     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  1       19     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      324     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1       17     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   0       65     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   1        4     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       49     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  1        3     462
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0       76     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1        2     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0        8     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       19     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1        1     106
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      379     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1       37     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   0       66     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   1        6     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  0      119     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       13     620
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      472     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1       21     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   0       83     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   1        2     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  0      116     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  1        6     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      465     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1       29     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0      125     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       11     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0      118     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       10     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1518    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       53    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      159    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1        8    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      621    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       17    2376
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               0     1107    2415
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               1       59    2415
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   0      339    2415
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   1       17    2415
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  0      830    2415
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  1       63    2415
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      164     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1        0     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       46     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        0     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       53     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        1     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      352     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       36     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   0      113     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   1       10     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  0       81     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  1       10     602
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               0     5348    8126
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               1      513    8126
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   0      763    8126
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   1       49    8126
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  0     1341    8126
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  1      112    8126
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     8650   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      642   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     2039   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      158   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     2175   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      145   13809
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)               0      225     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)               1       14     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   0       73     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   1        7     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  0      173     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  1       19     511
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)               0     3223    5102
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)               1      239    5102
0-6 months    ki1135781-COHORTS          INDIA                          <20                   0      370    5102
0-6 months    ki1135781-COHORTS          INDIA                          <20                   1       30    5102
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  0     1145    5102
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  1       95    5102
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)               0     1690    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      129    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   0      349    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   1       28    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  0      794    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  1       54    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)               0      116     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)               1        0     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   0       39     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   1        0     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  0       65     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  1        0     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     5940   13276
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1      266   13276
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     5698   13276
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      264   13276
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1041   13276
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1       67   13276
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      161     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0       33     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       41     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        1     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      124     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       35     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       46     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0      173     233
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1        5     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       34     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1        0     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       21     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      182     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        5     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       46     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0      133     270
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       74     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       61     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      116     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1        6     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       41     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       93     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        2     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      125     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        3     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       13     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0      103     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1        0     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      272     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1       24     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       32     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       39     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1        4     373
6-24 months   ki1000108-IRC              INDIA                          [20-30)               0      323     410
6-24 months   ki1000108-IRC              INDIA                          [20-30)               1       21     410
6-24 months   ki1000108-IRC              INDIA                          <20                   0       35     410
6-24 months   ki1000108-IRC              INDIA                          <20                   1        2     410
6-24 months   ki1000108-IRC              INDIA                          >=30                  0       26     410
6-24 months   ki1000108-IRC              INDIA                          >=30                  1        3     410
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0      149     372
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1       11     372
6-24 months   ki1000109-EE               PAKISTAN                       <20                   0        1     372
6-24 months   ki1000109-EE               PAKISTAN                       <20                   1        0     372
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  0      184     372
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       27     372
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      283     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1       39     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0       62     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1        3     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       40     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1        5     432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0       63     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1       13     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0        8     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1        0     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       14     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1        5     103
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      325     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1       34     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       60     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1        1     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0      107     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       12     539
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      427     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1        8     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       68     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1        0     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0      107     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1        5     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      463     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1       11     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0      129     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1        4     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0      118     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1        5     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1259    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       48    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      135    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1        6    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      526    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       29    2003
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               0     1188    2689
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               1      151    2689
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      333    2689
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   1       31    2689
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      851    2689
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      135    2689
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      165     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1        1     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       42     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        0     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       56     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        1     265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0      424     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1       21     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0       89     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1        5     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      228     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1       12     779
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      315     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       67     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       96     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       23     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       66     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       23     590
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0     5737    7975
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1        8    7975
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   0      796    7975
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   1        0    7975
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     1434    7975
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1        0    7975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     6871   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      240   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1637   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1       41   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1813   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1       66   10668
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               0      273     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               1        9     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0       87     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1        5     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0      214     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1        7     595
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)               0     3250    4957
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)               1      115    4957
6-24 months   ki1135781-COHORTS          INDIA                          <20                   0      363    4957
6-24 months   ki1135781-COHORTS          INDIA                          <20                   1       14    4957
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  0     1155    4957
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  1       60    4957
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               0     1567    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      106    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0      322    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1       24    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      732    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1       58    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      354     659
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1        3     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0      102     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1        4     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0      194     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1        2     659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     3733    8553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1      113    8553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     3977    8553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      145    8553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0      562    8553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1       23    8553


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/c98b0f44-ef64-4f79-9fc0-63aebb451567/3f1b71e0-adc4-4ae5-ae79-65d74f1655a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c98b0f44-ef64-4f79-9fc0-63aebb451567/3f1b71e0-adc4-4ae5-ae79-65d74f1655a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c98b0f44-ef64-4f79-9fc0-63aebb451567/3f1b71e0-adc4-4ae5-ae79-65d74f1655a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c98b0f44-ef64-4f79-9fc0-63aebb451567/3f1b71e0-adc4-4ae5-ae79-65d74f1655a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2601351   0.2100901   0.3101802
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.2058824   0.0697869   0.3419778
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2558140   0.1252270   0.3864009
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.3430233   0.2927964   0.3932501
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.2702703   0.1269995   0.4135411
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4137931   0.2343212   0.5932650
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1520468   0.1069428   0.1971508
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1014493   0.0545213   0.1483773
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1346154   0.0814077   0.1878231
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.1606715   0.1253966   0.1959463
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.0958904   0.0282924   0.1634885
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1818182   0.1159684   0.2476679
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0789474   0.0551526   0.1027422
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1029412   0.0518354   0.1540470
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1015625   0.0491976   0.1539274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0630172   0.0509988   0.0750356
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0778443   0.0372003   0.1184883
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0705329   0.0506609   0.0904049
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1420651   0.1240490   0.1600813
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1167513   0.0850375   0.1484651
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1812865   0.1577090   0.2048641
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0471910   0.0292453   0.0651367
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.0531915   0.0065720   0.0998110
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0500000   0.0247815   0.0752185
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2396907   0.1971785   0.2822030
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2520325   0.1752387   0.3288263
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3516484   0.2534627   0.4498340
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0887221   0.0301812   0.1472629
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0602706   0.0181992   0.1023420
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0770819   0.0228161   0.1313477
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0923390   0.0864694   0.0982085
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0898014   0.0778976   0.1017053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0884994   0.0769888   0.1000099
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0746753   0.0452961   0.1040545
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.1100917   0.0512865   0.1688970
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1087866   0.0692810   0.1482922
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0978593   0.0881485   0.1075702
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.0985916   0.0702799   0.1269032
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1193448   0.1015968   0.1370928
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1230769   0.1079812   0.1381726
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.1352785   0.1007481   0.1698089
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1261792   0.1038267   0.1485318
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0600803   0.0542708   0.0658898
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0676014   0.0603836   0.0748192
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0793508   0.0601297   0.0985718
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1952055   0.1496819   0.2407290
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.1470588   0.0278510   0.2662666
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1904762   0.0715577   0.3093947
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.3081395   0.2592876   0.3569915
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.2432432   0.1048305   0.3816560
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.3793103   0.2024974   0.5561233
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.0889423   0.0615657   0.1163189
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.0833333   0.0194412   0.1472255
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.0984848   0.0476124   0.1493573
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0587045   0.0379615   0.0794474
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0808824   0.0350283   0.1267364
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0781250   0.0316027   0.1246473
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0337365   0.0248065   0.0426664
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0479042   0.0155069   0.0803015
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0266458   0.0141467   0.0391449
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0506003   0.0380172   0.0631835
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0477528   0.0255970   0.0699086
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0705487   0.0537502   0.0873472
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.0927835   0.0638911   0.1216759
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.0813008   0.0329626   0.1296390
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1098901   0.0455785   0.1742017
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0875277   0.0286381   0.1464174
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0603448   0.0181788   0.1025109
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0770819   0.0228156   0.1313482
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0690917   0.0639349   0.0742484
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0719162   0.0611130   0.0827195
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0625000   0.0526498   0.0723502
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0585774   0.0287763   0.0883785
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0875000   0.0255204   0.1494796
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0989583   0.0566796   0.1412370
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0690352   0.0605897   0.0774808
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.0750000   0.0491856   0.1008144
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0766129   0.0618074   0.0914184
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0709181   0.0591201   0.0827161
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0742706   0.0477978   0.1007433
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0636792   0.0472419   0.0801166
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0428617   0.0376756   0.0480479
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0442804   0.0382433   0.0503176
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0604693   0.0430254   0.0779132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0367253   0.0265259   0.0469248
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0425532   0.0092282   0.0758782
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0522523   0.0337336   0.0707709
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1127707   0.0958252   0.1297162
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0851648   0.0564848   0.1138449
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1369168   0.1154561   0.1583776
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0471910   0.0292453   0.0651367
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.0531915   0.0065720   0.0998110
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0500000   0.0247815   0.0752185
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1753927   0.1372234   0.2135620
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1932773   0.1222712   0.2642834
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2584270   0.1674006   0.3494534
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0337505   0.0295531   0.0379480
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0244338   0.0170464   0.0318213
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0351251   0.0268007   0.0434494
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0319149   0.0113824   0.0524474
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0543478   0.0079843   0.1007113
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0316742   0.0085652   0.0547832
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0341753   0.0280362   0.0403144
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.0371353   0.0180457   0.0562249
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.0493827   0.0371986   0.0615668
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0633592   0.0516839   0.0750346
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0693642   0.0425882   0.0961401
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0734177   0.0552268   0.0916086
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0293812   0.0236906   0.0350718
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0351771   0.0288402   0.0415140
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0393162   0.0222319   0.0564006


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2546917   0.2104174   0.2989660
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1425486   0.1120439   0.1730533
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1575563   0.1289019   0.1862106
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0660774   0.0560867   0.0760682
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1526371   0.1394613   0.1658129
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0487805   0.0359763   0.0615847
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2591362   0.2241059   0.2941665
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0837948   0.0281977   0.1393918
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912884   0.0865003   0.0960765
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0929878   0.0707472   0.1152284
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1031103   0.0949263   0.1112943
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0650657   0.0602222   0.0699092
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1902174   0.1500638   0.2303710
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0903226   0.0677415   0.1129037
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0328283   0.0256620   0.0399945
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0575569   0.0482661   0.0668478
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0930233   0.0698010   0.1162455
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0829436   0.0271087   0.1387786
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0684336   0.0642223   0.0726450
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0782779   0.0549657   0.1015900
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0713446   0.0642809   0.0784082
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0449684   0.0407552   0.0491815
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414378   0.0327076   0.0501681
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1178877   0.1056970   0.1300784
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0487805   0.0359763   0.0615847
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1915254   0.1597467   0.2233042
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325272   0.0291608   0.0358936
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0352941   0.0204552   0.0501331
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0381279   0.0327962   0.0434596
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0328540   0.0285828   0.0371251


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.7914439   0.3975810   1.5754863
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9833887   0.5699112   1.6968491
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.7879066   0.4546040   1.3655769
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           1.2063121   0.7632228   1.9066372
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.6672241   0.3765519   1.1822752
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           0.8853550   0.4713371   1.6630424
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5968105   0.2852176   1.2488106
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1316147   0.7409103   1.7283493
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.3039216   0.7294904   2.3306837
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.2864583   0.7079846   2.3375861
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2352870   0.7085337   2.1536507
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1192647   0.7964829   1.5728569
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8218150   0.6089494   1.1090904
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.2760804   1.0641136   1.5302701
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1271530   0.4868139   2.6097729
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.0595238   0.5262794   2.1330698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0514905   0.7390785   1.4959607
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.4670920   1.0538994   2.0422813
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.6793192   0.5242341   0.8802835
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8688019   0.6992218   1.0795099
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9725195   0.8395613   1.1265337
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9584183   0.8292473   1.1077102
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.4742720   0.7593944   2.8621203
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.4567946   0.8528532   2.4884125
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0074824   0.7435134   1.3651682
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.2195544   1.0199006   1.4582920
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0991379   0.8280625   1.4589530
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0252064   0.8264866   1.2717062
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1251838   0.9868786   1.2828716
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.3207447   1.0190960   1.7116803
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.7533540   0.3240970   1.7511493
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9757728   0.5010837   1.9001466
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.7893932   0.4372748   1.4250572
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           1.2309694   0.7523425   2.0140902
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9369369   0.4101128   2.1405105
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1072891   0.6069010   2.0202458
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.3777890   0.7064220   2.6872076
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.3308190   0.6658890   2.6597212
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.4199525   0.6868599   2.9354825
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.7898208   0.4609054   1.3534597
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9437250   0.5574791   1.5975789
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.3942339   0.9881230   1.9672532
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8762421   0.4478562   1.7143899
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1843712   0.6103564   2.2982231
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.6894367   0.5304178   0.8961294
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8806569   0.7054418   1.0993915
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0408813   0.8801417   1.2309766
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9045950   0.7598374   1.0769306
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.4937500   0.6244930   3.5729607
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.6893601   0.8693619   3.2827956
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0864017   0.7539600   1.5654260
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1097652   0.8828764   1.3949616
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0472724   0.7066926   1.5519896
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.8979267   0.6604990   1.2207018
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0330994   0.8695048   1.2274737
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.4107991   1.0394151   1.9148790
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.1586879   0.5047784   2.6596972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.4227853   0.9069712   2.2319541
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.7552034   0.5222904   1.0919828
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.2141168   0.9771462   1.5085559
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1271530   0.4868139   2.6097729
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.0595238   0.5262794   2.1330698
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1019691   0.7189965   1.6889317
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.4734194   0.9738951   2.2291567
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7239546   0.5220705   1.0039072
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0407265   0.7963450   1.3601033
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.7028986   0.5849938   4.9570843
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9924585   0.3752003   2.6251951
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0866105   0.6303528   1.8731137
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.4449812   1.0649221   1.9606794
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0947759   0.7137680   1.6791650
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1587533   0.8509184   1.5779530
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1972666   0.9307014   1.5401795
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.3381439   0.8281424   2.1622235


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0054434   -0.0275736   0.0166867
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0015598   -0.0215967   0.0184770
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0094982   -0.0264504   0.0074540
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0031152   -0.0230392   0.0168088
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0081239   -0.0070938   0.0233415
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0030603   -0.0042369   0.0103574
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0105720   -0.0025046   0.0236485
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0015895   -0.0093165   0.0124954
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0194455   -0.0071016   0.0459926
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0049273   -0.0100551   0.0002005
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010506   -0.0043750   0.0022739
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0183125   -0.0050814   0.0417064
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0052509   -0.0005283   0.0110302
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0023746   -0.0073170   0.0120663
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0049853    0.0006253   0.0093454
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0049881   -0.0248855   0.0149093
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0008225   -0.0203468   0.0187019
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0013803   -0.0145456   0.0173061
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0072586   -0.0062358   0.0207530
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0009082   -0.0059724   0.0041560
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0069566   -0.0026226   0.0165358
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0002398   -0.0170228   0.0175023
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0045841   -0.0098492   0.0006811
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0006581   -0.0035805   0.0022644
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0197005   -0.0048109   0.0442119
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0023093   -0.0026326   0.0072513
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0016014   -0.0089687   0.0057659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0021066   -0.0018437   0.0060570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0047125   -0.0019571   0.0113821
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0051170   -0.0071218   0.0173558
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0015895   -0.0093165   0.0124954
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0161328   -0.0079552   0.0402207
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0012233   -0.0035607   0.0011140
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0033792   -0.0121823   0.0189407
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0039526    0.0000865   0.0078186
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0035685   -0.0041369   0.0112739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0034728   -0.0008457   0.0077913


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0213727   -0.1120395    0.0619019
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0045681   -0.0649954    0.0524305
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0666312   -0.1803115    0.0361001
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0197719   -0.1543674    0.0991301
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0933014   -0.0981199    0.2513547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0463132   -0.0705524    0.1504212
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0692620   -0.0203230    0.1509814
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0325843   -0.2206460    0.2332804
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0750397   -0.0330954    0.1718561
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0588020   -0.1117895   -0.0083400
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0115083   -0.0485845    0.0242570
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.1969342   -0.0934478    0.4102008
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0509255   -0.0066908    0.1052443
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0189287   -0.0614325    0.0932058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0766202    0.0081300    0.1403810
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0262231   -0.1362595    0.0731573
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0026763   -0.0682637    0.0588843
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0152816   -0.1777722    0.1766911
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.1100405   -0.1176092    0.2913194
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0276649   -0.1939816    0.1154846
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1208645   -0.0611262    0.2716426
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0025773   -0.2013788    0.1719082
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0552675   -0.1097413   -0.0034677
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0096161   -0.0532328    0.0321944
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.2516736   -0.1251668    0.5023028
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0323687   -0.0393716    0.0991573
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0231026   -0.1350646    0.0778154
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0468467   -0.0443590    0.1300872
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1137250   -0.0607877    0.2595282
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0434054   -0.0661746    0.1417230
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0325843   -0.2206460    0.2332804
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0842330   -0.0500765    0.2013636
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0376099   -0.1119099    0.0317253
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0957447   -0.4696850    0.4436375
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.1036660   -0.0026060    0.1986736
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0533187   -0.0688745    0.1615428
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.1057039   -0.0347758    0.2271123
