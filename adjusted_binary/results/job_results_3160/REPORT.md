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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25               0      115     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25               1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)           0       90     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)           1        2     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30              0       43     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30              1        2     257
Birth       ki0047075b-MAL-ED          BRAZIL                         <25               0       95     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <25               1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)           0       49     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)           1        5     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30              0       39     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30              1        1     191
Birth       ki0047075b-MAL-ED          INDIA                          <25               0      118     205
Birth       ki0047075b-MAL-ED          INDIA                          <25               1        4     205
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)           0       65     205
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)           1        3     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30              0       15     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30              1        0     205
Birth       ki0047075b-MAL-ED          NEPAL                          <25               0       44     173
Birth       ki0047075b-MAL-ED          NEPAL                          <25               1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)           0       88     173
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)           1        3     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30              0       35     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30              1        1     173
Birth       ki0047075b-MAL-ED          PERU                           <25               0      156     287
Birth       ki0047075b-MAL-ED          PERU                           <25               1        5     287
Birth       ki0047075b-MAL-ED          PERU                           [25-30)           0       59     287
Birth       ki0047075b-MAL-ED          PERU                           [25-30)           1        2     287
Birth       ki0047075b-MAL-ED          PERU                           >=30              0       64     287
Birth       ki0047075b-MAL-ED          PERU                           >=30              1        1     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25               0      122     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25               1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)           0       52     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)           1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       86     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1        0     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25               0       45     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25               1        4     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)           0       33     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)           1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0       39     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1        1     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <25               0       50      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <25               1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)           0       33      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)           1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0        4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1        0      90
Birth       ki1000108-IRC              INDIA                          <25               0      232     388
Birth       ki1000108-IRC              INDIA                          <25               1       13     388
Birth       ki1000108-IRC              INDIA                          [25-30)           0      112     388
Birth       ki1000108-IRC              INDIA                          [25-30)           1        3     388
Birth       ki1000108-IRC              INDIA                          >=30              0       28     388
Birth       ki1000108-IRC              INDIA                          >=30              1        0     388
Birth       ki1000109-EE               PAKISTAN                       <25               0        0       4
Birth       ki1000109-EE               PAKISTAN                       <25               1        0       4
Birth       ki1000109-EE               PAKISTAN                       [25-30)           0        2       4
Birth       ki1000109-EE               PAKISTAN                       [25-30)           1        0       4
Birth       ki1000109-EE               PAKISTAN                       >=30              0        2       4
Birth       ki1000109-EE               PAKISTAN                       >=30              1        0       4
Birth       ki1000304b-SAS-CompFeed    INDIA                          <25               0      107     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <25               1        6     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)           0       46     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)           1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30              0       23     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30              1        2     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     <25               0       16      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <25               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)           0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)           1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30              0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30              1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <25               0       15      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <25               1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)           0        9      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)           1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30              0        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30              1        0      27
Birth       ki1101329-Keneba           GAMBIA                         <25               0      589    1541
Birth       ki1101329-Keneba           GAMBIA                         <25               1       14    1541
Birth       ki1101329-Keneba           GAMBIA                         [25-30)           0      336    1541
Birth       ki1101329-Keneba           GAMBIA                         [25-30)           1        4    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30              0      587    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30              1       11    1541
Birth       ki1119695-PROBIT           BELARUS                        <25               0     7453   13884
Birth       ki1119695-PROBIT           BELARUS                        <25               1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        [25-30)           0     3886   13884
Birth       ki1119695-PROBIT           BELARUS                        [25-30)           1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30              0     2540   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30              1        1   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25               0     7768   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25               1      256   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)           0     3338   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)           1      104   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0     2245   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       79   13790
Birth       ki1135781-COHORTS          GUATEMALA                      <25               0      337     852
Birth       ki1135781-COHORTS          GUATEMALA                      <25               1        5     852
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)           0      183     852
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)           1        1     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30              0      321     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30              1        5     852
Birth       ki1135781-COHORTS          INDIA                          <25               0     1923    4715
Birth       ki1135781-COHORTS          INDIA                          <25               1       67    4715
Birth       ki1135781-COHORTS          INDIA                          [25-30)           0     1516    4715
Birth       ki1135781-COHORTS          INDIA                          [25-30)           1       42    4715
Birth       ki1135781-COHORTS          INDIA                          >=30              0     1138    4715
Birth       ki1135781-COHORTS          INDIA                          >=30              1       29    4715
Birth       ki1135781-COHORTS          PHILIPPINES                    <25               0     1324    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <25               1       20    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)           0      846    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)           1        9    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30              0      834    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30              1       17    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25               0    25614   39206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25               1     3122   39206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           0     6176   39206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           1      578   39206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30              0     3336   39206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30              1      380   39206
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25               0      107     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25               1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)           0       85     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)           1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30              0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30              1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         <25               0      100     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <25               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)           0       62     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)           1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30              0       47     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30              1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          <25               0      133     234
6 months    ki0047075b-MAL-ED          INDIA                          <25               1        4     234
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)           0       71     234
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)           1        5     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30              0       21     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30              1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          <25               0       62     236
6 months    ki0047075b-MAL-ED          NEPAL                          <25               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)           0      127     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)           1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30              0       46     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30              1        0     236
6 months    ki0047075b-MAL-ED          PERU                           <25               0      146     273
6 months    ki0047075b-MAL-ED          PERU                           <25               1        7     273
6 months    ki0047075b-MAL-ED          PERU                           [25-30)           0       57     273
6 months    ki0047075b-MAL-ED          PERU                           [25-30)           1        2     273
6 months    ki0047075b-MAL-ED          PERU                           >=30              0       58     273
6 months    ki0047075b-MAL-ED          PERU                           >=30              1        3     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25               0      116     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25               1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)           0       40     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)           1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       92     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1        2     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25               0       74     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25               1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)           0       59     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)           1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0      100     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1        4     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25               0      194     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25               1       24     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)           0       97     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)           1       11     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0       36     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1        7     369
6 months    ki1000108-IRC              INDIA                          <25               0      232     407
6 months    ki1000108-IRC              INDIA                          <25               1       23     407
6 months    ki1000108-IRC              INDIA                          [25-30)           0      119     407
6 months    ki1000108-IRC              INDIA                          [25-30)           1        4     407
6 months    ki1000108-IRC              INDIA                          >=30              0       27     407
6 months    ki1000108-IRC              INDIA                          >=30              1        2     407
6 months    ki1000109-EE               PAKISTAN                       <25               0       30     740
6 months    ki1000109-EE               PAKISTAN                       <25               1       10     740
6 months    ki1000109-EE               PAKISTAN                       [25-30)           0      222     740
6 months    ki1000109-EE               PAKISTAN                       [25-30)           1       58     740
6 months    ki1000109-EE               PAKISTAN                       >=30              0      302     740
6 months    ki1000109-EE               PAKISTAN                       >=30              1      118     740
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25               0      767    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25               1       63    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)           0      313    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)           1       45    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30              0      128    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30              1       20    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25               0      152     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25               1       15     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)           0      107     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)           1       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30              0       67     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30              1       16     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25               0      243     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25               1       13     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)           0      150     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)           1       12     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30              0      107     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30              1       10     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25               0      286     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25               1        6     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)           0      177     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)           1        5     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30              0      106     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30              1        3     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25               0      362     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25               1       12     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)           0      214     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)           1        5     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30              0      116     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30              1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25               0      767    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25               1        3    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)           0      685    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)           1        9    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              0      542    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              1        6    2012
6 months    ki1101329-Keneba           GAMBIA                         <25               0      792    2080
6 months    ki1101329-Keneba           GAMBIA                         <25               1       20    2080
6 months    ki1101329-Keneba           GAMBIA                         [25-30)           0      452    2080
6 months    ki1101329-Keneba           GAMBIA                         [25-30)           1       11    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30              0      766    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30              1       39    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25               0      140     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25               1       14     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)           0       59     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)           1        4     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30              0       52     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30              1        7     276
6 months    ki1113344-GMS-Nepal        NEPAL                          <25               0      590    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          <25               1       24    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)           0      338    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)           1        4    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30              0      158    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30              1       12    1126
6 months    ki1119695-PROBIT           BELARUS                        <25               0     8386   15761
6 months    ki1119695-PROBIT           BELARUS                        <25               1      145   15761
6 months    ki1119695-PROBIT           BELARUS                        [25-30)           0     4356   15761
6 months    ki1119695-PROBIT           BELARUS                        [25-30)           1       49   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30              0     2776   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30              1       49   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25               0     4437    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25               1      188    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)           0     2023    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)           1       94    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0     1475    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       63    8280
6 months    ki1135781-COHORTS          GUATEMALA                      <25               0      344     961
6 months    ki1135781-COHORTS          GUATEMALA                      <25               1       36     961
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)           0      177     961
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)           1       31     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30              0      316     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30              1       57     961
6 months    ki1135781-COHORTS          INDIA                          <25               0     1975    4904
6 months    ki1135781-COHORTS          INDIA                          <25               1      104    4904
6 months    ki1135781-COHORTS          INDIA                          [25-30)           0     1551    4904
6 months    ki1135781-COHORTS          INDIA                          [25-30)           1       72    4904
6 months    ki1135781-COHORTS          INDIA                          >=30              0     1139    4904
6 months    ki1135781-COHORTS          INDIA                          >=30              1       63    4904
6 months    ki1135781-COHORTS          PHILIPPINES                    <25               0     1119    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <25               1       55    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)           0      736    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)           1       22    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30              0      721    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30              1       55    2708
6 months    ki1148112-LCNI-5           MALAWI                         <25               0      280     669
6 months    ki1148112-LCNI-5           MALAWI                         <25               1       20     669
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)           0      156     669
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)           1       15     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30              0      180     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30              1       18     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25               0    24296   33565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25               1     1637   33565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           0     4932   33565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           1      260   33565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30              0     2300   33565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30              1      140   33565
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25               0       81     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25               1       12     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)           0       77     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)           1        5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30              0       28     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30              1        9     212
24 months   ki0047075b-MAL-ED          BRAZIL                         <25               0       77     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <25               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)           0       51     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)           1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30              0       40     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30              1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          <25               0      117     225
24 months   ki0047075b-MAL-ED          INDIA                          <25               1       15     225
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)           0       60     225
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)           1       13     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30              0       20     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30              1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          <25               0       55     228
24 months   ki0047075b-MAL-ED          NEPAL                          <25               1        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)           0      121     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)           1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30              0       45     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30              1        0     228
24 months   ki0047075b-MAL-ED          PERU                           <25               0       93     201
24 months   ki0047075b-MAL-ED          PERU                           <25               1       12     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)           0       45     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)           1        3     201
24 months   ki0047075b-MAL-ED          PERU                           >=30              0       48     201
24 months   ki0047075b-MAL-ED          PERU                           >=30              1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25               0       95     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25               1       13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)           0       35     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)           1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       82     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1       11     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25               0       38     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25               1       24     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)           0       40     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)           1       20     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0       67     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1       25     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25               0      145     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25               1       76     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)           0       75     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)           1       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0       29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1       13     372
24 months   ki1000108-IRC              INDIA                          <25               0      227     409
24 months   ki1000108-IRC              INDIA                          <25               1       30     409
24 months   ki1000108-IRC              INDIA                          [25-30)           0      115     409
24 months   ki1000108-IRC              INDIA                          [25-30)           1        8     409
24 months   ki1000108-IRC              INDIA                          >=30              0       26     409
24 months   ki1000108-IRC              INDIA                          >=30              1        3     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25               0      166     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25               1       39     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)           0       95     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)           1       33     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30              0       73     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30              1       21     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25               0      272     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25               1       21     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)           0      160     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)           1       19     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30              0       96     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30              1        9     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25               0      252     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25               1       25     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)           0      151     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)           1        7     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30              0       76     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30              1        3     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)           0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)           1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              1        0       6
24 months   ki1101329-Keneba           GAMBIA                         <25               0      579    1714
24 months   ki1101329-Keneba           GAMBIA                         <25               1       44    1714
24 months   ki1101329-Keneba           GAMBIA                         [25-30)           0      358    1714
24 months   ki1101329-Keneba           GAMBIA                         [25-30)           1       26    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30              0      640    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30              1       67    1714
24 months   ki1113344-GMS-Nepal        NEPAL                          <25               0      486     998
24 months   ki1113344-GMS-Nepal        NEPAL                          <25               1       58     998
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)           0      266     998
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)           1       32     998
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30              0      138     998
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30              1       18     998
24 months   ki1119695-PROBIT           BELARUS                        <25               0     2115    4035
24 months   ki1119695-PROBIT           BELARUS                        <25               1       38    4035
24 months   ki1119695-PROBIT           BELARUS                        [25-30)           0     1090    4035
24 months   ki1119695-PROBIT           BELARUS                        [25-30)           1       19    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30              0      765    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30              1        8    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25               0      169     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25               1       72     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)           0       92     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)           1       37     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0       64     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       22     456
24 months   ki1135781-COHORTS          GUATEMALA                      <25               0      259    1067
24 months   ki1135781-COHORTS          GUATEMALA                      <25               1      181    1067
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)           0      128    1067
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)           1      113    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30              0      222    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30              1      164    1067
24 months   ki1135781-COHORTS          INDIA                          <25               0     1168    3695
24 months   ki1135781-COHORTS          INDIA                          <25               1      317    3695
24 months   ki1135781-COHORTS          INDIA                          [25-30)           0     1006    3695
24 months   ki1135781-COHORTS          INDIA                          [25-30)           1      222    3695
24 months   ki1135781-COHORTS          INDIA                          >=30              0      752    3695
24 months   ki1135781-COHORTS          INDIA                          >=30              1      230    3695
24 months   ki1135781-COHORTS          PHILIPPINES                    <25               0      767    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <25               1      291    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)           0      509    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)           1      185    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30              0      480    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30              1      213    2445
24 months   ki1148112-LCNI-5           MALAWI                         <25               0      187     475
24 months   ki1148112-LCNI-5           MALAWI                         <25               1       21     475
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)           0      105     475
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)           1       17     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30              0      126     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30              1       19     475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25               0    10959   17216
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25               1     2056   17216
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           0     2374   17216
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           1      401   17216
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30              0     1201   17216
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30              1      225   17216


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/b653d44c-4f02-4b18-a6d9-08f32bef634a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b653d44c-4f02-4b18-a6d9-08f32bef634a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b653d44c-4f02-4b18-a6d9-08f32bef634a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b653d44c-4f02-4b18-a6d9-08f32bef634a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0312129    0.0274266   0.0349992
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0295956    0.0239693   0.0352219
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0318128    0.0248496   0.0387760
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                0.0337760    0.0260083   0.0415436
Birth       ki1135781-COHORTS          INDIA                          [25-30)              NA                0.0274880    0.0194896   0.0354864
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.0260523    0.0170636   0.0350409
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0148810    0.0084069   0.0213551
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0105263    0.0036844   0.0173682
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0199765    0.0105742   0.0293788
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.1069808    0.1014590   0.1125026
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0839988    0.0738598   0.0941379
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1037390    0.0898449   0.1176332
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.1100917    0.0684854   0.1516980
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.1018519    0.0447324   0.1589713
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1627907    0.0522977   0.2732837
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                0.2538143    0.0734019   0.4342266
6 months    ki1000109-EE               PAKISTAN                       [25-30)              NA                0.2057835    0.1388845   0.2726825
6 months    ki1000109-EE               PAKISTAN                       >=30                 NA                0.2814074    0.2205637   0.3422511
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.0761743    0.0633469   0.0890017
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.1144949    0.0862019   0.1427879
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1222425    0.0724476   0.1720374
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.0880420    0.0467040   0.1293799
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.1899631    0.1285425   0.2513838
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.1990319    0.1228816   0.2751822
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0543902    0.0282073   0.0805732
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.0716291    0.0331134   0.1101448
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.0839936    0.0376577   0.1303294
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.0320856    0.0142129   0.0499582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.0228311    0.0030350   0.0426271
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0491803    0.0107816   0.0875791
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.0236459    0.0129165   0.0343752
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0271759    0.0124732   0.0418785
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0498758    0.0352005   0.0645511
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.0166771    0.0108078   0.0225465
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0109295    0.0063715   0.0154874
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0168016    0.0083999   0.0252033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0401207    0.0344774   0.0457640
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0444347    0.0357530   0.0531163
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0408480    0.0311531   0.0505429
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0992871    0.0705798   0.1279943
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.1425220    0.0984290   0.1866149
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1520871    0.1176180   0.1865562
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.0458578    0.0371556   0.0545600
6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.0449437    0.0350790   0.0548084
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0554784    0.0428828   0.0680741
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0438838    0.0323001   0.0554675
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0301244    0.0183326   0.0419162
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0727254    0.0548501   0.0906006
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                0.0669459    0.0391221   0.0947696
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.0886177    0.0464379   0.1307975
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0894841    0.0499547   0.1290136
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.0620895    0.0577385   0.0664405
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0527475    0.0442889   0.0612060
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0627144    0.0501119   0.0753170
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.1290323    0.0607381   0.1973264
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.0609756    0.0090616   0.1128896
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2432432    0.1046722   0.3818143
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.3903435    0.2765619   0.5041251
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.3284026    0.2127431   0.4440621
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2738812    0.1833713   0.3643910
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.3438932    0.2811836   0.4066029
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.3119284    0.2248402   0.3990166
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3095100    0.1695170   0.4495031
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.1933170    0.1399110   0.2467229
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2503709    0.1775124   0.3232295
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2258880    0.1472433   0.3045326
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.0716724    0.0421115   0.1012332
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1061453    0.0609823   0.1513082
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.0857143    0.0321226   0.1393060
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.0696007    0.0498583   0.0893432
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0661831    0.0420700   0.0902962
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0925479    0.0714734   0.1136223
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.1047571    0.0681402   0.1413740
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1050434    0.0550295   0.1550573
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.0926231    0.0286736   0.1565726
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0176498   -0.0020351   0.0373347
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0171326    0.0011121   0.0331530
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0103493    0.0006900   0.0200086
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.2993412    0.2422856   0.3563967
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2872163    0.2112499   0.3631828
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2557206    0.1668762   0.3445650
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.4084416    0.3653555   0.4515278
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.4462466    0.3898431   0.5026502
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4175391    0.3739278   0.4611505
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.2020129    0.1825678   0.2214580
24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1887408    0.1679040   0.2095775
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.2408692    0.2161434   0.2655949
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2658546    0.2400867   0.2916225
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2733147    0.2417601   0.3048693
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.3101489    0.2775069   0.3427910
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.1027414    0.0627489   0.1427340
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.1366374    0.0760776   0.1971972
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.1298923    0.0762342   0.1835504
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.1566812    0.1468541   0.1665083
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.1503438    0.1325948   0.1680927
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1641569    0.1405506   0.1877632


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0318347   0.0289044   0.0347649
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0292683   0.0244566   0.0340800
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1040657   0.0994001   0.1087313
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2513514   0.2070910   0.2956117
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0654206   0.0444484   0.0863927
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0336538   0.0259020   0.0414057
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0416667   0.0373623   0.0459711
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0487357   0.0427089   0.0547626
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0792227   0.0587412   0.0997042
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606882   0.0568343   0.0645421
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1226415   0.0783812   0.1669018
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3224299   0.2596598   0.3852000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2177986   0.1786036   0.2569935
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0799300   0.0670879   0.0927720
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2872807   0.2457035   0.3288579
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4292409   0.3995279   0.4589539
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2081191   0.1950277   0.2212105
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1200000   0.0907456   0.1492544
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1557853   0.1470213   0.1645493


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9481847   0.7569722   1.1876979
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0192196   0.7936702   1.3088669
Birth       ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8138338   0.5617065   1.1791309
Birth       ki1135781-COHORTS          INDIA                          >=30                 <25               0.7713252   0.5095797   1.1675164
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.7073684   0.3235671   1.5464184
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.3424207   0.7071835   2.5482683
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.7851765   0.6895146   0.8941104
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.9696975   0.8396727   1.1198569
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9251543   0.4704531   1.8193321
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               1.4786822   0.6799654   3.2156060
6 months    ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       [25-30)              <25               0.8107642   0.3713466   1.7701487
6 months    ki1000109-EE               PAKISTAN                       >=30                 <25               1.1087139   0.5277021   2.3294329
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.5030651   1.1515263   1.9619220
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.6047738   1.1866961   2.1701419
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               2.1576431   1.2226891   3.8075285
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               2.2606485   1.2435156   4.1097448
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.3169482   0.6475010   2.6785326
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.5442776   0.7553318   3.1572789
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.7115677   0.2538884   1.9942961
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               1.5327869   0.5874156   3.9996142
6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.1492871   0.5684579   2.3235860
6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               2.1092815   1.2294822   3.6186523
6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.6553555   0.4585605   0.9366066
6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               1.0074605   0.7254096   1.3991772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.1075243   0.8710112   1.4082598
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0181276   0.7731345   1.3407548
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.4354532   0.9434147   2.1841145
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.5317916   1.0639519   2.2053492
6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9800672   0.7339261   1.3087581
6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.2097926   0.9007489   1.6248681
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.6864578   0.4288264   1.0988696
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.6572261   1.1575554   2.3725846
6 months    ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.3237213   0.7065092   2.4801346
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.3366642   0.7325141   2.4390946
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.8495388   0.7152829   1.0089941
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.0100650   0.8187183   1.2461323
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.4725610   0.1734119   1.2877658
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.8851351   0.8662273   4.1025427
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.8413168   0.5370757   1.3179036
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.7016414   0.4552302   1.0814324
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9070501   0.6498428   1.2660598
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.9000178   0.5526564   1.4657063
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.2951316   0.8720587   1.9234553
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.1684848   0.7547921   1.8089176
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.4809790   0.8188354   2.6785588
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1959184   0.5654655   2.5292804
24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9508965   0.5995386   1.5081668
24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.3296965   0.9247476   1.9119733
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0027332   0.5558319   1.8089530
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.8841701   0.4073742   1.9190139
24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9706943   0.2834659   3.3240243
24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.5863689   0.1334592   2.5762819
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9594949   0.6946527   1.3253104
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8542781   0.5766760   1.2655131
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0925591   0.9283952   1.2857515
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.0222737   0.8838278   1.1824062
24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9343006   0.8086915   1.0794199
24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.1923454   1.0378082   1.3698944
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0280607   0.8861279   1.1927270
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.1666109   1.0135456   1.3427921
24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.3299157   0.7419387   2.3838569
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.2642640   0.7223214   2.2128150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9595520   0.8433453   1.0917712
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.0477130   0.8999642   1.2197181


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0006218   -0.0018249    0.0030684
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.0045077   -0.0101258    0.0011104
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0002010   -0.0046662    0.0050683
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0029151   -0.0056192   -0.0002110
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0037294   -0.0234478    0.0309065
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                -0.0024629   -0.1778008    0.1728749
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0196341    0.0091592    0.0301090
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0540633    0.0173290    0.0907976
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0110303   -0.0094852    0.0315459
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0000823   -0.0122773    0.0124418
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0100080    0.0004863    0.0195296
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0012593   -0.0032138    0.0006951
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0015460   -0.0022472    0.0053391
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0297452    0.0054388    0.0540516
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0028779   -0.0036616    0.0094175
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0048607   -0.0039751    0.0136964
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0122768   -0.0096816    0.0342353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0014013   -0.0033114    0.0005088
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0063907   -0.0566996    0.0439181
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0679136   -0.1614099    0.0255827
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0132481   -0.0526381    0.0261419
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0244816   -0.0144546    0.0634178
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0132497   -0.0092144    0.0357137
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0103292   -0.0061230    0.0267815
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0034594   -0.0214912    0.0284099
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0015407   -0.0108550    0.0077735
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0120605   -0.0501044    0.0259835
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0207992   -0.0117822    0.0533807
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0061062   -0.0086004    0.0208127
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0159449   -0.0032851    0.0351750
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0172586   -0.0142671    0.0487843
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0008959   -0.0052510    0.0034593


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0195310   -0.0604067    0.0934426
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.1540124   -0.3617135    0.0220082
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0133282   -0.3683948    0.2885669
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0280123   -0.0542873   -0.0023922
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0327654   -0.2378833    0.2442399
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                -0.0097987   -1.0149245    0.4939297
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.2049310    0.1152311    0.2855368
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.3804454    0.0825271    0.5816249
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.1686067   -0.2030123    0.4254300
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0025575   -0.4661566    0.3214289
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.2973799   -0.0385550    0.5246521
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0816809   -0.2173023    0.0388307
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0371031   -0.0583260    0.1239274
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.2305252    0.0224271    0.3943249
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0590517   -0.0850414    0.1840092
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0997174   -0.1006435    0.2636047
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1549663   -0.1691924    0.3892519
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0230900   -0.0550444    0.0078965
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0521092   -0.5533306    0.2873805
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.2106307   -0.5407823    0.0487776
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0400674   -0.1662932    0.0724973
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.1124048   -0.0854200    0.2741747
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.1560215   -0.1508232    0.3810519
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1292286   -0.1014386    0.3115886
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0319670   -0.2283502    0.2371167
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0956447   -0.7889173    0.3289587
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0419815   -0.1831780    0.0823650
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0484558   -0.0304738    0.1213398
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0293398   -0.0439366    0.0974727
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0565826   -0.0141528    0.1223843
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1438215   -0.1603613    0.3682644
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0057507   -0.0340973    0.0218189
