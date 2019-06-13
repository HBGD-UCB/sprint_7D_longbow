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
![](/tmp/9cae2fb5-79f1-4eff-be8a-890d7db24ace/d7efc5a0-3906-4d21-b17d-ffaa8d9c8d08/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9cae2fb5-79f1-4eff-be8a-890d7db24ace/d7efc5a0-3906-4d21-b17d-ffaa8d9c8d08/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2772276   0.2115886   0.3428666
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2906832   0.0871907   0.4941758
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.1374979   0.0565267   0.2184692
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1518742   0.0824364   0.2213119
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.6076864   0.4554299   0.7599429
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.7170277   0.5724243   0.8616311
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3006333   0.2420698   0.3591969
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3548905   0.2436051   0.4661759
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3860007   0.3144567   0.4575448
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4363432   0.3588473   0.5138391
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2608823   0.2184142   0.3033504
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2876532   0.2450112   0.3302952
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.0906762   0.0479478   0.1334045
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2154300   0.1461364   0.2847236
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6363632   0.5666304   0.7060960
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2535006   0.1656879   0.3413134
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2334304   0.2178386   0.2490223
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.4363168   0.3599714   0.5126622
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3162543   0.2963848   0.3361239
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3954976   0.3623620   0.4286333
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0865413   0.0550163   0.1180663
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2594079   0.2422432   0.2765726
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2204934   0.1557550   0.2852318
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2318591   0.0339773   0.4297409
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.0663291   0.0179692   0.1146890
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5565541   0.3938942   0.7192139
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.6607027   0.5223557   0.7990497
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1386233   0.1092393   0.1680073
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2892729   0.1835680   0.3949778
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2546824   0.1922782   0.3170866
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3005695   0.2240033   0.3771357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1560073   0.1222626   0.1897520
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1278361   0.0977983   0.1578739
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.3377379   0.2740119   0.4014639
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2504398   0.1628355   0.3380441
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1732900   0.1589627   0.1876173
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2226886   0.1610179   0.2843593
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2391456   0.2242303   0.2540609
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2154932   0.1860288   0.2449576
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1808408   0.1683560   0.1933257
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1599936   0.1034059   0.2165813
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2417776   0.1928045   0.2907508
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.2479652   0.1021909   0.3937395
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3388872   0.2325461   0.4452282
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1985883   0.0948327   0.3023440
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1533730   0.0973457   0.2094004
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1445227   0.0938694   0.1951761
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1476431   0.1051246   0.1901616
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2365645   0.1915325   0.2815965
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2154300   0.1461364   0.2847236
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5323253   0.4558201   0.6088304
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0094579   0.0037280   0.0151878
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0988127   0.0871580   0.1104675
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1562279   0.0877668   0.2246889
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1175602   0.1046043   0.1305160
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2636774   0.2378911   0.2894638
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.1176980   0.0753027   0.1600933
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1746167   0.1515519   0.1976815


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1932380   1.0308950   1.3811464
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.6164659   0.8209830   3.1827236
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.6261383   0.4031724   0.9724108
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.2873343   0.8722154   1.9000234
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0102925   0.7998201   1.2761505
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           0.9150240   0.7533592   1.1113808
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2716136   1.0501536   1.5397757
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.3454628   0.9998089   1.8106163
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9104350   0.7753189   1.0690979
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.7588857   0.6470046   0.8901134
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9082750   0.7840465   1.0521868
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.3174651   1.1462508   1.5142535
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.1773940   0.8555964   1.6202227
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0487428   0.7776796   1.4142862
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9292840   0.8500325   1.0159243
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0474713   0.9333286   1.1755734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0049565   0.9462405   1.0673159
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.7371854   0.6320031   0.8598729
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0621499   1.0109700   1.1159209
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0205181   0.9502001   1.0960398
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9313129   0.7108336   1.2201782
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0192066   0.9670611   1.0741638
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0174208   0.8192399   1.2635433
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.3510489   0.5926707   3.0798439
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.5462915   0.8142980   2.9362929
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9325630   0.7086795   1.2271751
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           0.8232181   0.6761689   1.0022467
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.5926561   1.1659798   2.1754694
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.2378088   0.8761379   1.7487779
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0152701   0.8172935   1.2612034
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.8602842   0.6841351   1.0817877
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8956671   0.7385840   1.0861589
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.2503069   1.0069503   1.5524772
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8754750   0.7552617   1.0148223
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0378001   0.9217904   1.1684100
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0434768   0.9679818   1.1248599
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1160531   0.8936477   1.3938094
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.0457980   1.0051997   1.0880360
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0930524   0.9694118   1.2324624
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0083958   0.9564256   1.0631899
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1458793   0.9179209   1.4304494
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0977673   0.9909409   1.2161098
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.2491919   0.7099226   2.1980994
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.7991844   0.5981303   1.0678204
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.4760961   0.8956565   2.4326956
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0495691   0.7743800   1.4225513
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9099389   0.6707427   1.2344358
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0888341   0.8312514   1.4262349
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.3550860   1.1310359   1.6235188
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0487428   0.7776796   1.4142862
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8883316   0.7919725   0.9964147
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.8750204   0.4914615   1.5579260
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9514916   0.8587019   1.0543079
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1080562   0.7450529   1.6479212
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.1205574   1.0314438   1.2173702
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0112467   0.9358139   1.0927599
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.6704229   0.5133061   0.8756311
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9461020   0.8329764   1.0745911


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0535709    0.0128965    0.0942452
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1791963   -0.0173668    0.3757594
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0514052   -0.1157908    0.0129804
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0436387   -0.0159282    0.1032055
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0062546   -0.1356840    0.1481932
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0609301   -0.2000708    0.0782105
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0816561    0.0131455    0.1501666
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1226015    0.0174423    0.2277606
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0345722   -0.0965083    0.0273640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.1052086   -0.1742496   -0.0361676
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0239294   -0.0623108    0.0144519
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0913199    0.0511756    0.1314641
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0160854   -0.0132400    0.0454108
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0105007   -0.0541196    0.0751209
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0450011   -0.1017156    0.0117135
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0120340   -0.0184046    0.0424726
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0011570   -0.0128968    0.0152108
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.1146704   -0.1810147   -0.0483261
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0196552    0.0040345    0.0352758
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0081149   -0.0201198    0.0363495
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0059443   -0.0293098    0.0174213
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0049823   -0.0086215    0.0185862
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0038412   -0.0440375    0.0517199
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0813939   -0.1094827    0.2722705
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0362350   -0.0076033    0.0800733
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0375323   -0.1903935    0.1153289
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.1168003   -0.2464081    0.0128075
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0821559    0.0215141    0.1427978
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0687916   -0.0311404    0.1687236
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0038890   -0.0513816    0.0591596
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0419943   -0.1108463    0.0268577
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0162767   -0.0463890    0.0138356
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0319983    0.0041715    0.0598250
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0420568   -0.0920064    0.0078928
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0094667   -0.0213522    0.0402855
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0075341   -0.0054860    0.0205542
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0258437   -0.0235374    0.0752248
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0109524    0.0014782    0.0204265
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0200522   -0.0058317    0.0459360
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0015183   -0.0080502    0.0110868
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0233398   -0.0124716    0.0591511
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0236379   -0.0012103    0.0484862
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0617909   -0.0783263    0.2019082
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0680538   -0.1642184    0.0281107
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0945471   -0.0048607    0.1939549
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0076026   -0.0389493    0.0541545
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0130159   -0.0570547    0.0310230
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0131157   -0.0267579    0.0529894
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0840007    0.0411228    0.1268787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0105007   -0.0541196    0.0751209
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0594439   -0.1208265    0.0019386
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0011820   -0.0066362    0.0042721
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0047933   -0.0149342    0.0053477
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0168814   -0.0451209    0.0788837
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0141727    0.0043928    0.0239527
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0029655   -0.0174802    0.0234113
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0387906   -0.0711330   -0.0064481
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0094115   -0.0315857    0.0127627


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1619442    0.0299691    0.2759638
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3813665   -0.2180520    0.6858037
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.5970912   -1.4803287   -0.0283719
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.2232010   -0.1465058    0.4736907
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0101876   -0.2502811    0.2163934
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0928675   -0.3273880    0.1002184
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2135976    0.0477584    0.3505548
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2567613   -0.0001911    0.4477019
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0983761   -0.2897919    0.0646320
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.3177216   -0.5455842   -0.1234523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1009882   -0.2754345    0.0495984
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.2409666    0.1275906    0.3396086
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1506666   -0.1687754    0.3828009
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0464774   -0.2858766    0.2929295
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0760973   -0.1764256    0.0156747
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0453199   -0.0714341    0.1493513
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0049320   -0.0568137    0.0630703
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.3565109   -0.5822708   -0.1629626
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0585133    0.0108509    0.1038791
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0201056   -0.0524099    0.0876244
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0737530   -0.4067990    0.1804476
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0188446   -0.0340608    0.0690433
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0171225   -0.2206437    0.2085748
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2598343   -0.6872777    0.6753082
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3532914   -0.2280517    0.6594345
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0723136   -0.4110752    0.1851203
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.2147449   -0.4789204    0.0022416
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.3721181    0.1423522    0.5403291
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1921208   -0.1413729    0.4281721
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0150404   -0.2235507    0.2071065
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.1624066   -0.4616997    0.0756042
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1164862   -0.3539421    0.0793244
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.2001964    0.0069023    0.3558682
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1422371   -0.3240443    0.0146058
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0364233   -0.0848453    0.1441360
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0416654   -0.0330773    0.1110004
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1039853   -0.1190092    0.2825418
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0437924    0.0051728    0.0809127
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0851308   -0.0315534    0.1886162
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0083259   -0.0455596    0.0594343
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1273078   -0.0894185    0.3009190
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0890601   -0.0091419    0.1777058
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.1994825   -0.4086043    0.5450615
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.2512757   -0.6718766    0.0635129
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3225373   -0.1164995    0.5889334
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0472280   -0.2913556    0.2970376
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0989749   -0.4908846    0.1899133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0815865   -0.2030055    0.2988532
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.2620395    0.1158548    0.3840539
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0464774   -0.2858766    0.2929295
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1257058   -0.2626701   -0.0035982
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.1428305   -1.0347472    0.3581210
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0509815   -0.1645485    0.0515104
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0975187   -0.3421866    0.3931749
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1075870    0.0304852    0.1785572
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0111216   -0.0685885    0.0848859
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.4915959   -0.9481552   -0.1420335
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0569685   -0.2005142    0.0694134
