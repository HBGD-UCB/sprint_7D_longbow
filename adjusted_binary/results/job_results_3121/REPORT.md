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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6a5c9ee0-d77a-4048-afa1-9f9ed657c86f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6a5c9ee0-d77a-4048-afa1-9f9ed657c86f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6a5c9ee0-d77a-4048-afa1-9f9ed657c86f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6a5c9ee0-d77a-4048-afa1-9f9ed657c86f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.1916667   0.1211044   0.2622289
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1630435   0.0874118   0.2386752
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2000000   0.0829023   0.3170977
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                0.0671402   0.0475795   0.0867008
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0324289   0.0139468   0.0509109
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0482926   0.0308850   0.0657003
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1050335   0.0983705   0.1116964
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1014596   0.0915194   0.1113998
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0922097   0.0807710   0.1036484
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0672515   0.0406918   0.0938112
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0271739   0.0036674   0.0506804
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0674847   0.0402373   0.0947320
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                0.1387945   0.1240457   0.1535433
Birth       ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1111490   0.0958959   0.1264020
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.1021020   0.0854487   0.1187553
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0572940   0.0449950   0.0695930
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0656727   0.0497271   0.0816184
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0660664   0.0500855   0.0820472
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.3322946   0.3236273   0.3409618
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2811684   0.2647875   0.2975493
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2982174   0.2775995   0.3188352
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.2248138   0.1496125   0.3000151
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1143802   0.0476611   0.1810993
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2379178   0.1092198   0.3666158
6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                0.2332083   0.1669648   0.2994518
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.1695800   0.0774445   0.2617156
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.2333037   0.1300387   0.3365688
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.2352941   0.1589309   0.3116573
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.1463415   0.0379391   0.2547438
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1702128   0.0940890   0.2463365
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.2264504   0.1329380   0.3199628
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2744922   0.1703464   0.3786380
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2159529   0.1381350   0.2937708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.3113890   0.2498162   0.3729618
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.2768835   0.1920366   0.3617305
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2892820   0.1537333   0.4248306
6 months    ki1000108-IRC              INDIA                          <25                  NA                0.2745098   0.2196686   0.3293510
6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.1951220   0.1250010   0.2652429
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592835   0.3545096
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                0.4528385   0.2456126   0.6600643
6 months    ki1000109-EE               PAKISTAN                       [25-30)              NA                0.5134502   0.4303266   0.5965737
6 months    ki1000109-EE               PAKISTAN                       >=30                 NA                0.5288712   0.4611998   0.5965425
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.2569057   0.2282638   0.2855476
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3097855   0.2704004   0.3491706
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3105173   0.2316669   0.3893677
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.3860508   0.3144288   0.4576728
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.4589667   0.3774469   0.5404865
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4104200   0.3101747   0.5106653
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.2358598   0.1847128   0.2870068
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2897233   0.2212209   0.3582256
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3050760   0.2242159   0.3859361
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.1536328   0.1125100   0.1947555
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1625144   0.1098947   0.2151341
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1780430   0.1095770   0.2465090
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.2394836   0.1965057   0.2824615
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1426633   0.0957082   0.1896183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1917458   0.1212874   0.2622041
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.0905569   0.0706531   0.1104606
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1197305   0.0964582   0.1430028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0877698   0.0653616   0.1101781
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.1185700   0.0960384   0.1411016
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1263646   0.0964183   0.1563109
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1683309   0.1432143   0.1934475
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                0.3480366   0.2741165   0.4219567
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.2200182   0.1256123   0.3144241
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.2889179   0.1846633   0.3931725
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.2142200   0.1683535   0.2600866
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1940293   0.1343328   0.2537258
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2037850   0.1196369   0.2879330
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.0697236   0.0533717   0.0860754
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0510352   0.0401487   0.0619218
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0581755   0.0404121   0.0759389
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1643426   0.1537722   0.1749130
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1650672   0.1496482   0.1804862
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1685177   0.1505715   0.1864640
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.3988945   0.3534561   0.4443329
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.3743626   0.3158311   0.4328942
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4220802   0.3764372   0.4677232
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.1900190   0.1736491   0.2063889
6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1815422   0.1632509   0.1998335
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2146327   0.1925298   0.2367356
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2039771   0.1813115   0.2266428
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.1929504   0.1656805   0.2202204
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2277395   0.1994289   0.2560500
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                0.3355024   0.2833934   0.3876114
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.3954904   0.3251941   0.4657867
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4070006   0.3401064   0.4738948
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.2543930   0.2454894   0.2632967
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2321814   0.2156064   0.2487564
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2554008   0.2328462   0.2779554
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.4936322   0.4033478   0.5839165
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.4143189   0.3188493   0.5097885
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5444724   0.4190727   0.6698720
24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.2242200   0.1405749   0.3078652
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.2025899   0.1373649   0.2678150
24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.2603327   0.1578883   0.3627771
24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                0.3818750   0.2898793   0.4738706
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.3233651   0.1976219   0.4491082
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.3832619   0.2503987   0.5161251
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.3981481   0.3056320   0.4906643
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2432432   0.1047081   0.3817784
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3440860   0.2473300   0.4408420
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.7132629   0.6040373   0.8224884
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.7644204   0.6612173   0.8676234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.6845923   0.5915182   0.7776665
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.7242168   0.6652447   0.7831889
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6880741   0.6018261   0.7743220
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7111489   0.5883100   0.8339878
24 months   ki1000108-IRC              INDIA                          <25                  NA                0.4280156   0.3674487   0.4885824
24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.3983740   0.3117505   0.4849975
24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3793103   0.2024969   0.5561238
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.5437687   0.4768913   0.6106462
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.5703335   0.4885723   0.6520947
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5596223   0.4657898   0.6534548
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.3155680   0.2637681   0.3673678
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3313980   0.2653585   0.3974375
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3636089   0.2780404   0.4491774
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.2525386   0.2031542   0.3019229
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2429026   0.1779252   0.3078800
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2300362   0.1349373   0.3251351
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.3378465   0.3017155   0.3739775
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3133106   0.2686689   0.3579523
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3407792   0.3070409   0.3745174
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.4517174   0.3929578   0.5104769
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.4465548   0.3670053   0.5261043
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4309338   0.3205143   0.5413533
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0911233   0.0573170   0.1249296
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0852563   0.0502145   0.1202981
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0661173   0.0362209   0.0960136
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.6485401   0.5894586   0.7076217
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.6624812   0.5837988   0.7411636
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6546229   0.5576105   0.7516352
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.7915283   0.7562753   0.8267812
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.8024874   0.7592218   0.8457530
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7436425   0.7051206   0.7821644
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.4920638   0.4679816   0.5161460
24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.4537606   0.4275939   0.4799273
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.5435873   0.5147743   0.5724002
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.6217478   0.5936209   0.6498746
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.6029344   0.5683984   0.6374704
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6292349   0.5959095   0.6625603
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.4149527   0.3486966   0.4812088
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.4948373   0.4070925   0.5825821
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4642520   0.3840441   0.5444599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.4975249   0.4827051   0.5123447
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.4481458   0.4224652   0.4738263
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.5074181   0.4710458   0.5437903


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
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.4830023   0.2546726   0.9160435
Birth       ki1101329-Keneba           GAMBIA                         >=30                 <25               0.7192809   0.4526144   1.1430590
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9659742   0.8596981   1.0853882
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8779075   0.7638327   1.0090188
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.4040643   0.1561233   1.0457624
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.0034676   0.5704495   1.7651819
Birth       ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8008168   0.6733901   0.9523567
Birth       ki1135781-COHORTS          INDIA                          >=30                 <25               0.7356344   0.6056201   0.8935601
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.1462406   0.8299194   1.5831266
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.1531109   0.8357302   1.5910216
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.8461420   0.7957480   0.8997273
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               0.8974488   0.8345601   0.9650765
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.5087776   0.2611113   0.9913573
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.0582883   0.5629783   1.9893734
6 months    ki0047075b-MAL-ED          PERU                           <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              <25               0.7271612   0.3959860   1.3353083
6 months    ki0047075b-MAL-ED          PERU                           >=30                 <25               1.0004091   0.5935950   1.6860287
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.6219512   0.2770327   1.3963091
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.7234043   0.4162941   1.2570770
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.2121516   0.6948535   2.1145630
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9536432   0.5522407   1.6468097
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.8891886   0.6177581   1.2798800
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.9290050   0.5583959   1.5455887
6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          [25-30)              <25               0.7108014   0.4711734   1.0722987
6 months    ki1000108-IRC              INDIA                          >=30                 <25               0.7536946   0.3592726   1.5811266
6 months    ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       [25-30)              <25               1.1338484   0.6979120   1.8420836
6 months    ki1000109-EE               PAKISTAN                       >=30                 <25               1.1679024   0.7262682   1.8780889
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.2058333   1.0133594   1.4348650
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.2086819   0.8648745   1.6891605
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.1888764   0.9245491   1.5287746
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.0631243   0.7852572   1.4393160
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.2283709   0.8939601   1.6878775
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.2934634   0.9215969   1.8153790
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.0578109   0.6970078   1.6053822
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1588867   0.7288613   1.8426255
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.5957121   0.4099262   0.8656995
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.8006635   0.5329493   1.2028575
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.3221579   0.9866116   1.7718235
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9692236   0.6926824   1.3561688
6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.0657381   0.7870485   1.4431101
6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4196752   1.1163520   1.8054142
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               0.6321697   0.3917996   1.0200073
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               0.8301365   0.5469365   1.2599758
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.9057476   0.6228852   1.3170626
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9512880   0.5975691   1.5143837
6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.7319654   0.6063982   0.8835339
6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               0.8343734   0.6756152   1.0304372
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.0044087   0.8972151   1.1244091
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0254051   0.9059714   1.1605836
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.9385004   0.7762517   1.1346616
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.0581250   0.9079428   1.2331488
6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9553897   0.8375016   1.0898720
6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.1295331   0.9881940   1.2910875
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9459414   0.7909542   1.1312983
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.1164951   0.9465828   1.3169068
6 months    ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.1788007   0.9326144   1.4899739
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.2131079   0.9688701   1.5189144
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9126877   0.8467031   0.9838146
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.0039615   0.9155125   1.1009557
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.8393272   0.6324944   1.1137967
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.1029920   0.8281593   1.4690306
24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               0.9035318   0.5600290   1.4577278
24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25               1.1610592   0.6841303   1.9704702
24 months   ki0047075b-MAL-ED          PERU                           <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25               0.8467825   0.5401956   1.3273722
24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25               1.0036318   0.6614691   1.5227876
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.6109365   0.3302603   1.1301491
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.8642161   0.6000667   1.2446439
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.0717232   0.8763306   1.3106819
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.9598037   0.7843954   1.1744372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9500940   0.8184453   1.1029187
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.9819558   0.8116036   1.1880643
24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.9307465   0.7180608   1.2064286
24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.8862069   0.5444635   1.4424524
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.0488531   0.8716900   1.2620229
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.0291550   0.8394027   1.2618021
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               1.0501637   0.8150864   1.3530391
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.1522364   0.8695782   1.5267734
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.9618437   0.6955836   1.3300246
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.9108953   0.5797508   1.4311843
24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9273756   0.7768919   1.1070079
24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.0086805   0.8734836   1.1648030
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.9885712   0.7936083   1.2314300
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9539899   0.7159760   1.2711275
24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9356149   0.7316078   1.1965089
24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.7255801   0.4687318   1.1231719
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.0214961   0.8818834   1.1832111
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0093791   0.8500187   1.1986162
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0138455   0.9466298   1.0858339
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.9395021   0.8787160   1.0044932
24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9221581   0.8561703   0.9932317
24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.1047089   1.0290103   1.1859763
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9697411   0.9025040   1.0419875
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0120421   0.9452905   1.0835074
24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.1925150   0.9406407   1.5118333
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.1188069   0.8858046   1.4130982
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9007505   0.8462383   0.9587742
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.0198848   0.9453284   1.1003215


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0087873   -0.0594994    0.0419249
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0139280   -0.0282354    0.0003795
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0016252   -0.0058578    0.0026075
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0085660   -0.0282754    0.0111434
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.0204488   -0.0311401   -0.0097575
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0040174   -0.0052671    0.0133020
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0091808   -0.0133599   -0.0050017
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0380918   -0.0895514    0.0133678
6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0134281   -0.0554549    0.0285987
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0384437   -0.0910542    0.0141668
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0083674   -0.0684867    0.0852215
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0105760   -0.0493419    0.0281899
6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0288096   -0.0603124    0.0026933
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                 0.0660804   -0.1354704    0.2676313
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0275254    0.0040514    0.0509995
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0428965   -0.0102443    0.0960374
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0314299   -0.0065180    0.0693779
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0076022   -0.0214682    0.0366727
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0296934   -0.0575158   -0.0018709
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0058646   -0.0100101    0.0217393
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0222954    0.0035601    0.0410306
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0364424   -0.0833437    0.0104590
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0028524   -0.0335090    0.0278042
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0070372   -0.0120658   -0.0020086
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0017202   -0.0052550    0.0086954
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0110951   -0.0238013    0.0459916
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0059435   -0.0063473    0.0182342
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0072489   -0.0097386    0.0242363
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0381897   -0.0010690    0.0774484
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0029406   -0.0065206    0.0006393
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0313680   -0.0964830    0.0337470
24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0093078   -0.0813864    0.0627709
24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0137158   -0.0747922    0.0473606
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0452070   -0.1122355    0.0218216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0016904   -0.0890697    0.0924505
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0091630   -0.0470508    0.0287247
24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0123676   -0.0490431    0.0243078
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0112664   -0.0351183    0.0576512
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0137215   -0.0219136    0.0493565
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0042708   -0.0286748    0.0372163
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0029574   -0.0318400    0.0259253
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0048236   -0.0443854    0.0347382
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0058693   -0.0153897    0.0036512
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0049686   -0.0344375    0.0443748
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0004118   -0.0263533    0.0271768
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0023882   -0.0158724    0.0206487
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0049788   -0.0259135    0.0159558
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0355736   -0.0141114    0.0852587
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0066443   -0.0131400   -0.0001486


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0480496   -0.3653006    0.1954826
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                -0.2617440   -0.5572795   -0.0222943
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0157162   -0.0574790    0.0243973
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.1459649   -0.5335633    0.1436704
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.1727886   -0.2664398   -0.0860627
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0655251   -0.0986858    0.2051929
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0284134   -0.0414564   -0.0155338
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.2040028   -0.5126126    0.0416430
6 months    ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0610979   -0.2704267    0.1137396
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.1952941   -0.4924967    0.0427262
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0356337   -0.3542358    0.3132640
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0351581   -0.1723670    0.0859925
6 months    ki1000108-IRC              INDIA                          <25                  NA                -0.1172549   -0.2526423    0.0034996
6 months    ki1000109-EE               PAKISTAN                       <25                  NA                 0.1273425   -0.3619361    0.4408467
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0967736    0.0104851    0.1755375
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.1000042   -0.0329935    0.2158785
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.1175876   -0.0359866    0.2483960
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0471500   -0.1513078    0.2113985
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.1415384   -0.2814208   -0.0169257
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0608227   -0.1188402    0.2116355
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1582744    0.0153012    0.2804886
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.1169546   -0.2784655    0.0241523
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0134949   -0.1694145    0.1216358
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.1122604   -0.1896898   -0.0398704
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0103587   -0.0325462    0.0514807
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0270620   -0.0617895    0.1084784
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0303297   -0.0344443    0.0910477
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0343180   -0.0495323    0.1114693
6 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1021956   -0.0091199    0.2012320
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0116946   -0.0260341    0.0024446
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0678574   -0.2196125    0.0650150
24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0433095   -0.4411421    0.2446999
24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0372550   -0.2170590    0.1159853
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.1280864   -0.3352730    0.0469522
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0023643   -0.1330121    0.1215655
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0128145   -0.0672344    0.0388305
24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0297551   -0.1219164    0.0548355
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0202986   -0.0670000    0.1004546
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0416699   -0.0728985    0.1440043
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0166301   -0.1203437    0.1368575
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0088309   -0.0988864    0.0738444
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0107935   -0.1033253    0.0739779
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0688446   -0.1816498    0.0331918
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0076030   -0.0545723    0.0661126
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0005199   -0.0338539    0.0337509
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0048299   -0.0327915    0.0410809
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0080725   -0.0425997    0.0253114
24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0789601   -0.0383420    0.1830106
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0135355   -0.0268497   -0.0003938
