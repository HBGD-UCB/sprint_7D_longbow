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

unadjusted

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
![](/tmp/13949449-49b1-4ca3-a6de-198aec0d304d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/13949449-49b1-4ca3-a6de-198aec0d304d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/13949449-49b1-4ca3-a6de-198aec0d304d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/13949449-49b1-4ca3-a6de-198aec0d304d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.4037657   0.3572330   0.4502984
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3232759   0.2618336   0.3847182
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4038462   0.3039523   0.5037401
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.5346535   0.4611825   0.6081245
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.5416667   0.4469249   0.6364084
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4639175   0.3608362   0.5669988
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.5928144   0.5142672   0.6713615
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.5662651   0.4610007   0.6715294
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.5789474   0.4473137   0.7105810
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.6176471   0.5424459   0.6928483
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.6444444   0.5487876   0.7401013
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.6078431   0.4757701   0.7399162
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.6653696   0.6038796   0.7268597
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.6126482   0.5485616   0.6767349
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5950000   0.5240251   0.6659749
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.5606362   0.5127592   0.6085132
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.5840708   0.5246601   0.6434815
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5059524   0.4659723   0.5459325
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.0388350   0.0155498   0.0621201
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0632184   0.0298098   0.0966270
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0369128   0.0162555   0.0575700
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5270270   0.4648626   0.5891915
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5384615   0.4571941   0.6197289
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4791667   0.3722690   0.5860643
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.8660090   0.8526508   0.8793673
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8585209   0.8391749   0.8778669
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8501326   0.8247349   0.8755303
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.5571635   0.5356335   0.5786936
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.5238624   0.4909921   0.5567327
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.5297114   0.4887557   0.5706671
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.4895105   0.4028976   0.5761234
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.4021739   0.3028167   0.5015311
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4206897   0.3369595   0.5044198
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.2369727   0.2070392   0.2669063
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.2408638   0.2065425   0.2751851
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.2274436   0.1925299   0.2623573
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.6091644   0.5722634   0.6460654
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5952381   0.5474493   0.6430269
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6144330   0.5694107   0.6594552
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.4200053   0.4071730   0.4328376
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.4171123   0.3892010   0.4450236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4511692   0.4143713   0.4879671
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.6916667   0.6069433   0.7763901
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6349206   0.5146407   0.7552006
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7000000   0.5002215   0.8997785
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                0.6506849   0.5710765   0.7302933
0-6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.6266667   0.5125993   0.7407341
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5789474   0.3725273   0.7853674
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.5544554   0.4852469   0.6236640
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.4468085   0.3449351   0.5486820
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4666667   0.3216504   0.6116830
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.7310924   0.6518434   0.8103415
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.7166667   0.6018745   0.8314588
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6590909   0.5180822   0.8000996
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.8041237   0.7236124   0.8846350
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.7500000   0.6371681   0.8628319
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.8000000   0.6722327   0.9277673
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.7559055   0.6807327   0.8310783
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.7049180   0.6222996   0.7875365
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.6222222   0.5204880   0.7239564
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.6344828   0.5536351   0.7153305
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.7333333   0.6345999   0.8320668
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5979381   0.5298856   0.6659907
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5833333   0.4844163   0.6822503
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.6153846   0.4821036   0.7486656
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5312500   0.3559148   0.7065852
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.8929336   0.8802892   0.9055780
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8836820   0.8653787   0.9019853
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8649386   0.8400437   0.8898335
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.7367725   0.7146114   0.7589335
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.7558528   0.7214553   0.7902504
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7556675   0.7132393   0.7980957
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.7362637   0.6450868   0.8274407
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7954545   0.6804593   0.9104498
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7341772   0.6360731   0.8322813
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.3511029   0.3109771   0.3912288
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.3689567   0.3212325   0.4166810
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.3569322   0.3059122   0.4079521
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.7470238   0.7006760   0.7933716
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.7033493   0.6405388   0.7661598
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7536232   0.6949446   0.8123018
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.6828423   0.6673433   0.6983412
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.6516710   0.6181747   0.6851672
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.6599598   0.6182898   0.7016297
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.4642857   0.2608610   0.6677105
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.6666667   0.4382106   0.8951228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3125000   0.1323165   0.4926835
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.5492958   0.4257115   0.6728800
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.5882353   0.4182495   0.7582211
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5555556   0.3104388   0.8006723
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                0.4285714   0.1009948   0.7561480
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              NA                0.3064516   0.1935002   0.4194030
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 NA                0.3116883   0.2024431   0.4209335
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.2934783   0.2384402   0.3485163
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.2391304   0.1662102   0.3120507
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3559322   0.2293804   0.4824840
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.2530120   0.1584262   0.3475979
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3666667   0.2422593   0.4910741
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3018868   0.1714581   0.4323155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.3000000   0.1897922   0.4102078
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2580645   0.1079476   0.4081815
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2272727   0.0303695   0.4241760
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.5769231   0.4909448   0.6629013
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.5267176   0.4358508   0.6175843
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5727273   0.4775076   0.6679470
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.5307263   0.4758901   0.5855624
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.5416667   0.4769529   0.6063804
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4686192   0.4210005   0.5162380
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.0388350   0.0155498   0.0621201
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0632184   0.0298098   0.0966270
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0369128   0.0162555   0.0575700
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5000000   0.4255806   0.5744194
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5042735   0.4062168   0.6023303
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4531250   0.3140916   0.5921584
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.2244898   0.1425563   0.3064233
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2448980   0.1234074   0.3663885
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.3333333   0.1298967   0.5367700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0730838   0.0523879   0.0937796
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0660066   0.0377028   0.0943104
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0625000   0.0264905   0.0985095
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.4950739   0.4436493   0.5464985
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5059289   0.4408462   0.5710115
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.5107914   0.4487580   0.5728247


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               0.8006521   0.6410758   0.9999502
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.0001993   0.7613304   1.3140137
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.0131173   0.8109675   1.2656569
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.8676976   0.6681910   1.1267724
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.9552148   0.7601159   1.2003897
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.9766082   0.7505968   1.2706737
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.0433862   0.8608007   1.2647002
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.9841270   0.7669459   1.2628087
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.9207637   0.8008082   1.0586877
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8942398   0.7689893   1.0398907
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.0418000   0.9121955   1.1898188
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               0.9024612   0.8033332   1.0138211
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               1.6278736   0.7320505   3.6199312
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               0.9505034   0.4185678   2.1584474
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0216963   0.8435716   1.2374328
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9091880   0.7063870   1.1702124
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9913533   0.9646476   1.0187983
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9816671   0.9492095   1.0152346
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9402309   0.8734289   1.0121421
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9507287   0.8719954   1.0365710
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.8215839   0.6062759   1.1133545
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.8594089   0.6584542   1.1216933
0-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0164200   0.8401858   1.2296203
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               0.9597882   0.7867570   1.1708741
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9771386   0.8836263   1.0805472
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0086488   0.9171611   1.1092626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9931119   0.9226802   1.0689200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.0741987   0.9845991   1.1719520
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9179575   0.7325632   1.1502708
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               1.0120482   0.7418611   1.3806379
0-6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          [25-30)              <25               0.9630877   0.7734194   1.1992691
0-6 months    ki1000108-IRC              INDIA                          >=30                 <25               0.8897507   0.6103093   1.2971394
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               0.8058511   0.6213892   1.0450712
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               0.8416667   0.6021412   1.1764729
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               0.9802682   0.8078847   1.1894342
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.9015152   0.7092718   1.1458648
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.9326923   0.7784940   1.1174330
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.9948718   0.8239547   1.2012431
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.9325478   0.7996792   1.0874929
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8231481   0.6797751   0.9967604
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.1557971   0.9602357   1.3911865
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               0.9424025   0.7944006   1.1179781
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0549451   0.8012537   1.3889597
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9107143   0.6283974   1.3198662
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9896391   0.9651175   1.0147837
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9686483   0.9380699   1.0002234
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.0258972   0.9714333   1.0834147
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0256457   0.9623534   1.0931005
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0803935   0.8931245   1.3069287
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.9971661   0.8310856   1.1964353
0-6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0508506   0.8842597   1.2488267
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.0166026   0.8465851   1.2207642
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9415353   0.8445235   1.0496910
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0088342   0.9132341   1.1144421
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9543506   0.9022053   1.0095098
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.9664893   0.9037694   1.0335618
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
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               0.8148148   0.5696209   1.1655527
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.2128060   0.8113600   1.8128801
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.4492063   0.8743137   2.4021115
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.1931716   0.6738557   2.1127053
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.8602151   0.4322396   1.7119437
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.7575758   0.2956792   1.9410259
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.9129771   0.7268619   1.1467476
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9927273   0.7940748   1.2410764
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.0206140   0.8714665   1.1952875
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               0.8829773   0.7638361   1.0207019
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               1.6278736   0.7320505   3.6199312
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               0.9505034   0.4185678   2.1584474
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0085470   0.7893895   1.2885490
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9062500   0.6442603   1.2747784
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               1.0909091   0.5892706   2.0195861
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               1.4848485   0.7292028   3.0235417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9031635   0.5402487   1.5098681
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8551829   0.4500465   1.6250273
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0219259   0.8661916   1.2056601
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0317477   0.8793646   1.2105370


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0295699   -0.1264369   0.0672971
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0068416   -0.0535092   0.0398259
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0062050   -0.0453261   0.0329160
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.1501687   -0.3899544   0.0896169
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0229303   -0.0521306   0.0062699
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0143671   -0.0669652   0.0382311
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0097525   -0.0615771   0.0420722
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0061472   -0.0430259   0.0553202
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0386091   -0.0882912   0.0110731
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0190246   -0.0579810   0.0199319
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0046990   -0.0130741   0.0224720
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0047454   -0.0472226   0.0377318
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0048039   -0.0139943   0.0043865
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0129592   -0.0269571   0.0010387
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0474052   -0.1146365   0.0198260
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0014057   -0.0240176   0.0212062
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0022965   -0.0299762   0.0253833
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0025280   -0.0040644   0.0091204
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0167898   -0.0716035   0.0380238
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0131849   -0.0634034   0.0370335
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0412590   -0.0858363   0.0033184
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0180880   -0.0738241   0.0376482
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0160802   -0.0714407   0.0392802
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0538406   -0.1159931   0.0083118
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0007829   -0.0634137   0.0649796
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0000000   -0.0678151   0.0678151
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0074070   -0.0162078   0.0013938
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0075434   -0.0062394   0.0213263
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0113998   -0.0566440   0.0794436
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0070475   -0.0234455   0.0375406
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0103217   -0.0453261   0.0246827
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0075204   -0.0157002   0.0006595
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0195853   -0.1240751   0.1632456
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0116798   -0.0672951   0.0906548
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.1135029   -0.4353496   0.2083437
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0080660   -0.0432702   0.0271382
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0480084   -0.0271618   0.1231785
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0235772   -0.0940373   0.0468828
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0189716   -0.0893517   0.0514085
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0243626   -0.0695929   0.0208677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0046990   -0.0130741   0.0224720
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0065617   -0.0586953   0.0455719
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0195578   -0.0360751   0.0751908
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0039550   -0.0182042   0.0102942
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0075942   -0.0310938   0.0462822


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0464135   -0.2106833   0.0955676
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0108270   -0.0874082   0.0603609
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0105192   -0.0791114   0.0537130
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.3564753   -1.0741317   0.1128696
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0602106   -0.1397004   0.0137352
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0276138   -0.1338583   0.0686754
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0167263   -0.1095488   0.0683308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0098545   -0.0722588   0.0856795
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0616010   -0.1441153   0.0149623
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0351258   -0.1096085   0.0343571
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.1079383   -0.4147928   0.4375332
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0090859   -0.0937775   0.0690480
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0055781   -0.0163096   0.0050400
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0238131   -0.0498783   0.0016049
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.1072261   -0.2701803   0.0348224
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0059673   -0.1066713   0.0855729
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0037841   -0.0504479   0.0408067
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0059830   -0.0097403   0.0214615
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0248783   -0.1094924   0.0532827
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0206822   -0.1026291   0.0551744
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0803960   -0.1714029   0.0035404
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0253686   -0.1067499   0.0500285
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0204053   -0.0931479   0.0474967
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0766889   -0.1697568   0.0089743
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0012325   -0.1051158   0.0973465
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0000000   -0.1232818   0.1097514
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0083645   -0.0183581   0.0015310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0101347   -0.0085635   0.0284863
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0152473   -0.0801565   0.1022246
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0196776   -0.0692706   0.1012265
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0140107   -0.0626815   0.0324311
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0111360   -0.0233279   0.0009108
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0404762   -0.3093300   0.2968267
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0208206   -0.1307532   0.1520764
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                -0.3602484   -1.8983868   0.3616187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0282609   -0.1593171   0.0879800
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.1594854   -0.1297705   0.3746829
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0852941   -0.3726163   0.1418845
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0340022   -0.1683518   0.0848984
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0481129   -0.1414431   0.0375862
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.1079383   -0.4147928   0.4375332
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0132979   -0.1247131   0.0870804
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0801394   -0.1775656   0.2814468
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0572119   -0.2854226   0.1304828
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0151078   -0.0649533   0.0891500
