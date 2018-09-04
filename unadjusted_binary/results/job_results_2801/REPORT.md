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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        mage       stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25              0       97     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25              1       23     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0       77     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1       15     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             0       36     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             1        9     257
Birth       ki0047075b-MAL-ED          BRAZIL                         <25              0       88     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <25              1        9     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)          0       45     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)          1        9     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             0       37     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             1        3     191
Birth       ki0047075b-MAL-ED          INDIA                          <25              0      100     205
Birth       ki0047075b-MAL-ED          INDIA                          <25              1       22     205
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)          0       59     205
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)          1        9     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30             0       14     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30             1        1     205
Birth       ki0047075b-MAL-ED          NEPAL                          <25              0       40     173
Birth       ki0047075b-MAL-ED          NEPAL                          <25              1        6     173
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)          0       83     173
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)          1        8     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             0       32     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             1        4     173
Birth       ki0047075b-MAL-ED          PERU                           <25              0      139     287
Birth       ki0047075b-MAL-ED          PERU                           <25              1       22     287
Birth       ki0047075b-MAL-ED          PERU                           [25-30)          0       57     287
Birth       ki0047075b-MAL-ED          PERU                           [25-30)          1        4     287
Birth       ki0047075b-MAL-ED          PERU                           >=30             0       57     287
Birth       ki0047075b-MAL-ED          PERU                           >=30             1        8     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25              0      105     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25              1       18     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0       49     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        4     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       80     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        6     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              0       41     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              1        8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0       28     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       36     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        4     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <25              0       41      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <25              1       12      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          0       30      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        1      90
Birth       ki1000108-IRC              INDIA                          <25              0      212     388
Birth       ki1000108-IRC              INDIA                          <25              1       33     388
Birth       ki1000108-IRC              INDIA                          [25-30)          0      104     388
Birth       ki1000108-IRC              INDIA                          [25-30)          1       11     388
Birth       ki1000108-IRC              INDIA                          >=30             0       27     388
Birth       ki1000108-IRC              INDIA                          >=30             1        1     388
Birth       ki1000109-EE               PAKISTAN                       <25              0        0       4
Birth       ki1000109-EE               PAKISTAN                       <25              1        0       4
Birth       ki1000109-EE               PAKISTAN                       [25-30)          0        2       4
Birth       ki1000109-EE               PAKISTAN                       [25-30)          1        0       4
Birth       ki1000109-EE               PAKISTAN                       >=30             0        0       4
Birth       ki1000109-EE               PAKISTAN                       >=30             1        2       4
Birth       ki1000304b-SAS-CompFeed    INDIA                          <25              0       82     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <25              1       31     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)          0       37     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)          1       12     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             0       22     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             1        3     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     <25              0       16      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <25              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)          0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)          1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <25              0       12      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <25              1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          0        9      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        1      27
Birth       ki1101329-Keneba           GAMBIA                         <25              0      561    1541
Birth       ki1101329-Keneba           GAMBIA                         <25              1       42    1541
Birth       ki1101329-Keneba           GAMBIA                         [25-30)          0      329    1541
Birth       ki1101329-Keneba           GAMBIA                         [25-30)          1       11    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30             0      569    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30             1       29    1541
Birth       ki1119695-PROBIT           BELARUS                        <25              0     7433   13884
Birth       ki1119695-PROBIT           BELARUS                        <25              1       23   13884
Birth       ki1119695-PROBIT           BELARUS                        [25-30)          0     3881   13884
Birth       ki1119695-PROBIT           BELARUS                        [25-30)          1        6   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30             0     2537   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30             1        4   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25              0     7171   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25              1      853   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          0     3090   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          1      352   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2103   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      221   13790
Birth       ki1135781-COHORTS          GUATEMALA                      <25              0      319     852
Birth       ki1135781-COHORTS          GUATEMALA                      <25              1       23     852
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)          0      179     852
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)          1        5     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30             0      304     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30             1       22     852
Birth       ki1135781-COHORTS          INDIA                          <25              0     1715    4715
Birth       ki1135781-COHORTS          INDIA                          <25              1      275    4715
Birth       ki1135781-COHORTS          INDIA                          [25-30)          0     1389    4715
Birth       ki1135781-COHORTS          INDIA                          [25-30)          1      169    4715
Birth       ki1135781-COHORTS          INDIA                          >=30             0     1053    4715
Birth       ki1135781-COHORTS          INDIA                          >=30             1      114    4715
Birth       ki1135781-COHORTS          PHILIPPINES                    <25              0     1264    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <25              1       80    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      803    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)          1       52    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30             0      796    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30             1       55    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25              0    19094   39206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25              1     9642   39206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0     4836   39206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1     1918   39206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     2608   39206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             1     1108   39206
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25              0       88     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25              1       25     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0       77     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1       10     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             0       31     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             1       10     241
6 months    ki0047075b-MAL-ED          BRAZIL                         <25              0       97     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <25              1        3     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)          0       60     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)          1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             0       46     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          <25              0      111     234
6 months    ki0047075b-MAL-ED          INDIA                          <25              1       26     234
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)          0       60     234
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)          1       16     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30             0       19     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30             1        2     234
6 months    ki0047075b-MAL-ED          NEPAL                          <25              0       56     236
6 months    ki0047075b-MAL-ED          NEPAL                          <25              1        7     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)          0      124     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)          1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30             0       44     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30             1        2     236
6 months    ki0047075b-MAL-ED          PERU                           <25              0      117     273
6 months    ki0047075b-MAL-ED          PERU                           <25              1       36     273
6 months    ki0047075b-MAL-ED          PERU                           [25-30)          0       49     273
6 months    ki0047075b-MAL-ED          PERU                           [25-30)          1       10     273
6 months    ki0047075b-MAL-ED          PERU                           >=30             0       47     273
6 months    ki0047075b-MAL-ED          PERU                           >=30             1       14     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25              0       91     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25              1       28     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0       35     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        6     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       78     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1       16     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              0       60     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              1       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0       47     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       82     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1       22     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25              0      150     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25              1       68     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          0       78     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          1       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1       13     369
6 months    ki1000108-IRC              INDIA                          <25              0      185     407
6 months    ki1000108-IRC              INDIA                          <25              1       70     407
6 months    ki1000108-IRC              INDIA                          [25-30)          0       99     407
6 months    ki1000108-IRC              INDIA                          [25-30)          1       24     407
6 months    ki1000108-IRC              INDIA                          >=30             0       23     407
6 months    ki1000108-IRC              INDIA                          >=30             1        6     407
6 months    ki1000109-EE               PAKISTAN                       <25              0       22     740
6 months    ki1000109-EE               PAKISTAN                       <25              1       18     740
6 months    ki1000109-EE               PAKISTAN                       [25-30)          0      136     740
6 months    ki1000109-EE               PAKISTAN                       [25-30)          1      144     740
6 months    ki1000109-EE               PAKISTAN                       >=30             0      198     740
6 months    ki1000109-EE               PAKISTAN                       >=30             1      222     740
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25              0      616    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25              1      214    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)          0      242    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)          1      116    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             0       98    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             1       50    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25              0       99     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25              1       68     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)          0       70     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)          1       60     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             0       48     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             1       35     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25              0      196     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25              1       60     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)          0      115     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)          1       47     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             0       81     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             1       36     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25              0      246     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25              1       46     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)          0      153     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)          1       29     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             0       90     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             1       19     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25              0      283     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25              1       91     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          0      186     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          1       33     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0       96     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1       26     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25              0      700    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25              1       70    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          0      615    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          1       79    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      503    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1       45    2012
6 months    ki1101329-Keneba           GAMBIA                         <25              0      718    2080
6 months    ki1101329-Keneba           GAMBIA                         <25              1       94    2080
6 months    ki1101329-Keneba           GAMBIA                         [25-30)          0      405    2080
6 months    ki1101329-Keneba           GAMBIA                         [25-30)          1       58    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30             0      664    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30             1      141    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25              0      100     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25              1       54     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)          0       49     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)          1       14     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       41     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             1       18     276
6 months    ki1113344-GMS-Nepal        NEPAL                          <25              0      482    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          <25              1      132    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)          0      274    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)          1       68    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             0      132    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             1       38    1126
6 months    ki1119695-PROBIT           BELARUS                        <25              0     7933   15761
6 months    ki1119695-PROBIT           BELARUS                        <25              1      598   15761
6 months    ki1119695-PROBIT           BELARUS                        [25-30)          0     4181   15761
6 months    ki1119695-PROBIT           BELARUS                        [25-30)          1      224   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30             0     2659   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30             1      166   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25              0     3859    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25              1      766    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          0     1768    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          1      349    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     1278    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      260    8280
6 months    ki1135781-COHORTS          GUATEMALA                      <25              0      231     961
6 months    ki1135781-COHORTS          GUATEMALA                      <25              1      149     961
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)          0      125     961
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)          1       83     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30             0      211     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30             1      162     961
6 months    ki1135781-COHORTS          INDIA                          <25              0     1662    4904
6 months    ki1135781-COHORTS          INDIA                          <25              1      417    4904
6 months    ki1135781-COHORTS          INDIA                          [25-30)          0     1338    4904
6 months    ki1135781-COHORTS          INDIA                          [25-30)          1      285    4904
6 months    ki1135781-COHORTS          INDIA                          >=30             0      943    4904
6 months    ki1135781-COHORTS          INDIA                          >=30             1      259    4904
6 months    ki1135781-COHORTS          PHILIPPINES                    <25              0      925    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <25              1      249    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      612    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)          1      146    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             0      599    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             1      177    2708
6 months    ki1148112-LCNI-5           MALAWI                         <25              0      199     669
6 months    ki1148112-LCNI-5           MALAWI                         <25              1      101     669
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)          0      103     669
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)          1       68     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30             0      117     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30             1       81     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25              0    19266   33565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25              1     6667   33565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0     4016   33565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1     1176   33565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1843   33565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      597   33565
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25              0       49     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25              1       44     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0       48     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1       34     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             1       20     212
24 months   ki0047075b-MAL-ED          BRAZIL                         <25              0       74     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <25              1        4     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)          0       49     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)          1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             0       40     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          <25              0       80     225
24 months   ki0047075b-MAL-ED          INDIA                          <25              1       52     225
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)          0       35     225
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)          1       38     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             0       16     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             1        4     225
24 months   ki0047075b-MAL-ED          NEPAL                          <25              0       47     228
24 months   ki0047075b-MAL-ED          NEPAL                          <25              1       12     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)          0       99     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)          1       25     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30             0       33     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30             1       12     228
24 months   ki0047075b-MAL-ED          PERU                           <25              0       65     201
24 months   ki0047075b-MAL-ED          PERU                           <25              1       40     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)          0       32     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)          1       16     201
24 months   ki0047075b-MAL-ED          PERU                           >=30             0       30     201
24 months   ki0047075b-MAL-ED          PERU                           >=30             1       18     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25              0       65     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25              1       43     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0       28     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        9     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       61     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1       32     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              1       44     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1       46     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       29     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1       63     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25              0       61     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25              1      160     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          0       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          1       75     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       11     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1       31     372
24 months   ki1000108-IRC              INDIA                          <25              0      147     409
24 months   ki1000108-IRC              INDIA                          <25              1      110     409
24 months   ki1000108-IRC              INDIA                          [25-30)          0       74     409
24 months   ki1000108-IRC              INDIA                          [25-30)          1       49     409
24 months   ki1000108-IRC              INDIA                          >=30             0       18     409
24 months   ki1000108-IRC              INDIA                          >=30             1       11     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25              0       94     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25              1      111     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)          0       54     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)          1       74     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             0       42     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             1       52     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25              0      199     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25              1       94     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)          0      121     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)          1       58     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             0       67     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             1       38     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25              0      207     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25              1       70     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          0      117     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          1       41     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0       58     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1       21     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        0       6
24 months   ki1101329-Keneba           GAMBIA                         <25              0      420    1714
24 months   ki1101329-Keneba           GAMBIA                         <25              1      203    1714
24 months   ki1101329-Keneba           GAMBIA                         [25-30)          0      262    1714
24 months   ki1101329-Keneba           GAMBIA                         [25-30)          1      122    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30             0      458    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30             1      249    1714
24 months   ki1113344-GMS-Nepal        NEPAL                          <25              0      300     998
24 months   ki1113344-GMS-Nepal        NEPAL                          <25              1      244     998
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)          0      164     998
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)          1      134     998
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       88     998
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1       68     998
24 months   ki1119695-PROBIT           BELARUS                        <25              0     1958    4035
24 months   ki1119695-PROBIT           BELARUS                        <25              1      195    4035
24 months   ki1119695-PROBIT           BELARUS                        [25-30)          0     1012    4035
24 months   ki1119695-PROBIT           BELARUS                        [25-30)          1       97    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30             0      721    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30             1       52    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25              0       84     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25              1      157     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          0       44     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          1       85     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0       30     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       56     456
24 months   ki1135781-COHORTS          GUATEMALA                      <25              0       89    1067
24 months   ki1135781-COHORTS          GUATEMALA                      <25              1      351    1067
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)          0       41    1067
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)          1      200    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             0       92    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             1      294    1067
24 months   ki1135781-COHORTS          INDIA                          <25              0      731    3695
24 months   ki1135781-COHORTS          INDIA                          <25              1      754    3695
24 months   ki1135781-COHORTS          INDIA                          [25-30)          0      685    3695
24 months   ki1135781-COHORTS          INDIA                          [25-30)          1      543    3695
24 months   ki1135781-COHORTS          INDIA                          >=30             0      452    3695
24 months   ki1135781-COHORTS          INDIA                          >=30             1      530    3695
24 months   ki1135781-COHORTS          PHILIPPINES                    <25              0      393    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <25              1      665    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      284    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)          1      410    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             0      260    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             1      433    2445
24 months   ki1148112-LCNI-5           MALAWI                         <25              0      122     475
24 months   ki1148112-LCNI-5           MALAWI                         <25              1       86     475
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)          0       61     475
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)          1       61     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30             0       78     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30             1       67     475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25              0     6519   17216
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25              1     6496   17216
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0     1542   17216
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1     1233   17216
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             0      704   17216
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      722   17216


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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7699dd3b-6a47-4428-9ca4-c8bf1da2e281/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7699dd3b-6a47-4428-9ca4-c8bf1da2e281/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7699dd3b-6a47-4428-9ca4-c8bf1da2e281/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7699dd3b-6a47-4428-9ca4-c8bf1da2e281/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.1916667   0.1211044   0.2622289
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1630435   0.0874118   0.2386752
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2000000   0.0829023   0.3170977
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                0.0696517   0.0493273   0.0899762
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0323529   0.0135396   0.0511662
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0484950   0.0312726   0.0657173
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1063061   0.0995617   0.1130505
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1022661   0.0921434   0.1123889
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0950947   0.0831678   0.1070215
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0672515   0.0406918   0.0938112
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0271739   0.0036674   0.0506804
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0674847   0.0402373   0.0947320
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                0.1381910   0.1230270   0.1533549
Birth       ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1084724   0.0930292   0.1239156
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.0976864   0.0806509   0.1147219
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0595238   0.0468724   0.0721752
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0608187   0.0447962   0.0768412
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0646298   0.0481078   0.0811519
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.3355373   0.3267866   0.3442880
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2839799   0.2668847   0.3010750
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2981701   0.2753380   0.3210021
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.2212389   0.1445479   0.2979300
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1149425   0.0477815   0.1821036
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2439024   0.1121811   0.3756238
6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                0.2352941   0.1679574   0.3026308
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.1694915   0.0735813   0.2654018
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.2295082   0.1237867   0.3352297
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.2352941   0.1589309   0.3116573
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.1463415   0.0379391   0.2547438
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1702128   0.0940890   0.2463365
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.2307692   0.1370780   0.3244605
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2769231   0.1679186   0.3859275
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2115385   0.1328887   0.2901882
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.3119266   0.2503448   0.3735085
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.2777778   0.1931896   0.3623660
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3023256   0.1648685   0.4397826
6 months    ki1000108-IRC              INDIA                          <25                  NA                0.2745098   0.2196686   0.3293510
6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.1951220   0.1250010   0.2652429
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592835   0.3545096
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                0.4500000   0.2316725   0.6683275
6 months    ki1000109-EE               PAKISTAN                       [25-30)              NA                0.5142857   0.4313838   0.5971876
6 months    ki1000109-EE               PAKISTAN                       >=30                 NA                0.5285714   0.4609653   0.5961775
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.2578313   0.2271080   0.2885547
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3240223   0.2817344   0.3663103
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3378378   0.2581285   0.4175472
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.4071856   0.3325721   0.4817992
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.4615385   0.3757300   0.5473469
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4216867   0.3153073   0.5280662
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.2343750   0.1824355   0.2863145
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2901235   0.2201748   0.3600722
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3076923   0.2239839   0.3914008
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.1575342   0.1157134   0.1993551
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1593407   0.1061227   0.2125587
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1743119   0.1030300   0.2455938
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.2433155   0.1997986   0.2868325
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1506849   0.1032717   0.1980981
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2131148   0.1403980   0.2858315
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.0909091   0.0705987   0.1112195
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1138329   0.0901972   0.1374685
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0821168   0.0591249   0.1051087
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.1157635   0.0937523   0.1377748
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1252700   0.0951106   0.1554294
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1751553   0.1488918   0.2014188
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                0.3506494   0.2751485   0.4261502
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.2222222   0.1193762   0.3250682
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.3050847   0.1873820   0.4227875
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.2149837   0.1689891   0.2609783
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1988304   0.1389562   0.2587046
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2235294   0.1348844   0.3121745
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.0700973   0.0536169   0.0865777
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0508513   0.0400009   0.0617017
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0587611   0.0408004   0.0767217
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1656216   0.1549075   0.1763358
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1648559   0.1490490   0.1806628
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1690507   0.1503184   0.1877831
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.3921053   0.3429921   0.4412184
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.3990385   0.3324539   0.4656230
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4343164   0.3839884   0.4846444
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.2005772   0.1833627   0.2177917
6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1756007   0.1570882   0.1941132
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2154742   0.1922286   0.2387198
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2120954   0.1887072   0.2354836
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.1926121   0.1645335   0.2206908
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2280928   0.1985647   0.2576209
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                0.3366667   0.2831513   0.3901820
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.3976608   0.3242514   0.4710702
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4090909   0.3405562   0.4776256
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.2570856   0.2480900   0.2660811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2265023   0.2086016   0.2444030
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2446721   0.2197838   0.2695605
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.4731183   0.3714057   0.5748309
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.4146341   0.3077498   0.5215185
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5405405   0.3795829   0.7014982
24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.2033898   0.1004546   0.3063251
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.2016129   0.1308415   0.2723843
24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.2666667   0.1371781   0.3961552
24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                0.3809524   0.2878343   0.4740704
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.3333333   0.1996417   0.4670250
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.3750000   0.2377014   0.5122986
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.3981481   0.3056320   0.4906643
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2432432   0.1047081   0.3817784
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3440860   0.2473300   0.4408420
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.7096774   0.5964269   0.8229279
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.7666667   0.6593959   0.8739374
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.6847826   0.5896230   0.7799422
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.7239819   0.6649660   0.7829978
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6880734   0.6009845   0.7751623
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7380952   0.6049469   0.8712436
24 months   ki1000108-IRC              INDIA                          <25                  NA                0.4280156   0.3674487   0.4885824
24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.3983740   0.3117505   0.4849975
24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3793103   0.2024969   0.5561238
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.5414634   0.4731742   0.6097526
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.5781250   0.4924695   0.6637804
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5531915   0.4525698   0.6538132
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.3208191   0.2673240   0.3743142
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3240223   0.2554022   0.3926425
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3619048   0.2699085   0.4539010
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.2527076   0.2014822   0.3039330
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2594937   0.1910757   0.3279116
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2658228   0.1683117   0.3633339
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.3258427   0.2890285   0.3626569
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3177083   0.2711274   0.3642893
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3521924   0.3169733   0.3874115
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.4485294   0.3893656   0.5076932
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.4496644   0.3697089   0.5296200
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4358974   0.3257416   0.5460533
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0905713   0.0556456   0.1254970
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0874662   0.0520100   0.1229223
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0672704   0.0379234   0.0966173
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.6514523   0.5912256   0.7116789
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.6589147   0.5770162   0.7408132
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6511628   0.5503230   0.7520025
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.7977273   0.7601763   0.8352783
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.8298755   0.7824149   0.8773361
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7616580   0.7191336   0.8041824
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.5077441   0.4823132   0.5331750
24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.4421824   0.4144010   0.4699638
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.5397149   0.5085370   0.5708928
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.6285444   0.5994228   0.6576660
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5907781   0.5541892   0.6273670
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6248196   0.5887644   0.6608748
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.4134615   0.3464669   0.4804561
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.5000000   0.4111831   0.5888169
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4620690   0.3808349   0.5433031
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.4991164   0.4840996   0.5141332
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.4443243   0.4159133   0.4727353
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.5063114   0.4653571   0.5472656


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1828794   0.1355257   0.2302330
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0532122   0.0420018   0.0644226
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1034083   0.0983260   0.1084905
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1183457   0.1091247   0.1275667
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3231138   0.3154608   0.3307668
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5189189   0.4679396   0.5698982
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2672897   0.2297549   0.3048246
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964215   0.0835208   0.1093221
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1408654   0.1259115   0.1558193
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3115942   0.2568550   0.3663334
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660628   0.1580467   0.1740789
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1959625   0.1848518   0.2070732
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3736921   0.3370052   0.4103790
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514524   0.2433306   0.2595742
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.6543278   0.7755787
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5550351   0.5078433   0.6022269
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3348891   0.3125397   0.3572386
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6535088   0.6097853   0.6972322
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7919400   0.7675726   0.8163075
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4944520   0.4783291   0.5105749
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4505263   0.4057351   0.4953175
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4908806   0.4777422   0.5040189


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.8506616   0.4705032   1.5379815
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.0434783   0.5225389   2.0837624
Birth       ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.4644958   0.2423404   0.8903030
Birth       ki1101329-Keneba           GAMBIA                         >=30                 <25               0.6962494   0.4396886   1.1025150
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9619969   0.8552898   1.0820169
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8945365   0.7772421   1.0295319
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.4040643   0.1561233   1.0457624
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.0034676   0.5704495   1.7651819
Birth       ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          [25-30)              <25               0.7849457   0.6558053   0.9395164
Birth       ki1135781-COHORTS          INDIA                          >=30                 <25               0.7068942   0.5752703   0.8686339
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0217544   0.7283498   1.4333525
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0857814   0.7786794   1.5140010
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.8463436   0.7942323   0.9018741
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.8886346   0.8202091   0.9627686
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.5195402   0.2633688   1.0248826
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.1024390   0.5803001   2.0943850
6 months    ki0047075b-MAL-ED          PERU                           <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              <25               0.7203390   0.3820690   1.3581008
6 months    ki0047075b-MAL-ED          PERU                           >=30                 <25               0.9754098   0.5671111   1.6776684
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.6219512   0.2770327   1.3963091
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.7234043   0.4162941   1.2570770
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.2000000   0.6817007   2.1123640
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9166667   0.5285985   1.5896334
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.8905229   0.6194884   1.2801386
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.9692202   0.5904078   1.5910832
6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          [25-30)              <25               0.7108014   0.4711734   1.0722987
6 months    ki1000108-IRC              INDIA                          >=30                 <25               0.7536946   0.3592726   1.5811266
6 months    ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       [25-30)              <25               1.1428571   0.6854232   1.9055709
6 months    ki1000109-EE               PAKISTAN                       >=30                 <25               1.1746032   0.7111884   1.9399818
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.2567222   1.0351493   1.5257225
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.3103056   0.9456912   1.8154984
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.1334842   0.8730640   1.4715832
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.0356130   0.7582022   1.4145229
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.2378601   0.8921774   1.7174809
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.3128205   0.9243071   1.8646376
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.0114668   0.6601813   1.5496729
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1065018   0.6795376   1.8017344
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.6192985   0.4312372   0.8893728
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.8758782   0.5958479   1.2875143
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.2521614   0.9229957   1.6987166
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9032847   0.6313345   1.2923786
6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.0821194   0.7962341   1.4706508
6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               1.5130435   1.1876468   1.9275938
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               0.6337449   0.3803925   1.0558373
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               0.8700565   0.5593286   1.3534053
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.9248627   0.6392209   1.3381461
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.0397504   0.6625767   1.6316315
6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.7254389   0.6007039   0.8760749
6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               0.8382786   0.6799440   1.0334838
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9953769   0.8866552   1.1174300
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0207044   0.8977917   1.1604445
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0176820   0.8260372   1.2537893
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.1076524   0.9338931   1.3137413
6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8754771   0.7641985   1.0029595
6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.0742707   0.9359306   1.2330589
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9081392   0.7564301   1.0902748
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0754254   0.9072481   1.2747779
6 months    ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.1811707   0.9257944   1.5069916
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.2151215   0.9645479   1.5307900
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.8810386   0.8109146   0.9572266
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.9517148   0.8568158   1.0571245
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.8763858   0.6264979   1.2259453
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.1425061   0.7913271   1.6495332
24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               0.9912634   0.5354259   1.8351806
24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25               1.3111111   0.6501845   2.6438837
24 months   ki0047075b-MAL-ED          PERU                           <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25               0.8750000   0.5470461   1.3995622
24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25               0.9843750   0.6338298   1.5287923
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.6109365   0.3302603   1.1301491
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.8642161   0.6000667   1.2446439
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0803030   0.8737231   1.3357260
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9649209   0.7808954   1.1923139
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9504014   0.8175702   1.1048137
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               1.0194940   0.8363981   1.2426716
24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.9307465   0.7180608   1.2064286
24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.8862069   0.5444635   1.4424524
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.0677083   0.8789246   1.2970408
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.0216600   0.8188036   1.2747734
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.0099845   0.7713544   1.3224386
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1280648   0.8323471   1.5288457
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.0268535   0.7363308   1.4320033
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               1.0518987   0.6917629   1.5995233
24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9750359   0.8102779   1.1732951
24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.0808662   0.9294920   1.2568928
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0025305   0.8034272   1.2509751
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9718369   0.7307880   1.2923953
24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9657164   0.7322680   1.2735885
24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.7427339   0.4760180   1.1588926
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.0114551   0.8663073   1.1809221
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9995556   0.8346004   1.1971135
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0402998   0.9660284   1.1202814
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.9547850   0.8875449   1.0271192
24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8708765   0.8036398   0.9437386
24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.0629663   0.9847242   1.1474251
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9399146   0.8699565   1.0154985
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               0.9940739   0.9231652   1.0704292
24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.2093023   0.9508579   1.5379923
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.1175621   0.8799090   1.4194026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.8902218   0.8304869   0.9542533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.0144154   0.9321390   1.1039540


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0087873   -0.0594994    0.0419249
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0164395   -0.0311185   -0.0017605
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0028978   -0.0071852    0.0013895
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0085660   -0.0282754    0.0111434
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.0198452   -0.0308394   -0.0088511
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0017877   -0.0077783    0.0113536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0124235   -0.0166506   -0.0081964
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0345169   -0.0874008    0.0183669
6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0155139   -0.0587999    0.0277721
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0384437   -0.0910542    0.0141668
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0040486   -0.0736677    0.0817649
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0111136   -0.0499330    0.0277058
6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0288096   -0.0603124    0.0026933
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                 0.0689189   -0.1434783    0.2813162
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0265998    0.0005823    0.0526173
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0217617   -0.0344227    0.0779462
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0329147   -0.0061345    0.0719639
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0037007   -0.0261260    0.0335275
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0335253   -0.0618893   -0.0051613
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0055124   -0.0107110    0.0217358
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0251018    0.0069405    0.0432632
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0390551   -0.0873818    0.0092715
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0036160   -0.0344017    0.0271696
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0074109   -0.0124814   -0.0023404
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0004412   -0.0066869    0.0075693
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0178843   -0.0204884    0.0562571
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0046147   -0.0175965    0.0083671
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0008694   -0.0184521    0.0167133
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0370254   -0.0034876    0.0775384
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0056332   -0.0093693   -0.0018970
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0108541   -0.0869747    0.0652665
24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                 0.0115225   -0.0777369    0.1007818
24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0127932   -0.0766658    0.0510794
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0452070   -0.1122355    0.0218216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0052759   -0.0899577    0.1005094
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0089281   -0.0470639    0.0292076
24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0123676   -0.0490431    0.0243078
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0135717   -0.0355478    0.0626912
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0084703   -0.0293227    0.0462633
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0041018   -0.0308980    0.0391015
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0090465   -0.0204417    0.0385346
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0016356   -0.0415233    0.0382520
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0053173   -0.0162613    0.0056268
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0020565   -0.0392342    0.0433472
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0057873   -0.0347855    0.0232110
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0132921   -0.0329605    0.0063762
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0117755   -0.0338126    0.0102616
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0370648   -0.0135686    0.0876982
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0082358   -0.0149482   -0.0015235


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0480496   -0.3653006    0.1954826
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                -0.3089431   -0.6078612   -0.0655970
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0280230   -0.0703126    0.0125956
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.1459649   -0.5335633    0.1436704
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.1676888   -0.2636980   -0.0789738
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0291571   -0.1400480    0.1732489
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0384493   -0.0516445   -0.0254196
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.1848574   -0.5023546    0.0655421
6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0705882   -0.2865168    0.1090989
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.1952941   -0.4924967    0.0427262
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0172414   -0.3762598    0.2982324
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0369452   -0.1743516    0.0843838
6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.1172549   -0.2526423    0.0034996
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                 0.1328125   -0.3905545    0.4591984
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0935193   -0.0025898    0.1804154
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0507329   -0.0897812    0.1731294
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.1231425   -0.0353901    0.2574015
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0229525   -0.1806717    0.1914587
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.1598039   -0.3023733   -0.0328415
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0571696   -0.1268670    0.2111500
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1781973    0.0397969    0.2966492
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.1253398   -0.2916644    0.0195676
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0171078   -0.1736888    0.1185838
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.1182221   -0.1955195   -0.0459224
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0026567   -0.0412042    0.0446700
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0436214   -0.0547271    0.1327994
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0235490   -0.0919790    0.0405927
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0041160   -0.0909047    0.0757681
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0990800   -0.0161625    0.2012529
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0224025   -0.0373749   -0.0076462
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0234804   -0.2021680    0.1286475
24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                 0.0536147   -0.4676229    0.3897307
24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0347490   -0.2236612    0.1249983
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.1280864   -0.3352730    0.0469522
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0073793   -0.1351808    0.1320362
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0124860   -0.0672742    0.0394898
24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0297551   -0.1219164    0.0548355
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0244520   -0.0682227    0.1090866
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0257230   -0.0960799    0.1339905
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0159720   -0.1301966    0.1432366
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0270133   -0.0651472    0.1111997
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0036600   -0.0970049    0.0817421
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0623697   -0.1928254    0.0538184
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0031468   -0.0620826    0.0643701
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0073077   -0.0446029    0.0286559
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0268826   -0.0674512    0.0121442
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0190923   -0.0554676    0.0160295
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0822699   -0.0374583    0.1881809
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0167777   -0.0305314   -0.0032075
