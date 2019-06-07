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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        mage       ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0      130     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       50     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  0       18     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  1       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       28     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       18     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              0      127     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              1       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  0       40     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0       47     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        4     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              0      102     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              1       92     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  0       15     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  1       19     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0       15     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        6     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              0      134     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              1       55     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  0        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0       35     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1       11     240
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              0      140     302
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              1       13     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  0       74     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  1        8     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0       62     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        5     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0      123     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       36     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0       39     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1        9     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0       89     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       16     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0      125     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1       14     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0       13     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        3     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0       91     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       15     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0      117     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1      179     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       25     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       18     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       25     373
0-24 months   ki1000108-IRC              INDIA                          [20-30)              0      114     410
0-24 months   ki1000108-IRC              INDIA                          [20-30)              1      230     410
0-24 months   ki1000108-IRC              INDIA                          <20                  0       16     410
0-24 months   ki1000108-IRC              INDIA                          <20                  1       21     410
0-24 months   ki1000108-IRC              INDIA                          >=30                 0       11     410
0-24 months   ki1000108-IRC              INDIA                          >=30                 1       18     410
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)              0       89     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)              1       73     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                  0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                  1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 0      105     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 1      109     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0      204     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1      138     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  0       49     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  1       20     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       33     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       19     463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0       40     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1       38     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0        4     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1        4     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0        9     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1       11     106
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0      215     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1      202     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  0       47     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  1       26     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       63     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       69     622
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0      330     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1      163     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  0       47     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  1       38     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       77     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       45     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0      330     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1      164     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0       90     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       46     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       87     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       41     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0     1204    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      367    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0      127    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       40    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      482    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1      156    2376
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              0      946    2863
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              1      497    2863
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  0      274    2863
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  1      120    2863
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      558    2863
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      468    2863
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0      159     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1       16     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  0       41     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        6     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0       51     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        8     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              0      346     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              1       99     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  0       76     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  1       18     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      181     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1       59     779
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      165     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      223     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  0       52     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  1       71     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       29     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       62     602
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              0     4284    8127
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              1     1577    8127
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  0      591    8127
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  1      222    8127
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0     1094    8127
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1      359    8127
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0     7185   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1     2161   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0     1657   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      559   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0     1798   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      541   13901
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              0      208     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              1      100     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  0       75     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  1       34     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0      162     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1       77     656
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              0     2449    5305
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              1     1148    5305
0-24 months   ki1135781-COHORTS          INDIA                          <20                  0      274    5305
0-24 months   ki1135781-COHORTS          INDIA                          <20                  1      152    5305
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 0      800    5305
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 1      482    5305
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              0     1106    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      714    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  0      208    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  1      169    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      502    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      346    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              0      337     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              1       27     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  0       99     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  1        9     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0      180     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1       18     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0     4633   13325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1     1592   13325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  0     4385   13325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  1     1606   13325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      784   13325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      325   13325
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0      147     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       33     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  0       24     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  1       13     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       33     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       13     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              0      131     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              1        8     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  0       40     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  1        3     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 0       48     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 1        3     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              0      133     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              1       61     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  0       22     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  1       12     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 0       16     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 1        5     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              0      155     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              1       34     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                  0        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                  1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 0       39     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 1        7     240
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              0      148     302
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              1        5     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  0       79     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  1        3     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 0       64     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 1        3     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0      141     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       18     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0       41     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1        7     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0       98     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1        7     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0      138     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0       15     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0       97     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1        9     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0      138     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1      154     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       18     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       19     368
0-6 months    ki1000108-IRC              INDIA                          [20-30)              0      157     410
0-6 months    ki1000108-IRC              INDIA                          [20-30)              1      187     410
0-6 months    ki1000108-IRC              INDIA                          <20                  0       17     410
0-6 months    ki1000108-IRC              INDIA                          <20                  1       20     410
0-6 months    ki1000108-IRC              INDIA                          >=30                 0       13     410
0-6 months    ki1000108-IRC              INDIA                          >=30                 1       16     410
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)              0      129     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)              1       33     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                  0        0     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                  1        1     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 0      145     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 1       69     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0      259     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1       82     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  0       59     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  1       10     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       42     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       10     462
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0       67     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1       11     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0        7     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1        1     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       14     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1        6     106
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0      258     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1      158     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  0       52     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  1       20     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       88     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       44     620
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0      369     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1      124     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  0       62     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  1       23     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       88     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       34     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0      367     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1      127     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0       99     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       37     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       96     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       32     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0     1352    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      219    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0      142    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       25    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      550    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       88    2376
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              0     1010    2415
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              1      156    2415
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  0      305    2415
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  1       51    2415
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 0      714    2415
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 1      179    2415
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0      163     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1        1     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  0       43     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        3     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0       49     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        5     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      278     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      110     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  0       87     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  1       36     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 0       59     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 1       32     602
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              0     4320    8126
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              1     1541    8126
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  0      595    8126
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  1      217    8126
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 0     1099    8126
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 1      354    8126
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0     7632   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1     1660   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0     1756   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      441   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0     1924   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      396   13809
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              0      183     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              1       56     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  0       58     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  1       22     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 0      143     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 1       49     511
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              0     2637    5102
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              1      825    5102
0-6 months    ki1135781-COHORTS          INDIA                          <20                  0      288    5102
0-6 months    ki1135781-COHORTS          INDIA                          <20                  1      112    5102
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 0      901    5102
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 1      339    5102
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              0     1400    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      419    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  0      277    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  1      100    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 0      650    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 1      198    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              0      115     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              1        1     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  0       39     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  1        0     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 0       63     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 1        2     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0     5107   13276
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1     1099   13276
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  0     4885   13276
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  1     1077   13276
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      863   13276
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      245   13276
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0      137     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       26     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  0       27     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  1        8     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       32     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       10     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              0      120     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              1        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  0       35     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0       46     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              0      127     233
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              1       51     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  0       23     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  1       11     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0       19     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        2     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              0      153     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              1       31     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  0        4     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0       42     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1        4     235
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              0      125     270
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              1        9     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  0       69     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  1        6     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0       59     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        2     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0      102     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       20     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0       38     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1        4     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0       83     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       12     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0      115     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1       13     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0       12     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        2     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0       92     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       11     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0      224     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1       72     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       12     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       28     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       15     373
6-24 months   ki1000108-IRC              INDIA                          [20-30)              0      235     410
6-24 months   ki1000108-IRC              INDIA                          [20-30)              1      109     410
6-24 months   ki1000108-IRC              INDIA                          <20                  0       28     410
6-24 months   ki1000108-IRC              INDIA                          <20                  1        9     410
6-24 months   ki1000108-IRC              INDIA                          >=30                 0       20     410
6-24 months   ki1000108-IRC              INDIA                          >=30                 1        9     410
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)              0      105     372
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)              1       55     372
6-24 months   ki1000109-EE               PAKISTAN                       <20                  0        1     372
6-24 months   ki1000109-EE               PAKISTAN                       <20                  1        0     372
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 0      145     372
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 1       66     372
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0      234     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1       88     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  0       48     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  1       17     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       33     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       12     432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0       46     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1       30     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0        5     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1        3     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       12     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1        7     103
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0      257     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1      102     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  0       49     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  1       12     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       75     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       44     539
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0      372     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1       63     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  0       50     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  1       18     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       94     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       18     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0      413     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1       61     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0      114     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       19     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0      107     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       16     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0     1100    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      207    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0      120    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       21    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      461    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       94    2003
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              0      940    2689
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              1      399    2689
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  0      275    2689
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  1       89    2689
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      612    2689
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      374    2689
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0      150     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1       16     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  0       38     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        4     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0       54     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        3     265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              0      346     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              1       99     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  0       76     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  1       18     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      181     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1       59     779
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      207     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      175     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  0       65     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  1       54     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       39     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       50     590
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              0     5693    7975
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              1       52    7975
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  0      789    7975
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  1        7    7975
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0     1427    7975
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1        7    7975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0     6450   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1      661   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0     1519   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      159   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0     1696   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      183   10668
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              0      227     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              1       55     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  0       78     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  1       14     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0      187     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1       34     595
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              0     2960    4957
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              1      405    4957
6-24 months   ki1135781-COHORTS          INDIA                          <20                  0      319    4957
6-24 months   ki1135781-COHORTS          INDIA                          <20                  1       58    4957
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 0     1025    4957
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 1      190    4957
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              0     1259    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      414    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  0      232    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  1      114    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      569    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      221    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              0      330     659
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              1       27     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  0       97     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  1        9     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0      180     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1       16     659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0     3211    8553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1      635    8553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  0     3443    8553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  1      679    8553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      486    8553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1       99    8553


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/a1c2ffb7-4177-4c4f-bd16-4df903babab2/91e8c0f3-1801-4d72-b747-2e110faca790/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a1c2ffb7-4177-4c4f-bd16-4df903babab2/91e8c0f3-1801-4d72-b747-2e110faca790/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a1c2ffb7-4177-4c4f-bd16-4df903babab2/91e8c0f3-1801-4d72-b747-2e110faca790/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a1c2ffb7-4177-4c4f-bd16-4df903babab2/91e8c0f3-1801-4d72-b747-2e110faca790/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.2777778   0.2122201   0.3433354
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5135135   0.3521573   0.6748698
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3913043   0.2500005   0.5326081
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.4742268   0.4038202   0.5446334
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.5588235   0.3915890   0.7260581
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2857143   0.0921103   0.4793182
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.0849673   0.0407119   0.1292228
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.0975610   0.0332317   0.1618902
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.0746269   0.0115984   0.1376554
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.2264151   0.1612593   0.2915709
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1875000   0.0769046   0.2980954
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1523810   0.0835290   0.2212329
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6047297   0.5489582   0.6605013
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.7352941   0.5868018   0.8837864
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5813953   0.4337450   0.7290457
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.6686047   0.6188015   0.7184078
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.5675676   0.4077423   0.7273928
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.6206897   0.4438767   0.7975026
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.4035088   0.3100107   0.4970068
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2898551   0.2497185   0.3299916
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3653846   0.2996752   0.4310940
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.4844125   0.4364073   0.5324177
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.3561644   0.2462261   0.4661026
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5227273   0.4374504   0.6080042
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.3306288   0.2890723   0.3721853
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.4470588   0.3412868   0.5528309
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3688525   0.2831742   0.4545307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.3319838   0.2904288   0.3735388
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.3382353   0.2586695   0.4178011
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3203125   0.2394269   0.4011981
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2336092   0.2126815   0.2545369
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2395210   0.1747774   0.3042645
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2445141   0.2111565   0.2778717
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.3444213   0.3198998   0.3689429
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.3045685   0.2591173   0.3500197
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4561404   0.4256584   0.4866223
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0914286   0.0486503   0.1342069
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.1276596   0.0320849   0.2232343
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.1355932   0.0480799   0.2231066
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.2224719   0.1832520   0.2616918
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1914894   0.1234962   0.2594825
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2458333   0.1717416   0.3199250
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5747423   0.5255093   0.6239752
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.5772358   0.4898618   0.6646098
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.6813187   0.5855018   0.7771355
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.2690667   0.1706290   0.3675044
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.2730627   0.1858850   0.3602405
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.2470750   0.1547389   0.3394111
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2312219   0.2226739   0.2397699
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2522563   0.2341731   0.2703396
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2312954   0.2142066   0.2483842
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.3246753   0.2723412   0.3770094
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.3119266   0.2248884   0.3989648
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.3221757   0.2628852   0.3814663
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.3191549   0.3039198   0.3343899
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.3568075   0.3113117   0.4023034
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.3759750   0.3494580   0.4024921
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.3923077   0.3698720   0.4147434
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.4482759   0.3980668   0.4984850
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.4080189   0.3749351   0.4411027
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0741758   0.0472346   0.1011170
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0833333   0.0311688   0.1354979
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0909091   0.0508365   0.1309817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.2557430   0.2442397   0.2672462
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2680688   0.2554792   0.2806583
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2930568   0.2635029   0.3226107
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1833333   0.1266987   0.2399680
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.3513514   0.1972345   0.5054682
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2826087   0.1522418   0.4129756
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.3144330   0.2489679   0.3798981
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                0.3529412   0.1919858   0.5138966
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2380952   0.0555637   0.4206268
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.1132075   0.0638793   0.1625358
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1458333   0.0458277   0.2458389
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.0666667   0.0188782   0.1144552
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.5273973   0.4700563   0.5847382
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.5294118   0.3614088   0.6974147
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4523810   0.3016489   0.6031131
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.5436047   0.4909046   0.5963047
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.5405405   0.3797668   0.7013143
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5517241   0.3705013   0.7329470
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2404692   0.1765875   0.3043510
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1449275   0.1236389   0.1662161
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1923077   0.1111932   0.2734221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.3798077   0.3331313   0.4264841
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2777778   0.1742358   0.3813198
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3333333   0.2528501   0.4138166
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2515213   0.2131937   0.2898489
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2705882   0.1760756   0.3651009
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2786885   0.1990727   0.3583044
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2570850   0.2185213   0.2956488
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2720588   0.1972169   0.3469007
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2500000   0.1749362   0.3250638
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1394017   0.1222705   0.1565328
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1497006   0.0955780   0.2038232
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1379310   0.1111683   0.1646938
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1337907   0.1142467   0.1533347
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1432584   0.1068587   0.1796581
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2004479   0.1741854   0.2267105
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2835052   0.2386223   0.3283880
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2926829   0.2122077   0.3731582
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3516484   0.2534627   0.4498340
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.2629244   0.1635226   0.3623263
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.2672414   0.1798613   0.3546215
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.2436339   0.1497534   0.3375143
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1786483   0.1708595   0.1864371
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2007283   0.1839788   0.2174777
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1706897   0.1553794   0.1859999
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.2343096   0.1805574   0.2880618
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.2750000   0.1770592   0.3729408
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.2552083   0.1934796   0.3169371
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.2383016   0.2241083   0.2524948
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.2800000   0.2359946   0.3240054
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2733871   0.2485775   0.2981967
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.2303463   0.2109937   0.2496990
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2652520   0.2206815   0.3098225
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2334906   0.2050122   0.2619689
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.1770867   0.1668838   0.1872896
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.1806441   0.1698209   0.1914673
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2211191   0.1931681   0.2490701
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1595092   0.1031817   0.2158367
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2285714   0.0891660   0.3679768
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2380952   0.1090162   0.3671743
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2432432   0.1943010   0.2921855
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.3529412   0.1920936   0.5137888
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3488372   0.2061934   0.4914810
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.3168605   0.2676352   0.3660857
6-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.2432432   0.1048305   0.3816560
6-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3103448   0.1417603   0.4789293
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2732919   0.2003153   0.3462685
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2615385   0.2173733   0.3057036
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2666667   0.1249290   0.4084043
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2841226   0.2374269   0.3308182
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1967213   0.0968720   0.2965707
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3697479   0.2829343   0.4565615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1448276   0.1117290   0.1779262
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2647059   0.1597615   0.3696503
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1607143   0.0926413   0.2287872
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.1286920   0.0985260   0.1588580
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1428571   0.0833461   0.2023682
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1300813   0.0705918   0.1895708
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1583780   0.1385798   0.1781761
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1489362   0.0901564   0.2077160
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1693694   0.1381567   0.2005821
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.2979836   0.2734812   0.3224860
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.2445055   0.2003446   0.2886664
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3793103   0.3490186   0.4096021
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.2224719   0.1832520   0.2616918
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1914894   0.1234962   0.2594825
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2458333   0.1717416   0.3199250
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.4581152   0.4081088   0.5081216
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4537815   0.3642554   0.5433076
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5617978   0.4586289   0.6649666
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0090513   0.0067983   0.0113044
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0087940   0.0017583   0.0158296
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0048815   0.0006263   0.0091366
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0929546   0.0862054   0.0997038
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0947557   0.0807418   0.1087695
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0973922   0.0839857   0.1107988
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1950355   0.1487511   0.2413198
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.1521739   0.0787153   0.2256326
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1538462   0.1062376   0.2014547
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1203566   0.1093618   0.1313514
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1538462   0.1174220   0.1902703
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1563786   0.1359534   0.1768038
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.2474597   0.2267776   0.2681417
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.3294798   0.2799453   0.3790143
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2797468   0.2484402   0.3110535
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0756303   0.0481820   0.1030785
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0849057   0.0318018   0.1380095
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0816327   0.0432716   0.1199937
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.1651066   0.1527517   0.1774615
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.1647259   0.1515809   0.1778709
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1692308   0.1362533   0.2022082


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3307985   0.2738270   0.3877700
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4698795   0.4077636   0.5319954
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0860927   0.0544044   0.1177810
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1955128   0.1514355   0.2395901
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3822894   0.3008363   0.4637425
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4774920   0.4382065   0.5167774
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2369529   0.2198518   0.2540539
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3789731   0.3611996   0.3967466
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1067616   0.0705906   0.1429325
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2259307   0.1907517   0.2611097
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2655346   0.1719990   0.3590703
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2345874   0.2275431   0.2416318
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3216463   0.2858742   0.3574185
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3359095   0.3231988   0.3486203
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0805970   0.0599695   0.1012246
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2643902   0.2553053   0.2734752
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2243346   0.1738240   0.2748452
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3132530   0.2555274   0.3709786
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2207792   0.1636864   0.2778721
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3580645   0.3202961   0.3958330
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1397306   0.1257869   0.1536744
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1598344   0.1452161   0.1744527
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2599065   0.1654090   0.3544039
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1808241   0.1744046   0.1872436
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2485323   0.2110255   0.2860391
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2500980   0.2382136   0.2619824
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1823591   0.1743561   0.1903622
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2708333   0.2169112   0.3247555
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2931354   0.2546710   0.3315999
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1607589   0.1446692   0.1768485
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3205653   0.3029225   0.3382080
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2259307   0.1907517   0.2611097
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082759   0.0065972   0.0099545
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0940195   0.0884810   0.0995580
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1731092   0.1426836   0.2035348
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1317329   0.1223171   0.1411487
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0789074   0.0583085   0.0995064
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1652052   0.1560335   0.1743768


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.8486486   1.2479152   2.7385690
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.4086957   0.9150939   2.1685462
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           1.1783887   0.8437344   1.6457786
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           0.6024845   0.3010794   1.2056205
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.1482176   0.4955612   2.6604256
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           0.8783008   0.3256151   2.3690927
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           0.8281250   0.4296053   1.5963280
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.6730159   0.3938896   1.1499425
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.2159054   0.9738259   1.5181623
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9614135   0.7337867   1.2596521
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.8488837   0.6343748   1.1359270
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.9283358   0.6915604   1.2461781
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.7183365   0.6015961   0.8577305
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           0.9055184   0.8015343   1.0229925
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.7352502   0.5316685   1.0167857
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.0790954   0.8915835   1.3060436
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.3521472   1.0343622   1.7675647
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1156090   0.8566653   1.4528234
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.0188307   0.7805067   1.3299257
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9648438   0.7278714   1.2789670
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0253063   0.7712279   1.3630900
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0466803   0.8890655   1.2322372
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8842905   0.7495257   1.0432860
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.3243673   1.2011620   1.4602099
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.3962766   0.5775036   3.3758896
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.4830508   0.6682686   3.2912512
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           0.8607350   0.6247317   1.1858927
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1050084   0.8036083   1.5194513
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0043385   0.8440067   1.1951277
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1854334   1.0054544   1.3976291
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0148514   0.8158194   1.2624404
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9182668   0.7818420   1.0784964
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0909706   1.0064312   1.1826113
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0003179   0.9209973   1.0864700
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.9607339   0.6960715   1.3260272
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9923013   0.7769570   1.2673311
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1179761   0.9756703   1.2810380
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1780333   1.0818600   1.2827560
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.1426640   1.0076309   1.2957928
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0400481   0.9418060   1.1485381
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.1234568   0.5448171   2.3166587
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.2255892   0.6922989   2.1696826
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0481960   0.9896018   1.1102597
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1459037   1.0269784   1.2786005
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.9164619   1.1207282   3.2771783
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.5415020   0.8847739   2.6856898
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           1.1224687   0.6799146   1.8530796
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           0.7572209   0.3421516   1.6758170
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.2881944   0.5716458   2.9029253
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.5888889   0.2545168   1.3625433
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.0038197   0.7177493   1.4039080
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.8577613   0.6041596   1.2178146
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.9943633   0.7272502   1.3595851
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           1.0149364   0.7206163   1.4294650
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.6026865   0.4585068   0.7922041
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           0.7997186   0.6243474   1.0243493
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.7313643   0.4939449   1.0829015
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8776371   0.6693499   1.1507389
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0758065   0.7349091   1.5748337
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1080116   0.8015454   1.5316535
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.0582446   0.7735828   1.4476556
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9724409   0.6951789   1.3602849
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0738796   0.7330244   1.5732321
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9894505   0.7864087   1.2449153
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0707649   0.7987478   1.4354187
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.4982198   1.2312754   1.8230385
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0323725   0.7517004   1.4178428
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2403596   0.8998087   1.7097989
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0164190   0.8152499   1.2672281
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9266308   0.7829140   1.0967292
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1235946   1.0226385   1.2345172
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9554508   0.8647601   1.0556525
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.1736607   0.7683497   1.7927768
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0891927   0.7804169   1.5201372
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1749818   0.9932064   1.3900255
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1472317   1.0292220   1.2787722
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.1515355   0.9543089   1.3895229
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0136500   0.8741124   1.1754625
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0200884   0.9442726   1.1019915
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2486491   1.0945040   1.4245032
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.4329670   0.7082161   2.8993899
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.4926740   0.7815860   2.8507107
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.4509804   0.8816715   2.3879008
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.4341085   0.9091996   2.2620635
6-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.7676667   0.4256000   1.3846622
6-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.9794369   0.5566759   1.7232588
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9569930   0.7060006   1.2972164
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           0.9757576   0.5028541   1.8933978
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6923819   0.4061103   1.1804493
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.3013676   0.9770850   1.7332756
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.8277311   1.1565770   2.8883515
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1096939   0.6857772   1.7956568
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.1100703   0.6882694   1.7903686
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.0107957   0.6046165   1.6898447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9403845   0.6216022   1.4226509
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0693998   0.8559126   1.3361364
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8205335   0.6728380   1.0006498
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.2729237   1.1350662   1.4275244
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           0.8607350   0.6247317   1.1858927
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1050084   0.8036083   1.5194513
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.9905402   0.7905883   1.2410631
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2263242   0.9904342   1.5183957
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.9715646   0.4330396   2.1797951
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.5393064   0.2014106   1.4440717
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0193760   0.8645329   1.2019524
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0477400   0.8967350   1.2241734
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.7802372   0.4556346   1.3360927
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.7888112   0.5340837   1.1650291
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.2782526   0.9917586   1.6475075
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.2992938   1.1078609   1.5238054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.3314484   1.1210395   1.5813492
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1304745   0.9831063   1.2999333
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.1226415   0.5447478   2.3135918
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.0793651   0.5960802   1.9544837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           0.9976940   0.9015876   1.1040450
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0249788   0.8314287   1.2635858


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0530207    0.0122699    0.0937715
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0043473   -0.0373802    0.0286857
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0011254   -0.0301509    0.0324017
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0309023   -0.0740435    0.0122390
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0092113   -0.0157148    0.0341373
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0125071   -0.0334217    0.0084075
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0212194   -0.0382678   -0.0041709
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0069205   -0.0344503    0.0206093
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0207998   -0.0025888    0.0441883
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0008492   -0.0253436    0.0236451
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0033437   -0.0089546    0.0156420
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0345518    0.0169147    0.0521888
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0153330   -0.0139754    0.0446414
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0034588   -0.0176790    0.0245966
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0166199   -0.0124318    0.0456716
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0035321   -0.0155265    0.0084624
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0033655   -0.0015781    0.0083092
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0030290   -0.0410638    0.0350059
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0167547    0.0078713    0.0256381
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0113048   -0.0030274    0.0256370
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0064212   -0.0126225    0.0254649
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0086473    0.0007830    0.0165115
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0410013    0.0040102    0.0779923
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0011800   -0.0318367    0.0294767
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0106434   -0.0436607    0.0223738
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0083755   -0.0345119    0.0177608
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0002978   -0.0208406    0.0214362
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0196900   -0.0293592   -0.0100208
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0217432   -0.0478485    0.0043621
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0070501   -0.0142428    0.0283430
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0014902   -0.0213488    0.0243292
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0003290   -0.0096617    0.0103197
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0260436    0.0109830    0.0411043
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0121759   -0.0151893    0.0395412
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0030179   -0.0148282    0.0087923
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0021758   -0.0023222    0.0066738
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0142227   -0.0256941    0.0541394
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0117964    0.0034718    0.0201210
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0051990   -0.0072198    0.0176178
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0052725   -0.0018842    0.0124292
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0238241   -0.0118070    0.0594553
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0221723   -0.0024646    0.0468093
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0071044   -0.0262133    0.0120045
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0024586   -0.0315740    0.0266568
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0090129   -0.0184713    0.0364971
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0161480   -0.0036200    0.0359160
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0028149   -0.0153536    0.0209833
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0023809   -0.0094221    0.0141839
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0225817    0.0048695    0.0402939
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0034588   -0.0176790    0.0245966
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0147662   -0.0150370    0.0445693
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0007755   -0.0019402    0.0003892
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0010649   -0.0028721    0.0050019
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0219262   -0.0541338    0.0102814
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0113763    0.0046369    0.0181156
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0191833    0.0055547    0.0328119
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0032772   -0.0157344    0.0222887
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0000986   -0.0087062    0.0089034


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.1602810    0.0282063    0.2744056
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0092519   -0.0820681    0.0586642
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0130719   -0.4260578    0.3169792
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.1580575   -0.3996127    0.0418083
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0150035   -0.0264849    0.0548151
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0190629   -0.0515274    0.0123994
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0555060   -0.0941258   -0.0182494
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0144935   -0.0738294    0.0415638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0591863   -0.0097826    0.1234446
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0025646   -0.0793328    0.0687434
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0141112   -0.0391772    0.0646671
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0911721    0.0433982    0.1365600
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1436190   -0.1752619    0.3759788
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0153090   -0.0826141    0.1043749
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0281044   -0.0223528    0.0760713
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0133017   -0.0579849    0.0294943
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0143466   -0.0069523    0.0351950
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0094171   -0.1348723    0.1021696
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0498785    0.0230639    0.0759571
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0280090   -0.0081642    0.0628843
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0796703   -0.1887603    0.2874874
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0327065    0.0025756    0.0619271
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.1827684    0.0033986    0.3298549
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0037669   -0.1065619    0.0894790
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.1037736   -0.4757407    0.1744375
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0161371   -0.0677942    0.0330209
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0005475   -0.0390824    0.0386660
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0891841   -0.1231444   -0.0562506
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0607242   -0.1362500    0.0097815
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0272657   -0.0586438    0.1062036
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0057630   -0.0866045    0.0902788
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0023544   -0.0717696    0.0713520
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1629414    0.0641090    0.2513368
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0411792   -0.0559547    0.1293780
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0116116   -0.0566677    0.0315232
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0120327   -0.0131560    0.0365951
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0572266   -0.1177714    0.2048270
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0471673    0.0133222    0.0798514
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0220721   -0.0320907    0.0733926
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0289125   -0.0110288    0.0672759
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.1299498   -0.0854408    0.3025992
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0835381   -0.0137474    0.1714875
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0229354   -0.0865158    0.0369245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0090779   -0.1215241    0.0920943
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0307464   -0.0676789    0.1200983
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.1003135   -0.0302572    0.2143361
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0214047   -0.1269324    0.1502164
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0148104   -0.0614051    0.0855531
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0704434    0.0135330    0.1240705
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0153090   -0.0826141    0.1043749
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0312260   -0.0339381    0.0922831
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0937047   -0.2403324    0.0355892
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0113266   -0.0314428    0.0523225
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.1266612   -0.3281274    0.0442443
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0863588    0.0340254    0.1358569
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0719437    0.0194636    0.1216150
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0415320   -0.2321283    0.2544113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0005968   -0.0541443    0.0524951
