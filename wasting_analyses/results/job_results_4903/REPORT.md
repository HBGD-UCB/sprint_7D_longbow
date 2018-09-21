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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_nrooms
* W_nchldlt5
* impfloor
* impsan
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mage       wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  0       18     124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  1       36     124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              0       14     124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              1       27     124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       13     124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       16     124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  0        0      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  1        8      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              0        3      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              1        7      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0        3      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        2      23
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  0       44     177
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  1       59     177
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              0       26     177
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              1       41     177
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0        1     177
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        6     177
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  0        9      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  1       26      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              0       10      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              1       35      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0        1      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1       12      93
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  0        5      34
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  1       17      34
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              0        0      34
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              1        6      34
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0        1      34
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        5      34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  0        8      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  1       37      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              0        5      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              1       10      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        4      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       19      83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  0        3      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  1        9      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              0        2      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              1        6      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        3      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       22      45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  0       69     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  1      122     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              0       37     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              1       60     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       14     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       24     326
0-24 months   ki1000108-IRC              INDIA                          <25                  0      103     395
0-24 months   ki1000108-IRC              INDIA                          <25                  1      152     395
0-24 months   ki1000108-IRC              INDIA                          [25-30)              0       43     395
0-24 months   ki1000108-IRC              INDIA                          [25-30)              1       67     395
0-24 months   ki1000108-IRC              INDIA                          >=30                 0       16     395
0-24 months   ki1000108-IRC              INDIA                          >=30                 1       14     395
0-24 months   ki1000109-EE               PAKISTAN                       <25                  0       12     508
0-24 months   ki1000109-EE               PAKISTAN                       <25                  1       16     508
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              0      116     508
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              1       66     508
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 0      166     508
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 1      132     508
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  0      285     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  1      193     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              0      157     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              1       75     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       62     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       42     814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  0       89     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  1        3     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              0       73     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              1        5     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       59     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1        5     234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  0       94     419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  1      108     419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              0       55     419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              1       65     419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       52     419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       45     419
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  0       68     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  1       99     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              0       36     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              1       47     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       24     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       33     307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  0       65     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  1      105     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              0       32     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              1       58     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       20     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       31     311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  0       86     710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  1      171     710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              0       98     710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              1      155     710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       81     710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1      119     710
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  0      221    1514
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  1      282    1514
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              0      141    1514
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              1      198    1514
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      332    1514
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      340    1514
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  0        9      37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  1       11      37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              0        6      37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              1        3      37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        5      37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        3      37
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  0      297     781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  1       12     781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              0      163     781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              1       11     781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      287     781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1       11     781
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  0      280    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  1      312    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              0      156    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              1      182    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0      100    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       92    1122
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  0      326    4431
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  1     2107    4431
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              0      176    4431
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              1     1068    4431
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0      113    4431
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1      641    4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  0      918    3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  1     1155    3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              0      429    3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              1      472    3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0      277    3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      312    3563
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  0       73     380
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  1       70     380
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              0       55     380
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              1       37     380
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0       84     380
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1       61     380
0-24 months   ki1135781-COHORTS          INDIA                          <25                  0      615    1940
0-24 months   ki1135781-COHORTS          INDIA                          <25                  1      191    1940
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              0      457    1940
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              1      145    1940
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 0      411    1940
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 1      121    1940
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  0      290    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  1      452    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              0      187    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              1      275    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      187    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      298    1689
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  0       20      63
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  1        5      63
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              0       15      63
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              1        4      63
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0       17      63
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1        2      63
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  0     6529   15142
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  1     4728   15142
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              0     1417   15142
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              1     1014   15142
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      798   15142
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      656   15142
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  0        3      62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  1       23      62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              0        8      62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              1       15      62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 0        2      62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       11      62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  1        7      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              1        4      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 1        2      14
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  0       15      82
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  1       32      82
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)              0       10      82
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)              1       20      82
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 0        1      82
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 1        4      82
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  0        5      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  1       14      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              0        4      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              1       13      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 0        0      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 1        7      43
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  1        5      11
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              1        3      11
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 1        3      11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  0        5      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  1       16      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              0        2      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              1        3      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        1      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1        6      33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  1        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              0        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              1        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       10      12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  0       37     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  1       83     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              0       23     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              1       40     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0        6     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       14     203
0-6 months    ki1000108-IRC              INDIA                          <25                  0       51     240
0-6 months    ki1000108-IRC              INDIA                          <25                  1       95     240
0-6 months    ki1000108-IRC              INDIA                          [25-30)              0       28     240
0-6 months    ki1000108-IRC              INDIA                          [25-30)              1       47     240
0-6 months    ki1000108-IRC              INDIA                          >=30                 0        8     240
0-6 months    ki1000108-IRC              INDIA                          >=30                 1       11     240
0-6 months    ki1000109-EE               PAKISTAN                       <25                  0        4     216
0-6 months    ki1000109-EE               PAKISTAN                       <25                  1       10     216
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              0       30     216
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              1       28     216
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 0       60     216
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 1       84     216
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  0       90     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  1      112     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              0       52     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              1       42     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       24     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       21     341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  0       28      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  1        0      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              0       26      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              1        0      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       24      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1        0      78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  0       32     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  1       87     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              0       17     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              1       43     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       15     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       29     223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  0       19     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  1       78     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              0       13     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              1       39     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 0        7     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       28     184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  0       14     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  1       98     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              0        2     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              1       52     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0        5     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       27     198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  0       31     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  1       96     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              0       36     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              1       86     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       34     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       56     339
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  0       53     414
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  1       92     414
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              0       20     414
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              1       55     414
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 0       78     414
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 1      116     414
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  0        2       9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  1        1       9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              0        1       9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              1        0       9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        2       9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        3       9
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  0       80     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  1      112     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              0       40     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              1       64     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 0       30     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 1       34     360
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  0      250    4263
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  1     2085    4263
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              0      139    4263
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              1     1056    4263
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 0       99    4263
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 1      634    4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  0      398    2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  1     1114    2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              0      146    2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              1      452    2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0       97    2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      300    2507
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  0       24     214
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  1       67     214
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              0        9     214
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              1       35     214
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 0       21     214
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 1       58     214
0-6 months    ki1135781-COHORTS          INDIA                          <25                  0      353    1276
0-6 months    ki1135781-COHORTS          INDIA                          <25                  1      191    1276
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              0      248    1276
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              1      145    1276
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 0      218    1276
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 1      121    1276
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  0       85     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  1      251     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              0       62     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              1      147     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 0       51     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 1      156     752
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  0        1       3
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  1        0       3
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              0        0       3
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              1        0       3
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 0        2       3
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 1        0       3
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  0     2196    9474
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  1     4728    9474
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              0      542    9474
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              1     1014    9474
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      338    9474
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      656    9474
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  0       15      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  1       13      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              0        6      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              1       12      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       11      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1        5      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  1        1       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              0        3       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              1        3       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0        2       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        0       9
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                  0       29      95
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                  1       27      95
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              0       16      95
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              1       21      95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0        0      95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        2      95
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  0        4      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  1       12      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              0        6      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              1       22      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0        1      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1        5      50
6-24 months   ki0047075b-MAL-ED          PERU                           <25                  0        5      23
6-24 months   ki0047075b-MAL-ED          PERU                           <25                  1       12      23
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              0        0      23
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              1        3      23
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0        1      23
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        2      23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  0        3      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  1       21      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              0        3      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              1        7      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        3      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       13      50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  0        3      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  1        8      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              0        1      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              1        6      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        3      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       12      33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  0       32     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  1       39     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              0       14     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              1       20     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0        8     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       10     123
6-24 months   ki1000108-IRC              INDIA                          <25                  0       52     155
6-24 months   ki1000108-IRC              INDIA                          <25                  1       57     155
6-24 months   ki1000108-IRC              INDIA                          [25-30)              0       15     155
6-24 months   ki1000108-IRC              INDIA                          [25-30)              1       20     155
6-24 months   ki1000108-IRC              INDIA                          >=30                 0        8     155
6-24 months   ki1000108-IRC              INDIA                          >=30                 1        3     155
6-24 months   ki1000109-EE               PAKISTAN                       <25                  0        8     292
6-24 months   ki1000109-EE               PAKISTAN                       <25                  1        6     292
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              0       86     292
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              1       38     292
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 0      106     292
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 1       48     292
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  0      195     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  1       81     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              0      105     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              1       33     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       38     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       21     473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  0       61     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  1        3     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              0       47     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              1        5     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       35     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1        5     156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  0       62     196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  1       21     196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              0       38     196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              1       22     196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       37     196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       16     196
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  0       49     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  1       21     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              0       23     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              1        8     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       17     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1        5     123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  0       51     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  1        7     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              0       30     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              1        6     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       15     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1        4     113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  0       55     371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  1       75     371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              0       62     371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              1       69     371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       47     371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       63     371
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  0      168    1100
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  1      190    1100
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              0      121    1100
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              1      143    1100
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      254    1100
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      224    1100
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  0        7      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  1       10      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              0        5      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              1        3      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        3      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        0      28
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  0      297     781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  1       12     781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              0      163     781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              1       11     781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      287     781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1       11     781
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  0      200     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  1      200     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              0      116     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              1      118     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       70     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       58     762
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  0       76     168
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  1       22     168
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              0       37     168
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              1       12     168
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0       14     168
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1        7     168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  0      520    1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  1       41    1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              0      283    1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              1       20    1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0      180    1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1       12    1056
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  0       49     166
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  1        3     166
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              0       46     166
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              1        2     166
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0       63     166
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1        3     166
6-24 months   ki1135781-COHORTS          INDIA                          <25                  0      262     664
6-24 months   ki1135781-COHORTS          INDIA                          <25                  1        0     664
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              0      209     664
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              1        0     664
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 0      193     664
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 1        0     664
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  0      205     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  1      201     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              0      125     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              1      128     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      136     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      142     937
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  0       19      60
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  1        5      60
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              0       15      60
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              1        4      60
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0       15      60
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1        2      60
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  0     4333    5668
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  1        0    5668
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              0      875    5668
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              1        0    5668
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      460    5668
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1        0    5668


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/03e8800a-f675-4e0c-ad3d-b3539084c5af/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/03e8800a-f675-4e0c-ad3d-b3539084c5af/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/03e8800a-f675-4e0c-ad3d-b3539084c5af/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/03e8800a-f675-4e0c-ad3d-b3539084c5af/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.6660630   0.5411283   0.7909978
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.6586464   0.4952639   0.8220290
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5522081   0.3883612   0.7160551
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.6387435   0.5643906   0.7130963
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6185567   0.5162792   0.7208342
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6315789   0.4821442   0.7810137
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.6002964   0.5369886   0.6636041
0-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.6126001   0.5082377   0.7169626
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4333539   0.2815788   0.5851290
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                0.5714286   0.3275171   0.8153400
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              NA                0.3626374   0.2548744   0.4704003
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 NA                0.4429530   0.3553497   0.5305564
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.4126233   0.3671229   0.4581236
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3387640   0.2810713   0.3964566
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4528395   0.3678853   0.5377937
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.5305226   0.4583907   0.6026544
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.5430733   0.4528143   0.6333323
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4654846   0.3655854   0.5653838
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.6102538   0.5333711   0.6871366
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.6275678   0.5280028   0.7271329
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.6821731   0.5640013   0.8003448
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.6341919   0.5620477   0.7063362
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.7154479   0.6312019   0.7996938
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.6848268   0.5659706   0.8036829
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.6706981   0.6124334   0.7289627
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.6216879   0.5621075   0.6812683
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5992287   0.5346088   0.6638486
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.5498863   0.5036318   0.5961407
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.5645470   0.5070264   0.6220677
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4930619   0.4545089   0.5316149
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.0386895   0.0155472   0.0618317
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0675279   0.0342567   0.1007990
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0363751   0.0156693   0.0570809
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5293757   0.4673832   0.5913682
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5506609   0.4704538   0.6308680
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5024732   0.4003560   0.6045904
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.8656587   0.8524030   0.8789144
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8596570   0.8408341   0.8784798
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8456440   0.8208853   0.8704026
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.5661830   0.5450209   0.5873451
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.5208905   0.4886534   0.5531275
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.5154538   0.4763646   0.5545430
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.4928143   0.4093483   0.5762804
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.4266446   0.3381614   0.5151278
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4415862   0.3619594   0.5212130
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.2330324   0.2042187   0.2618462
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.2357752   0.2028173   0.2687331
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.2239084   0.1906711   0.2571457
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.6141029   0.5776172   0.6505886
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5973837   0.5506706   0.6440968
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6170498   0.5731174   0.6609822
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.4200977   0.4074073   0.4327880
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.4228039   0.3974063   0.4482015
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4624170   0.4304963   0.4943378
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.6916667   0.6069433   0.7763901
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6349206   0.5146407   0.7552006
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7000000   0.5002215   0.8997785
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                0.6506849   0.5710765   0.7302933
0-6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.6266667   0.5125993   0.7407341
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5789474   0.3725273   0.7853674
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.5563835   0.4880945   0.6246725
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.4482735   0.3492874   0.5472595
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4558216   0.3142943   0.5973490
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.7305980   0.6518880   0.8093081
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.7173088   0.6045630   0.8300545
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6595280   0.5217823   0.7972738
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.8041237   0.7236124   0.8846350
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.7500000   0.6371681   0.8628319
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.8000000   0.6722327   0.9277673
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.7709839   0.7044868   0.8374810
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.7297761   0.6586079   0.8009444
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.6436390   0.5595707   0.7277072
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.6623679   0.5884238   0.7363120
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.7387241   0.6495775   0.8278707
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.6038291   0.5386991   0.6689590
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5833333   0.4844163   0.6822503
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.6153846   0.4821036   0.7486656
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5312500   0.3559148   0.7065852
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.8928827   0.8803661   0.9053993
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8858418   0.8680448   0.9036388
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8616096   0.8376555   0.8855636
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.7508789   0.7296756   0.7720823
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.7445299   0.7121767   0.7768830
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7064141   0.6683576   0.7444706
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.7362637   0.6450868   0.8274407
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7954545   0.6804593   0.9104498
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7341772   0.6360731   0.8322813
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.3438754   0.3051240   0.3826268
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.3621290   0.3161144   0.4081437
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.3481340   0.2998294   0.3964386
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.7481241   0.7026519   0.7935962
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.7024035   0.6412727   0.7635343
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7567552   0.7000079   0.8135025
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.6824643   0.6670806   0.6978481
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.6617056   0.6309967   0.6924145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.6655069   0.6283361   0.7026777
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.4642857   0.2608610   0.6677105
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.6666667   0.4382106   0.8951228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3125000   0.1323165   0.4926835
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.5492958   0.4257115   0.6728800
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.5882353   0.4182495   0.7582211
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5555556   0.3104388   0.8006723
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                0.4285714   0.1009948   0.7561480
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              NA                0.3064516   0.1935002   0.4194030
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 NA                0.3116883   0.2024431   0.4209335
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.2945981   0.2398662   0.3493300
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.2424620   0.1700865   0.3148376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3573221   0.2329238   0.4817205
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.2530120   0.1584262   0.3475979
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3666667   0.2422593   0.4910741
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3018868   0.1714581   0.4323155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.3000000   0.1897922   0.4102078
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2580645   0.1079476   0.4081815
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2272727   0.0303695   0.4241760
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.5652521   0.4896680   0.6408362
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.4954475   0.4157525   0.5751425
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5407833   0.4627585   0.6188081
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.5042940   0.4511776   0.5574103
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.5202419   0.4573908   0.5830929
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4567870   0.4107005   0.5028736
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.0386903   0.0155212   0.0618594
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0675491   0.0350976   0.1000007
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0364457   0.0158973   0.0569941
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5000000   0.4255806   0.5744194
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5042735   0.4062168   0.6023303
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4531250   0.3140916   0.5921584
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.2244898   0.1425563   0.3064233
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2448980   0.1234074   0.3663885
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.3333333   0.1298967   0.5367700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0731044   0.0524100   0.0937989
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0659950   0.0376920   0.0942980
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0624653   0.0264573   0.0984732
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.5009731   0.4504561   0.5514900
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5094022   0.4466132   0.5721912
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.5155559   0.4552419   0.5758700


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6370968   0.5511492   0.7230443
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4212598   0.3553979   0.4871218
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5202864   0.4695109   0.5710618
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6267606   0.5890263   0.6644948
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5416116   0.5143001   0.5689232
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0435339   0.0292984   0.0577695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5442043   0.5277100   0.5606986
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4421053   0.3904403   0.4937702
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2355670   0.2165976   0.2545364
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4225334   0.4114140   0.4336527
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6352657   0.5887450   0.6817864
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7443159   0.7272505   0.7613813
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7476636   0.6894668   0.8058603
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3581505   0.3318331   0.3844678
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6753219   0.6619872   0.6886567
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3150685   0.2385846   0.3915524
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3010204   0.2354283   0.3666125
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5579515   0.5056058   0.6102972
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5063636   0.4748679   0.5378594
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0435339   0.0292984   0.0577695
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2440476   0.1791134   0.3089818
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0691288   0.0539734   0.0842842
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.9888650   0.7247068   1.3493099
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               0.8290629   0.5834002   1.1781711
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9683961   0.7911341   1.1853757
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.9887834   0.7595844   1.2871415
0-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               1.0204962   0.8351657   1.2469531
0-24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.7219000   0.5008606   1.0404884
0-24 months   ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              <25               0.6346154   0.3772537   1.0675485
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 <25               0.7751678   0.4841995   1.2409866
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               0.8210006   0.6708459   1.0047643
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.0974649   0.8833707   1.3634469
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.0236572   0.8272932   1.2666297
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.8774078   0.6823028   1.1283032
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.0283718   0.8417743   1.2563327
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1178513   0.9036654   1.3828034
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.1281252   0.9598900   1.3258462
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               1.0798416   0.8801168   1.3248898
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.9269267   0.8152142   1.0539476
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8934403   0.7792176   1.0244065
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.0266614   0.9000708   1.1710563
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               0.8966615   0.7997262   1.0053464
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               1.7453814   0.8061431   3.7789274
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               0.9401802   0.4127047   2.1418190
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0402081   0.8629025   1.2539457
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9491807   0.7506238   1.2002605
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9930668   0.9669774   1.0198602
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9768792   0.9452273   1.0095910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9200037   0.8562740   0.9884766
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9104014   0.8371994   0.9900039
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.8657309   0.6647660   1.1274492
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.8960498   0.7011338   1.1451527
0-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0117698   0.8395736   1.2192834
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               0.9608464   0.7920829   1.1655670
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9727746   0.8818218   1.0731085
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0047987   0.9159578   1.1022564
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0064419   0.9412600   1.0761376
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1007369   1.0211234   1.1865576
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9179575   0.7325632   1.1502708
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               1.0120482   0.7418611   1.3806379
0-6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          [25-30)              <25               0.9630877   0.7734194   1.1992691
0-6 months    ki1000108-IRC              INDIA                          >=30                 <25               0.8897507   0.6103093   1.2971394
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               0.8056915   0.6270331   1.0352545
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               0.8192580   0.5875856   1.1422740
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               0.9818104   0.8121226   1.1869533
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.9027235   0.7143644   1.1407479
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.9326923   0.7784940   1.1174330
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.9948718   0.8239547   1.2012431
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.9465517   0.8313241   1.0777508
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8348280   0.7143568   0.9756160
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.1152776   0.9476014   1.3126237
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               0.9116219   0.7809685   1.0641330
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0549451   0.8012537   1.3889597
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9107143   0.6283974   1.3198662
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9921144   0.9681979   1.0166217
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9649751   0.9355072   0.9953711
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9915445   0.9429403   1.0426540
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9407830   0.8868995   0.9979402
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0803935   0.8931245   1.3069287
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.9971661   0.8310856   1.1964353
0-6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0530822   0.8886100   1.2479964
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.0123841   0.8466541   1.2105553
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9388864   0.8443319   1.0440298
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0115371   0.9184568   1.1140505
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9695826   0.9208615   1.0208816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.9751526   0.9182071   1.0356299
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               1.4358974   0.8232866   2.5043545
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               0.6730769   0.3259892   1.3897165
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               1.0708899   0.7424954   1.5445283
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               1.0113960   0.6163670   1.6595988
6-24 months   ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              <25               0.7150538   0.3058993   1.6714714
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 <25               0.7272727   0.3135161   1.6870763
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               0.8230265   0.5792711   1.1693532
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.2129139   0.8176713   1.7992073
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.4492063   0.8743137   2.4021115
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.1931716   0.6738557   2.1127053
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.8602151   0.4322396   1.7119437
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.7575758   0.2956792   1.9410259
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.8765071   0.7134583   1.0768180
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9567118   0.7887208   1.1604835
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.0316242   0.8790044   1.2107430
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               0.9057951   0.7829452   1.0479212
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               1.7458929   0.8117507   3.7550225
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               0.9419847   0.4149943   2.1381866
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0085470   0.7893895   1.2885490
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9062500   0.6442603   1.2747784
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               1.0909091   0.5892706   2.0195861
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               1.4848485   0.7292028   3.0235417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9027491   0.5400111   1.5091466
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8544659   0.4495766   1.6239991
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0168255   0.8673189   1.1921037
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0291091   0.8821640   1.2005315


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0289663   -0.1255192    0.0675867
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0068416   -0.0535092    0.0398259
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0104229   -0.0492700    0.0284241
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.1501687   -0.3899544    0.0896169
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0317879   -0.0603416   -0.0032341
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0102362   -0.0611112    0.0406389
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0271919   -0.0773836    0.0229998
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0103977   -0.0564131    0.0356177
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0439375   -0.0905666    0.0026916
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0082747   -0.0463188    0.0297694
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0048445   -0.0127494    0.0224383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0070941   -0.0495649    0.0353768
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0044536   -0.0135409    0.0046338
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0219787   -0.0355963   -0.0083611
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0507091   -0.1146018    0.0131836
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0025346   -0.0192531    0.0243222
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0072349   -0.0346281    0.0201583
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0024357   -0.0040369    0.0089083
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0167898   -0.0716035    0.0380238
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0131849   -0.0634034    0.0370335
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0431870   -0.0867228    0.0003488
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0175936   -0.0725085    0.0373214
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0160802   -0.0714407    0.0392802
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0689190   -0.1249657   -0.0128722
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0271022   -0.0865412    0.0323368
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0000000   -0.0678151    0.0678151
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0073561   -0.0160145    0.0013023
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0065630   -0.0191019    0.0059759
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0113998   -0.0566440    0.0794436
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0142751   -0.0152631    0.0438132
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0114219   -0.0458363    0.0229925
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0071424   -0.0152583    0.0009734
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0195853   -0.1240751    0.1632456
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0116798   -0.0672951    0.0906548
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.1135029   -0.4353496    0.2083437
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0091858   -0.0442154    0.0258437
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0480084   -0.0271618    0.1231785
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0235772   -0.0940373    0.0468828
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0073006   -0.0687934    0.0541922
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0020697   -0.0423322    0.0464716
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0048436   -0.0127689    0.0224561
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0065617   -0.0586953    0.0455719
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0195578   -0.0360751    0.0751908
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0039757   -0.0182235    0.0102722
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0016950   -0.0362529    0.0396429


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0454660   -0.2091654    0.0960713
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0108270   -0.0874082    0.0603609
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0176698   -0.0858156    0.0461992
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.3564753   -1.0741317    0.1128696
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0834688   -0.1614196   -0.0107499
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0196741   -0.1223047    0.0735713
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0466365   -0.1363441    0.0359893
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0166685   -0.0931383    0.0544519
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0701025   -0.1475356    0.0021055
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0152779   -0.0880331    0.0526123
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.1112800   -0.4056641    0.4381139
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0135828   -0.0982530    0.0645597
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0051713   -0.0157820    0.0053285
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0403869   -0.0657708   -0.0156075
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.1146991   -0.2692155    0.0210062
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0107595   -0.0861919    0.0990571
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0119217   -0.0580923    0.0322342
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0057645   -0.0096687    0.0209617
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0248783   -0.1094924    0.0532827
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0206822   -0.1026291    0.0551744
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0841530   -0.1730807   -0.0019666
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0246753   -0.1048113    0.0496483
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0204053   -0.0931479    0.0474967
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0981661   -0.1828300   -0.0195623
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0426628   -0.1407536    0.0469934
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0000000   -0.1232818    0.1097514
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0083070   -0.0181388    0.0014298
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0088175   -0.0258059    0.0078896
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0152473   -0.0801565    0.1022246
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0398578   -0.0461887    0.1188271
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0155041   -0.0633506    0.0301894
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0105763   -0.0226745    0.0013788
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0404762   -0.3093300    0.2968267
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0208206   -0.1307532    0.1520764
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.3602484   -1.8983868    0.3616187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0321844   -0.1625733    0.0835807
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.1594854   -0.1297705    0.3746829
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0852941   -0.3726163    0.1418845
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0130846   -0.1296940    0.0914881
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0040873   -0.0875630    0.0880141
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.1112610   -0.4064181    0.4383911
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0132979   -0.1247131    0.0870804
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0801394   -0.1775656    0.2814468
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0575108   -0.2856978    0.1301773
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0033721   -0.0750509    0.0760743
