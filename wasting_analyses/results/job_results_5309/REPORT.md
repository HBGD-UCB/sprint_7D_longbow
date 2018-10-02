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
![](/tmp/c628f958-cc42-4008-8480-b439d20f6717/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c628f958-cc42-4008-8480-b439d20f6717/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c628f958-cc42-4008-8480-b439d20f6717/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c628f958-cc42-4008-8480-b439d20f6717/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.6666667   0.5414670   0.7918663
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.6585366   0.4945876   0.8224856
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5517241   0.3870228   0.7164254
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.6387435   0.5643906   0.7130963
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6185567   0.5162792   0.7208342
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6315789   0.4821442   0.7810137
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.5960784   0.5321171   0.6600398
0-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.6090909   0.5042692   0.7139127
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4666667   0.3071858   0.6261475
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                0.5714286   0.3275171   0.8153400
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              NA                0.3626374   0.2548744   0.4704003
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 NA                0.4429530   0.3553497   0.5305564
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.4098350   0.3640033   0.4556667
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3403428   0.2801115   0.4005742
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4391448   0.3435237   0.5347659
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.5308088   0.4585896   0.6030281
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.5429721   0.4524153   0.6335289
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4653765   0.3652726   0.5654805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.6121852   0.5351597   0.6892107
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.6295287   0.5300435   0.7290139
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.6859912   0.5686958   0.8032866
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.6118512   0.5403756   0.6833269
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.6661129   0.5822246   0.7500013
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.6115485   0.4906431   0.7324539
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.6712853   0.6142355   0.7283351
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.6221960   0.5639726   0.6804194
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5989075   0.5362034   0.6616116
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.5501133   0.5034558   0.5967708
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.5633187   0.5054926   0.6211447
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4923672   0.4538054   0.5309290
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.0386473   0.0155203   0.0617743
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0671855   0.0343230   0.1000480
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0364462   0.0157560   0.0571363
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5294778   0.4674535   0.5915022
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5502144   0.4698284   0.6306004
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5016073   0.3988288   0.6043858
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.8655345   0.8522827   0.8787863
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8595563   0.8406053   0.8785072
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8462319   0.8215083   0.8709554
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.5654669   0.5442113   0.5867224
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.5203551   0.4877515   0.5529586
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.5166732   0.4766673   0.5566791
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.4927495   0.4094758   0.5760232
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.4273385   0.3393114   0.5153657
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4421386   0.3627272   0.5215500
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.2318958   0.2032809   0.2605107
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.2349955   0.2022644   0.2677267
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.2232145   0.1902142   0.2562149
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.6140371   0.5775485   0.6505256
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5975149   0.5507840   0.6442457
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6170662   0.5730876   0.6610448
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.4200977   0.4074073   0.4327881
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.4228018   0.3974033   0.4482003
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4624097   0.4304863   0.4943331
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.6916667   0.6069433   0.7763901
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6349206   0.5146407   0.7552006
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7000000   0.5002215   0.8997785
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                0.6506849   0.5710765   0.7302933
0-6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.6266667   0.5125993   0.7407341
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5789474   0.3725273   0.7853674
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.5569026   0.4888216   0.6249837
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.4490296   0.3506520   0.5474073
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4522311   0.3113395   0.5931228
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.7305781   0.6518872   0.8092691
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.7173347   0.6046630   0.8300064
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6595463   0.5219176   0.7971749
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.8041237   0.7236124   0.8846350
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.7500000   0.6371681   0.8628319
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.8000000   0.6722327   0.9277673
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.7729325   0.7054626   0.8404024
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.7282871   0.6556120   0.8009623
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.6449878   0.5589085   0.7310670
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.6627690   0.5885898   0.7369482
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.7387829   0.6488996   0.8286662
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.6041859   0.5389069   0.6694649
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5833333   0.4844163   0.6822503
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.6153846   0.4821036   0.7486656
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5312500   0.3559148   0.7065852
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.8928859   0.8803684   0.9054034
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8859860   0.8681666   0.9038053
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8615277   0.8375824   0.8854730
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.7510899   0.7299502   0.7722296
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.7444342   0.7121273   0.7767410
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7058411   0.6681434   0.7435389
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.7362637   0.6450868   0.8274407
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7954545   0.6804593   0.9104498
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7341772   0.6360731   0.8322813
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.3433649   0.3047871   0.3819428
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.3618525   0.3160282   0.4076769
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.3479990   0.2998956   0.3961025
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.7480544   0.7025944   0.7935145
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.7024098   0.6413037   0.7635160
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7565127   0.6997875   0.8132379
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.6824811   0.6670969   0.6978653
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.6616427   0.6309225   0.6923628
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.6655246   0.6283314   0.7027179
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.4642857   0.2608610   0.6677105
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.6666667   0.4382106   0.8951228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3125000   0.1323165   0.4926835
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.5492958   0.4257115   0.6728800
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.5882353   0.4182495   0.7582211
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5555556   0.3104388   0.8006723
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                0.4285714   0.1009948   0.7561480
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              NA                0.3064516   0.1935002   0.4194030
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 NA                0.3116883   0.2024431   0.4209335
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.2953308   0.2412021   0.3494596
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.2435564   0.1737087   0.3134041
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3623376   0.2475914   0.4770838
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.2530120   0.1584262   0.3475979
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3666667   0.2422593   0.4910741
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3018868   0.1714581   0.4323155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.3000000   0.1897922   0.4102078
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2580645   0.1079476   0.4081815
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2272727   0.0303695   0.4241760
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.5643184   0.4885586   0.6400782
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.4945935   0.4147451   0.5744418
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5398630   0.4611665   0.6185594
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.5048946   0.4519868   0.5578025
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.5201925   0.4575941   0.5827909
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4563474   0.4104005   0.5022944
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.0387768   0.0155969   0.0619568
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0678792   0.0351679   0.1005906
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0363912   0.0158328   0.0569496
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.4993696   0.4251321   0.5736071
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5062787   0.4094013   0.6031560
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4555568   0.3170552   0.5940584
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.2244898   0.1425563   0.3064233
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2448980   0.1234074   0.3663885
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.3333333   0.1298967   0.5367700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0735532   0.0528823   0.0942241
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0656941   0.0373965   0.0939917
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0617989   0.0258153   0.0977825
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.5010314   0.4504349   0.5516279
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5096327   0.4466026   0.5726628
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.5154970   0.4549950   0.5759991


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.9878049   0.7231029   1.3494048
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               0.8275862   0.5812550   1.1783107
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9683961   0.7911341   1.1853757
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.9887834   0.7595844   1.2871415
0-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               1.0218301   0.8342531   1.2515828
0-24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.7828947   0.5471959   1.1201183
0-24 months   ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              <25               0.6346154   0.3772537   1.0675485
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 <25               0.7751678   0.4841995   1.2409866
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               0.8304386   0.6742931   1.0227426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.0715160   0.8394585   1.3677229
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.0229146   0.8261689   1.2665137
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.8767310   0.6813433   1.1281496
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.0283305   0.8417228   1.2563086
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1205615   0.9070689   1.3843030
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.0886844   0.9229056   1.2842417
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.9995053   0.7996094   1.2493735
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.9268726   0.8176688   1.0506613
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8921803   0.7810997   1.0190576
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.0240049   0.8968060   1.1692451
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               0.8950288   0.7977891   1.0041207
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               1.7384284   0.8041555   3.7581453
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               0.9430459   0.4144824   2.1456537
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0391641   0.8617183   1.2531497
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9473622   0.7480844   1.1997244
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9930930   0.9668849   1.0200116
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9776986   0.9460731   1.0103813
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9202220   0.8557745   0.9895229
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9137108   0.8388811   0.9952154
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.8672531   0.6668465   1.1278877
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.8972888   0.7026516   1.1458412
0-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0133670   0.8415079   1.2203245
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               0.9625640   0.7941150   1.1667447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9730925   0.8820942   1.0734783
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0049332   0.9160190   1.1024779
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0064367   0.9412530   1.0761345
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1007194   1.0211007   1.1865462
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9179575   0.7325632   1.1502708
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               1.0120482   0.7418611   1.3806379
0-6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          [25-30)              <25               0.9630877   0.7734194   1.1992691
0-6 months    ki1000108-IRC              INDIA                          >=30                 <25               0.8897507   0.6103093   1.2971394
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               0.8062982   0.6288682   1.0337887
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               0.8120471   0.5821053   1.1328198
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               0.9818727   0.8122815   1.1868717
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.9027731   0.7145530   1.1405722
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.9326923   0.7784940   1.1174330
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.9948718   0.8239547   1.2012431
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.9422390   0.8254871   1.0755036
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8344684   0.7115605   0.9786062
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.1146914   0.9461336   1.3132786
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               0.9116086   0.7806459   1.0645418
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0549451   0.8012537   1.3889597
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9107143   0.6283974   1.3198662
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9922723   0.9683364   1.0167999
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9648800   0.9354259   0.9952615
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9911386   0.9426344   1.0421385
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9397558   0.8863403   0.9963905
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0803935   0.8931245   1.3069287
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.9971661   0.8310856   1.1964353
0-6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0538424   0.8897480   1.2482005
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.0134961   0.8481101   1.2111333
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9389823   0.8444542   1.0440918
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0113070   0.9182622   1.1137799
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9694666   0.9207335   1.0207791
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.9751547   0.9181810   1.0356637
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
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               0.8246900   0.5870225   1.1585817
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.2268871   0.8512394   1.7683063
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.4492063   0.8743137   2.4021115
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.1931716   0.6738557   2.1127053
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.8602151   0.4322396   1.7119437
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.7575758   0.2956792   1.9410259
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.8764440   0.7126108   1.0779433
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9566638   0.7872073   1.1625978
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.0302991   0.8786421   1.2081325
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               0.9038469   0.7817232   1.0450492
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               1.7505098   0.8140096   3.7644329
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               0.9384788   0.4133374   2.1308078
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0138356   0.7955987   1.2919359
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9122638   0.6502359   1.2798820
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               1.0909091   0.5892706   2.0195861
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               1.4848485   0.7292028   3.0235417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.8931502   0.5341529   1.4934249
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8401929   0.4402617   1.6034190
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0171672   0.8672490   1.1930012
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0288717   0.8816193   1.2007188


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0295699   -0.1264369    0.0672971
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0068416   -0.0535092    0.0398259
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0062050   -0.0453261    0.0329160
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.1501687   -0.3899544    0.0896169
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0289996   -0.0576750   -0.0003243
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0105224   -0.0615093    0.0404644
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0291233   -0.0796866    0.0214400
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0119430   -0.0319642    0.0558501
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0445248   -0.0901837    0.0011342
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0085016   -0.0470012    0.0299979
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0048866   -0.0126933    0.0224666
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0071962   -0.0496794    0.0352869
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0043293   -0.0133991    0.0047405
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0212626   -0.0349602   -0.0075650
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0506442   -0.1143895    0.0131011
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0036713   -0.0179551    0.0252976
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0071691   -0.0345539    0.0202158
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0024356   -0.0040370    0.0089082
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0167898   -0.0716035    0.0380238
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0131849   -0.0634034    0.0370335
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0437062   -0.0870360   -0.0003763
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0175737   -0.0724592    0.0373119
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0160802   -0.0714407    0.0392802
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0708676   -0.1277354   -0.0139998
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0275033   -0.0872797    0.0322731
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0000000   -0.0678151    0.0678151
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0073592   -0.0160146    0.0012961
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0067740   -0.0192803    0.0057323
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0113998   -0.0566440    0.0794436
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0147855   -0.0146449    0.0442160
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0113523   -0.0457553    0.0230507
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0071592   -0.0152753    0.0009570
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0195853   -0.1240751    0.1632456
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0116798   -0.0672951    0.0906548
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.1135029   -0.4353496    0.2083437
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0099186   -0.0446003    0.0247632
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0480084   -0.0271618    0.1231785
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0235772   -0.0940373    0.0468828
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0063669   -0.0681440    0.0554101
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0014690   -0.0427330    0.0456710
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0047571   -0.0128695    0.0223837
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0059313   -0.0579383    0.0460758
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0195578   -0.0360751    0.0751908
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0044244   -0.0186530    0.0098041
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0016367   -0.0363515    0.0396248


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0464135   -0.2106833    0.0955676
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0108270   -0.0874082    0.0603609
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0105192   -0.0791114    0.0537130
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.3564753   -1.0741317    0.1128696
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0761474   -0.1543097   -0.0032779
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0202243   -0.1230889    0.0732188
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0499489   -0.1403599    0.0332941
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0191457   -0.0539500    0.0871719
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0710395   -0.1468937   -0.0002023
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0156969   -0.0893520    0.0529780
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.1122492   -0.4043764    0.4388246
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0137784   -0.0984726    0.0643857
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0050271   -0.0156170    0.0054524
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0390709   -0.0645979   -0.0141561
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.1145524   -0.2687205    0.0208820
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0155847   -0.0806327    0.1032352
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0118133   -0.0579692    0.0323290
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0057643   -0.0096688    0.0209615
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0248783   -0.1094924    0.0532827
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0206822   -0.1026291    0.0551744
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0851646   -0.1736940   -0.0033128
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0246473   -0.1047388    0.0496377
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0204053   -0.0931479    0.0474967
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.1009417   -0.1868415   -0.0212590
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0432942   -0.1419696    0.0468549
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0000000   -0.1232818    0.1097514
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0083106   -0.0181388    0.0014227
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0091010   -0.0260457    0.0075639
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0152473   -0.0801565    0.1022246
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0412830   -0.0444254    0.1199580
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0154096   -0.0632399    0.0302690
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0106011   -0.0226998    0.0013544
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0404762   -0.3093300    0.2968267
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0208206   -0.1307532    0.1520764
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.3602484   -1.8983868    0.3616187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0347517   -0.1638458    0.0800233
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.1594854   -0.1297705    0.3746829
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0852941   -0.3726163    0.1418845
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0114113   -0.1285768    0.0935904
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0029011   -0.0883169    0.0864736
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.1092733   -0.4084894    0.4367057
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0120203   -0.1231557    0.0881183
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0801394   -0.1775656    0.2814468
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0640027   -0.2918567    0.1236630
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0032560   -0.0752536    0.0760332
