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

unadjusted

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
Birth       ki1000109-EE               PAKISTAN                       <25               0        0       2
Birth       ki1000109-EE               PAKISTAN                       <25               1        0       2
Birth       ki1000109-EE               PAKISTAN                       [25-30)           0        1       2
Birth       ki1000109-EE               PAKISTAN                       [25-30)           1        0       2
Birth       ki1000109-EE               PAKISTAN                       >=30              0        1       2
Birth       ki1000109-EE               PAKISTAN                       >=30              1        0       2
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25               0    12807   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25               1     1561   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           0     3088   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           1      289   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30              0     1668   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30              1      190   19603
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
6 months    ki1000109-EE               PAKISTAN                       <25               0       15     370
6 months    ki1000109-EE               PAKISTAN                       <25               1        5     370
6 months    ki1000109-EE               PAKISTAN                       [25-30)           0      111     370
6 months    ki1000109-EE               PAKISTAN                       [25-30)           1       29     370
6 months    ki1000109-EE               PAKISTAN                       >=30              0      151     370
6 months    ki1000109-EE               PAKISTAN                       >=30              1       59     370
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
6 months    ki1113344-GMS-Nepal        NEPAL                          <25               0      295     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <25               1       12     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)           0      169     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)           1        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30              0       79     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30              1        6     563
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25               0    12166   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25               1      820   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           0     2468   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           1      130   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30              0     1151   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30              1       70   16805
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
24 months   ki1113344-GMS-Nepal        NEPAL                          <25               0      243     499
24 months   ki1113344-GMS-Nepal        NEPAL                          <25               1       29     499
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)           0      133     499
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)           1       16     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30              0       69     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30              1        9     499
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25               0     5490    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25               1     1031    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           0     1191    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)           1      201    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30              0      601    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30              1      113    8627


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
```




# Results Detail

## Results Plots
![](/tmp/58d3e203-7658-412b-908e-ad7bfc5741da/f4121b73-2c2d-422c-b101-f5cc18f0b781/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/58d3e203-7658-412b-908e-ad7bfc5741da/f4121b73-2c2d-422c-b101-f5cc18f0b781/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/58d3e203-7658-412b-908e-ad7bfc5741da/f4121b73-2c2d-422c-b101-f5cc18f0b781/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/58d3e203-7658-412b-908e-ad7bfc5741da/f4121b73-2c2d-422c-b101-f5cc18f0b781/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0319043    0.0280588   0.0357498
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0302150    0.0244962   0.0359338
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0339931    0.0266254   0.0413608
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                0.0336683    0.0257426   0.0415941
Birth       ki1135781-COHORTS          INDIA                          [25-30)              NA                0.0269576    0.0189147   0.0350006
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.0248500    0.0159179   0.0337822
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0148810    0.0084069   0.0213551
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0105263    0.0036844   0.0173682
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0199765    0.0105742   0.0293788
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.1086442    0.1030802   0.1142083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0855789    0.0748848   0.0962730
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1022605    0.0874121   0.1171089
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.1100917    0.0684854   0.1516980
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.1018519    0.0447324   0.1589713
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1627907    0.0522977   0.2732837
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                0.2500000    0.0599703   0.4400297
6 months    ki1000109-EE               PAKISTAN                       [25-30)              NA                0.2071429    0.1399220   0.2743637
6 months    ki1000109-EE               PAKISTAN                       >=30                 NA                0.2809524    0.2200799   0.3418249
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.0759036    0.0632352   0.0885720
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.1256983    0.0987535   0.1526431
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1351351    0.0869951   0.1832751
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.0898204    0.0463980   0.1332427
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.1769231    0.1112389   0.2426073
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.1927711    0.1077943   0.2777479
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0507813    0.0238616   0.0777009
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.0740741    0.0337079   0.1144403
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.0854701    0.0347631   0.1361770
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.0320856    0.0142129   0.0499582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.0228311    0.0030350   0.0426271
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0491803    0.0107816   0.0875791
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.0246305    0.0139671   0.0352940
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0237581    0.0098827   0.0376335
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0484472    0.0336116   0.0632828
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.0169968    0.0110894   0.0229043
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0111237    0.0065321   0.0157153
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0173451    0.0087742   0.0259161
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0406486    0.0349571   0.0463402
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0444025    0.0356273   0.0531776
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0409623    0.0310561   0.0508685
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0947368    0.0652771   0.1241966
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.1490385    0.1006160   0.1974609
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1528150    0.1162815   0.1893486
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.0500241    0.0406525   0.0593956
6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.0443623    0.0343442   0.0543804
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0524126    0.0398127   0.0650126
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0468484    0.0347585   0.0589383
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0290237    0.0170708   0.0409767
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0708763    0.0528177   0.0889349
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                0.0666667    0.0384188   0.0949145
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.0877193    0.0452880   0.1301506
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0909091    0.0508365   0.1309817
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.0631449    0.0587487   0.0675411
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0500385    0.0409934   0.0590836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0573301    0.0438190   0.0708411
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.1290323    0.0607381   0.1973264
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.0609756    0.0090616   0.1128896
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2432432    0.1046722   0.3818143
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.3870968    0.2655691   0.5086244
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.3333333    0.2137741   0.4528926
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2717391    0.1806239   0.3628543
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.3438914    0.2811817   0.4066011
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.3119266    0.2248377   0.3990155
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3095238    0.1695234   0.4495242
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.1902439    0.1364525   0.2440353
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2578125    0.1819441   0.3336809
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2234043    0.1391025   0.3077060
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.0716724    0.0421115   0.1012332
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1061453    0.0609823   0.1513082
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.0857143    0.0321226   0.1393060
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.0706260    0.0505023   0.0907497
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0677083    0.0425718   0.0928449
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0947666    0.0731706   0.1163626
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.1066176    0.0699036   0.1433317
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1073826    0.0576214   0.1571437
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1153846    0.0444125   0.1863567
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0176498   -0.0020351   0.0373347
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0171326    0.0011121   0.0331530
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0103493    0.0006900   0.0200086
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.2987552    0.2409045   0.3566059
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2868217    0.2086886   0.3649548
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2558140    0.1634976   0.3481303
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.4113636    0.3653632   0.4573641
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.4688797    0.4058463   0.5319130
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4248705    0.3755339   0.4742071
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.2134680    0.1926246   0.2343114
24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1807818    0.1592547   0.2023088
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.2342159    0.2077240   0.2607077
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2750473    0.2481348   0.3019597
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2665706    0.2336671   0.2994741
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.3073593    0.2729998   0.3417189
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.1009615    0.0599750   0.1419481
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.1393443    0.0778287   0.2008598
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.1310345    0.0760531   0.1860159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.1581046    0.1481045   0.1681047
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.1443966    0.1249478   0.1638453
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1582633    0.1299527   0.1865739


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
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1290323   0.1078261   0.1502385
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0487357   0.0427089   0.0547626
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0792227   0.0587412   0.0997042
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606962   0.0568440   0.0645485
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1559059   0.1471444   0.1646673


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9470511   0.7566958   1.1852925
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0654717   0.8314506   1.3653607
Birth       ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8006821   0.5475317   1.1708761
Birth       ki1135781-COHORTS          INDIA                          >=30                 <25               0.7380834   0.4802884   1.1342499
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.7073684   0.3235671   1.5464184
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.3424207   0.7071835   2.5482683
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.7876988   0.6887824   0.9008208
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.9412420   0.8062159   1.0988824
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9251543   0.4704531   1.8193321
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               1.4786822   0.6799654   3.2156060
6 months    ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       [25-30)              <25               0.8285714   0.3625674   1.8935255
6 months    ki1000109-EE               PAKISTAN                       >=30                 <25               1.1238095   0.5098337   2.4771759
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.6560255   1.3263229   2.0676870
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.7803518   1.3735037   2.3077131
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.9697436   1.0707512   3.6235212
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               2.1461847   1.1156667   4.1285709
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.4586895   0.6820094   3.1198614
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.6831032   0.7595982   3.7293881
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.7115677   0.2538884   1.9942961
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               1.5327869   0.5874156   3.9996142
6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9645788   0.4662378   1.9955746
6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               1.9669565   1.1574282   3.3426849
6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.6544585   0.4568728   0.9374950
6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               1.0204919   0.7357629   1.4154068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.0923477   0.8573811   1.3917072
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0077159   0.7620375   1.3326002
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.5731837   1.0033760   2.4665797
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.6130473   1.0896795   2.3877860
6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8868193   0.6613109   1.1892265
6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.0477489   0.7724938   1.4210830
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.6195251   0.3810556   1.0072318
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.5128866   1.0527110   2.1742204
6 months    ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.3157895   0.6916900   2.5030027
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.3636364   0.7398783   2.5132568
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.7924388   0.6532836   0.9612355
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.9079123   0.7112118   1.1590145
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.4725610   0.1734119   1.2877658
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.8851351   0.8662273   4.1025427
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.8611111   0.5346198   1.3869901
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.7019928   0.4434502   1.1112722
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9070497   0.6498394   1.2660655
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.9000627   0.5526804   1.4657890
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.3551683   0.9010671   2.0381180
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.1743044   0.7328206   1.8817578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.4809790   0.8188354   2.6785588
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1959184   0.5654655   2.5292804
24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9586884   0.6003896   1.5308119
24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.3418092   0.9316144   1.9326148
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0071743   0.5654186   1.7940689
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.0822281   0.5347795   2.1900948
24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9706943   0.2834659   3.3240243
24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.5863689   0.1334592   2.5762819
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9600560   0.6873001   1.3410553
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8562661   0.5685211   1.2896474
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.1398180   0.9569591   1.3576181
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.0328343   0.8790585   1.2135105
24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8468798   0.7260126   0.9878692
24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.0971943   0.9449081   1.2740237
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9691811   0.8279402   1.1345167
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.1174782   0.9632059   1.2964595
24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.3801717   0.7576462   2.5141999
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.2978653   0.7238902   2.3269473
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9132977   0.7889803   1.0572034
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.0010039   0.8301685   1.2069944


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0000696   -0.0025526    0.0024133
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.0044000   -0.0101398    0.0013397
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0002010   -0.0046662    0.0050683
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0045785   -0.0072777   -0.0018793
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0037294   -0.0234478    0.0309065
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                 0.0013514   -0.1834900    0.1861927
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0199048    0.0098073    0.0300022
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0522849    0.0140238    0.0905460
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0146393   -0.0070629    0.0363415
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0000823   -0.0122773    0.0124418
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0090233   -0.0001973    0.0182439
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0015790   -0.0035397    0.0003816
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0010180   -0.0028203    0.0048564
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0342954    0.0091712    0.0594196
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0012883   -0.0083370    0.0057603
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0018961   -0.0073360    0.0111282
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0125561   -0.0098446    0.0349567
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0024487   -0.0044411   -0.0004563
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0063907   -0.0566996    0.0439181
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0646669   -0.1654207    0.0360870
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0132462   -0.0526369    0.0261444
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0275547   -0.0130833    0.0681926
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0132497   -0.0092144    0.0357137
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0093040   -0.0072940    0.0259019
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0015988   -0.0233585    0.0265561
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0015407   -0.0108550    0.0077735
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0114745   -0.0506898    0.0277408
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0178772   -0.0175306    0.0532851
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0053489   -0.0213685    0.0106707
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0067523   -0.0136332    0.0271379
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0190385   -0.0135879    0.0516648
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0021987   -0.0067828    0.0023854


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0021871   -0.0832974    0.0728502
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.1503350   -0.3624286    0.0287413
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0133282   -0.3683948    0.2885669
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0439963   -0.0701820   -0.0184513
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0327654   -0.2378833    0.2442399
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                 0.0053763   -1.0833442    0.5251499
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.2077560    0.1234546    0.2839498
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.3679308    0.0511262    0.5789625
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.2237723   -0.1794585    0.4891474
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0025575   -0.4661566    0.3214289
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.2681210   -0.0545125    0.4920432
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.1024161   -0.2389502    0.0190717
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0244324   -0.0721425    0.1123083
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.2657895    0.0478511    0.4338437
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0264349   -0.1817119    0.1084387
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0388984   -0.1703287    0.2107206
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1584906   -0.1740057    0.3968188
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0403436   -0.0737061   -0.0080178
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0521092   -0.5533306    0.2873805
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.2005610   -0.5579320    0.0748334
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0400618   -0.1662899    0.0725046
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.1265146   -0.0806121    0.2939401
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.1560215   -0.1508232    0.3810519
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1164017   -0.1167818    0.3008965
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0147740   -0.2450488    0.2203757
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0956447   -0.7889173    0.3289587
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0399417   -0.1857885    0.0879666
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0416485   -0.0445194    0.1207079
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0257013   -0.1056280    0.0484474
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0239615   -0.0511235    0.0936829
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1586538   -0.1593677    0.3894402
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0141028   -0.0439248    0.0148673
