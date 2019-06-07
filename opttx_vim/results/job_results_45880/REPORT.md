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

**Outcome Variable:** ever_wasted

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/afe6e7ad-8829-4a54-9274-c8ec384dcbd1/aefa33f3-03fc-4be8-9cb7-4387601ae59d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/afe6e7ad-8829-4a54-9274-c8ec384dcbd1/aefa33f3-03fc-4be8-9cb7-4387601ae59d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2780924   0.2123731   0.3438118
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2917055   0.0855619   0.4978490
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.1665648   0.0888751   0.2442545
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2025974   0.1197596   0.2854351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.7072912   0.5945801   0.8200024
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6183336   0.4637079   0.7729593
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3006333   0.2420698   0.3591969
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3575832   0.2448894   0.4702770
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3633472   0.2902834   0.4364110
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4213481   0.3385563   0.5041399
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2478418   0.2075576   0.2881261
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2968000   0.2515765   0.3420235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.1696608   0.0793354   0.2599862
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2154300   0.1461364   0.2847236
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6279984   0.5602113   0.6957856
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2589305   0.1728179   0.3450431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2328738   0.2178034   0.2479442
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3607916   0.2847728   0.4368105
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3234023   0.3035669   0.3432377
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.4038057   0.3716187   0.4359928
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.1149769   0.0665430   0.1634108
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2535568   0.2377089   0.2694048
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2926375   0.2150471   0.3702280
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2340907   0.0460253   0.4221561
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.0675889   0.0185925   0.1165852
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4523016   0.2979689   0.6066342
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.7042066   0.5660772   0.8423360
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1386233   0.1092393   0.1680073
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2748464   0.1685763   0.3811164
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2228799   0.1528708   0.2928889
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3296113   0.2462630   0.4129596
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1520703   0.1151843   0.1889562
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1250170   0.0948805   0.1551535
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.3446881   0.2849786   0.4043976
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2553939   0.1631106   0.3476773
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1770662   0.1625549   0.1915775
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2328566   0.1702627   0.2954505
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2522567   0.2340126   0.2705008
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2271254   0.1981974   0.2560535
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1847322   0.1725630   0.1969014
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2505844   0.1649407   0.3362281
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2437979   0.1947435   0.2928522
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.3093739   0.1397716   0.4789762
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3388872   0.2325461   0.4452282
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1980233   0.0966253   0.2994214
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1665238   0.1095091   0.2235385
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2102338   0.1484621   0.2720055
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1706293   0.1214815   0.2197772
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2388572   0.1946617   0.2830527
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2154300   0.1461364   0.2847236
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5123856   0.4355969   0.5891743
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0048443   0.0005574   0.0091312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0967911   0.0850856   0.1084965
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1130375   0.0570747   0.1690003
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1201125   0.1064528   0.1337723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2678040   0.2418295   0.2937785
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.1238355   0.0779227   0.1697482
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1730284   0.1516623   0.1943945


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3307985   0.2738270   0.3877700
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4698795   0.4077636   0.5319954
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.0860927   0.0544044   0.1177810
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1955128   0.1514355   0.2395901
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.3822894   0.3008363   0.4637425
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.4774920   0.4382065   0.5167774
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2369529   0.2198518   0.2540539
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3789731   0.3611996   0.3967466
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.1067616   0.0705906   0.1429325
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2259307   0.1907517   0.2611097
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.2655346   0.1719990   0.3590703
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2345874   0.2275431   0.2416318
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3216463   0.2858742   0.3574185
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3359095   0.3231988   0.3486203
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0805970   0.0599695   0.1012246
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2643902   0.2553053   0.2734752
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2243346   0.1738240   0.2748452
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3132530   0.2555274   0.3709786
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2207792   0.1636864   0.2778721
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3580645   0.3202961   0.3958330
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1397306   0.1257869   0.1536744
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.1598344   0.1452161   0.1744527
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.2599065   0.1654090   0.3544039
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1808241   0.1744046   0.1872436
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2485323   0.2110255   0.2860391
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.2500980   0.2382136   0.2619824
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1823591   0.1743561   0.1903622
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.1833333   0.1342773   0.2323893
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2708333   0.2169112   0.3247555
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2931354   0.2546710   0.3315999
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1607589   0.1446692   0.1768485
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3205653   0.3029225   0.3382080
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2259307   0.1907517   0.2611097
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0082759   0.0065972   0.0099545
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0940195   0.0884810   0.0995580
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1731092   0.1426836   0.2035348
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.1317329   0.1223171   0.1411487
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0789074   0.0583085   0.0995064
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1652052   0.1560335   0.1743769


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1895271   1.0279631   1.3764840
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.6108013   0.8126896   3.1927083
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.5168721   0.3605956   0.7408765
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9650314   0.6810994   1.3673270
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.8680173   0.7474732   1.0080013
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0610738   0.8354337   1.3476563
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2716136   1.0501536   1.5397757
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.3353312   0.9907697   1.7997214
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9671977   0.8123733   1.1515291
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.7858931   0.6591337   0.9370297
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9560649   0.8267675   1.1055829
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.2768637   1.1062790   1.4737520
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           0.6292648   0.4231570   0.9357618
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0487428   0.7776796   1.4142862
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9416618   0.8623451   1.0282739
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0255054   0.9064230   1.1602324
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0073586   0.9511023   1.0669424
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.8915017   0.7455428   1.0660357
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0386739   0.9901866   1.0895356
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9995215   0.9337773   1.0698945
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.7009841   0.5041717   0.9746258
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0427258   0.9935120   1.0943773
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.7665954   0.6161252   0.9538135
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.3381696   0.6165050   2.9045956
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.5174704   0.8019305   2.8714663
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.1475126   0.8317368   1.5831753
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           0.7723620   0.6389604   0.9336152
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.5926561   1.1659798   2.1754694
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.3027806   0.9025446   1.8805022
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1601382   0.8732527   1.5412728
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.7844853   0.6322936   0.9733091
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9188558   0.7377097   1.1444828
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.2785009   1.0231139   1.5976370
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8578221   0.7483672   0.9832857
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0176690   0.9039588   1.1456829
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0212233   0.9482670   1.0997925
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0673191   0.8637040   1.3189356
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           0.9914424   0.9385307   1.0473372
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0370717   0.9277481   1.1592777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9871543   0.9382716   1.0385836
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.7316230   0.5687028   0.9412160
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0886704   0.9842656   1.2041498
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0012354   0.5938285   1.6881511
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.7991844   0.5981303   1.0678204
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.4803077   0.9071723   2.4155398
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9666822   0.7268413   1.2856650
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.6255267   0.4917868   0.7956366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9421525   0.7193261   1.2340041
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.3420790   1.1266076   1.5987608
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0487428   0.7776796   1.4142862
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9229013   0.8120963   1.0488250
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.7083808   0.6871057   4.2476216
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9713655   0.8745060   1.0789530
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.5314321   0.9693870   2.4193476
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0967457   1.0043182   1.1976794
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9956644   0.9219935   1.0752220
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.6371958   0.4851563   0.8368817
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9547866   0.8486350   1.0742161


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0527061    0.0119770    0.0934351
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1781741   -0.0209745    0.3773226
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0804721   -0.1424098   -0.0185344
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0070846   -0.0776467    0.0634776
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0933502   -0.1982859    0.0115854
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0377640   -0.1100590    0.1855869
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0816561    0.0131455    0.1501666
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1199088    0.0134304    0.2263872
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0119186   -0.0753087    0.0514714
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0902135   -0.1642275   -0.0161996
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0108890   -0.0469132    0.0251352
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0821731    0.0395658    0.1247805
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.0628992   -0.1343552    0.0085567
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0105007   -0.0541196    0.0751209
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0366363   -0.0918422    0.0185696
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0066041   -0.0261987    0.0394069
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0017136   -0.0116689    0.0150961
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0391453   -0.1038060    0.0255154
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0125072   -0.0029550    0.0279695
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0001932   -0.0276674    0.0272810
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0343799   -0.0734498    0.0046900
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0108334   -0.0013875    0.0230543
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0683029   -0.1296449   -0.0069610
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0791623   -0.1022878    0.2606124
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0349752   -0.0093552    0.0793057
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0667202   -0.0786684    0.2121087
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.1603041   -0.2923155   -0.0282928
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0821559    0.0215141    0.1427978
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0832181   -0.0176282    0.1840645
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0356916   -0.0276413    0.0990245
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0710361   -0.1431080    0.0010358
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0123396   -0.0457723    0.0210931
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0348174    0.0067843    0.0628504
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0490070   -0.0957544   -0.0022597
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0045126   -0.0260890    0.0351141
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0037579   -0.0093679    0.0168838
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0156757   -0.0334977    0.0648491
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0021587   -0.0159935    0.0116761
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0084199   -0.0168974    0.0337373
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0023730   -0.0117517    0.0070056
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0672511   -0.1305046   -0.0039976
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0216177   -0.0030462    0.0462815
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0003822   -0.1612321    0.1619965
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0680538   -0.1642184    0.0281107
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0951121   -0.0021523    0.1923766
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0055482   -0.0530770    0.0419806
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0787269   -0.1303832   -0.0270707
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0098705   -0.0559282    0.0361872
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0817080    0.0397992    0.1236169
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0105007   -0.0541196    0.0751209
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0395042   -0.1049460    0.0259375
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0034316   -0.0011953    0.0080585
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0027716   -0.0129418    0.0073986
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0600717    0.0076420    0.1125015
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0116204    0.0010181    0.0222226
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0011611   -0.0217459    0.0194237
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0449280   -0.0802742   -0.0095819
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0078232   -0.0281634    0.0125170


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1593298    0.0272024    0.2735114
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3791910   -0.2304821    0.6867863
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.9347144   -1.7731896   -0.3497526
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0362357   -0.4682146    0.2686460
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.1520508   -0.3378405    0.0079378
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0575584   -0.1969830    0.2579710
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2135976    0.0477584    0.3505548
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2511221   -0.0093163    0.4443584
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0339148   -0.2309612    0.1315894
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.2724377   -0.5171428   -0.0672020
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0459541   -0.2095299    0.0954998
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.2168311    0.0960689    0.3214598
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.5891562   -1.3631891   -0.0686480
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0464774   -0.2858766    0.2929295
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0619524   -0.1596286    0.0274965
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0248710   -0.1032377    0.1381037
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0073049   -0.0514116    0.0627423
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.1217029   -0.3413047    0.0619451
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0372339   -0.0099107    0.0821778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0004788   -0.0709192    0.0653284
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.4265658   -0.9834512   -0.0260348
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0409751   -0.0065304    0.0862384
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.3044690   -0.6230467   -0.0484230
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2527106   -0.6220468    0.6557180
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3410086   -0.2469909    0.6517459
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1285499   -0.2023034    0.3683580
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.2947296   -0.5650422   -0.0711051
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.3721181    0.1423522    0.5403291
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2324110   -0.1079784    0.4682272
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1380337   -0.1451439    0.3511856
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.2747212   -0.5815438   -0.0274228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0883100   -0.3555468    0.1262429
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.2178340    0.0225917    0.3740756
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1657429   -0.3362425   -0.0169984
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0173622   -0.1062451    0.1271581
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0207822   -0.0545553    0.0907376
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0630731   -0.1578040    0.2418129
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0086314   -0.0654953    0.0451977
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0357465   -0.0778788    0.1373939
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0130129   -0.0657895    0.0371503
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.3668242   -0.7583875   -0.0624554
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0814483   -0.0159859    0.1695385
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0012338   -0.6839879    0.4076360
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.2512757   -0.6718766    0.0635129
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3244648   -0.1023265    0.5860139
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0344661   -0.3758161    0.2221924
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.5986528   -1.0334013   -0.2568552
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0613993   -0.3901900    0.1896299
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.2548874    0.1123795    0.3745156
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0464774   -0.2858766    0.2929295
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0835395   -0.2313811    0.0465521
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.4146504   -0.4553802    0.7645741
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0294786   -0.1435027    0.0731755
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.3470164   -0.0315797    0.5866654
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0882116    0.0042996    0.1650520
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0043545   -0.0846064    0.0699595
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.5693764   -1.0611914   -0.1949120
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0473545   -0.1783629    0.0690886
