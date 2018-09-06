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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        birthlen      n_cell       n
-------------  -------------------------  -----------------------------  -----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           27     239
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm           128     239
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        84     239
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           33     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            73     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        74     180
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm           24     196
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm           102     196
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        70     196
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm           37     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            68     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm        66     171
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm           32     269
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm           135     269
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm       102     269
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           41     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            95     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        93     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           15     118
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            51     118
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        52     118
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           11      80
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            34      80
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        35      80
0-3 months     ki1000108-IRC              INDIA                          >=50 cm          138     377
0-3 months     ki1000108-IRC              INDIA                          <48 cm           104     377
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm       135     377
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm           42     166
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm            74     166
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm        50     166
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm            5      15
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm             5      15
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         5      15
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          130    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           653    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       385    1168
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           27     201
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm            98     201
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        76     201
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          150     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           226     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       258     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          156     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           278     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       286     720
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm          617    1254
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm           232    1254
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       405    1254
0-3 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0       1
0-3 months     ki1114097-CMIN             BANGLADESH                     <48 cm             1       1
0-3 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         0       1
0-3 months     ki1114097-CMIN             BRAZIL                         >=50 cm           42      81
0-3 months     ki1114097-CMIN             BRAZIL                         <48 cm            13      81
0-3 months     ki1114097-CMIN             BRAZIL                         [48-50) cm        26      81
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm            0       1
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  <48 cm             0       1
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm         1       1
0-3 months     ki1114097-CMIN             PERU                           >=50 cm           11      13
0-3 months     ki1114097-CMIN             PERU                           <48 cm             1      13
0-3 months     ki1114097-CMIN             PERU                           [48-50) cm         1      13
0-3 months     ki1114097-CONTENT          PERU                           >=50 cm            1       2
0-3 months     ki1114097-CONTENT          PERU                           <48 cm             1       2
0-3 months     ki1114097-CONTENT          PERU                           [48-50) cm         0       2
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm        11591   12745
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm           134   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm      1020   12745
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2322    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2461    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3081    7864
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          371     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm           136     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       221     728
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm         1385    6465
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm          2688    6465
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm      2392    6465
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         2630   40090
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         28042   40090
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      9418   40090
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          300    3614
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          2352    3614
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       962    3614
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           24     224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm           117     224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        83     224
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           30     172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            68     172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        74     172
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm           24     188
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm            96     188
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        68     188
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm           37     170
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            67     170
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm        66     170
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm           30     256
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm           131     256
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        95     256
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           37     204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            81     204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        86     204
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           14     115
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            51     115
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        50     115
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           11      85
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            43      85
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31      85
3-6 months     ki1000108-IRC              INDIA                          >=50 cm          138     379
3-6 months     ki1000108-IRC              INDIA                          <48 cm           106     379
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm       135     379
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm           36     154
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm            72     154
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm        46     154
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm            4       9
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm             2       9
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         3       9
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          166    1114
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           584    1114
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       364    1114
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           24     176
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm            82     176
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        70     176
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          136     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           202     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       236     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          153     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           264     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       278     695
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm          477     959
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm           171     959
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       311     959
3-6 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0       1
3-6 months     ki1114097-CMIN             BANGLADESH                     <48 cm             1       1
3-6 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         0       1
3-6 months     ki1114097-CMIN             BRAZIL                         >=50 cm           41      77
3-6 months     ki1114097-CMIN             BRAZIL                         <48 cm            10      77
3-6 months     ki1114097-CMIN             BRAZIL                         [48-50) cm        26      77
3-6 months     ki1114097-CMIN             PERU                           >=50 cm            8      10
3-6 months     ki1114097-CMIN             PERU                           <48 cm             1      10
3-6 months     ki1114097-CMIN             PERU                           [48-50) cm         1      10
3-6 months     ki1114097-CONTENT          PERU                           >=50 cm            1       2
3-6 months     ki1114097-CONTENT          PERU                           <48 cm             1       2
3-6 months     ki1114097-CONTENT          PERU                           [48-50) cm         0       2
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm        12090   13309
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm           146   13309
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm      1073   13309
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1700    5824
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1816    5824
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2308    5824
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          313     620
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm           118     620
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       189     620
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm         1293    5975
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm          2452    5975
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm      2230    5975
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         3366   24764
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         15594   24764
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      5804   24764
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          972    3496
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1636    3496
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       888    3496
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           25     214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm           109     214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        80     214
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm           28     160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm            64     160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        68     160
6-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm           23     183
6-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm            93     183
6-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm        67     183
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm           37     167
6-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm            65     167
6-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm        65     167
6-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm           27     229
6-12 months    ki0047075b-MAL-ED          PERU                           <48 cm           117     229
6-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm        85     229
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32     196
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            81     196
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        83     196
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           12     109
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            50     109
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        47     109
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           13      89
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            42      89
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        34      89
6-12 months    ki1000108-IRC              INDIA                          >=50 cm          139     382
6-12 months    ki1000108-IRC              INDIA                          <48 cm           108     382
6-12 months    ki1000108-IRC              INDIA                          [48-50) cm       135     382
6-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            3      10
6-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm             2      10
6-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         5      10
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          164    1127
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           598    1127
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       365    1127
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           21     157
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm            74     157
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        62     157
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          134     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           192     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       219     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          153     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           259     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       264     676
6-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm          446     886
6-12 months    ki1101329-Keneba           GAMBIA                         <48 cm           157     886
6-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm       283     886
6-12 months    ki1114097-CMIN             BRAZIL                         >=50 cm           50      90
6-12 months    ki1114097-CMIN             BRAZIL                         <48 cm            11      90
6-12 months    ki1114097-CMIN             BRAZIL                         [48-50) cm        29      90
6-12 months    ki1114097-CMIN             PERU                           >=50 cm            9      10
6-12 months    ki1114097-CMIN             PERU                           <48 cm             1      10
6-12 months    ki1114097-CMIN             PERU                           [48-50) cm         0      10
6-12 months    ki1114097-CONTENT          PERU                           >=50 cm            1       2
6-12 months    ki1114097-CONTENT          PERU                           <48 cm             1       2
6-12 months    ki1114097-CONTENT          PERU                           [48-50) cm         0       2
6-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm        11724   12896
6-12 months    ki1119695-PROBIT           BELARUS                        <48 cm           135   12896
6-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1037   12896
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1214    4521
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1495    4521
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      1812    4521
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          308     615
6-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           126     615
6-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       181     615
6-12 months    ki1135781-COHORTS          INDIA                          >=50 cm         1025    4659
6-12 months    ki1135781-COHORTS          INDIA                          <48 cm          1902    4659
6-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm      1732    4659
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm          881    2414
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm           599    2414
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm       934    2414
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         2533   19325
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         12230   19325
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      4562   19325
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1400    5576
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          2704    5576
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm      1472    5576
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           27     201
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            98     201
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        76     201
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           20     135
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            56     135
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        59     135
12-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm           23     183
12-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm            94     183
12-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        66     183
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm           35     164
12-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            65     164
12-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm        64     164
12-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm           22     182
12-24 months   ki0047075b-MAL-ED          PERU                           <48 cm            95     182
12-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        65     182
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           31     193
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            82     193
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        80     193
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           11      99
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            46      99
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        42      99
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           13      92
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            43      92
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        36      92
12-24 months   ki1000108-IRC              INDIA                          >=50 cm          137     378
12-24 months   ki1000108-IRC              INDIA                          <48 cm           107     378
12-24 months   ki1000108-IRC              INDIA                          [48-50) cm       134     378
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           20     135
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm            60     135
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        55     135
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          108     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           170     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       180     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          121     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           195     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       179     495
12-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          406     786
12-24 months   ki1101329-Keneba           GAMBIA                         <48 cm           137     786
12-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       243     786
12-24 months   ki1114097-CMIN             PERU                           >=50 cm            3       3
12-24 months   ki1114097-CMIN             PERU                           <48 cm             0       3
12-24 months   ki1114097-CMIN             PERU                           [48-50) cm         0       3
12-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm         2317    2533
12-24 months   ki1119695-PROBIT           BELARUS                        <48 cm            25    2533
12-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm       191    2533
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm           31     298
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           176     298
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm        91     298
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          254     540
12-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           118     540
12-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       168     540
12-24 months   ki1135781-COHORTS          INDIA                          >=50 cm          884    3954
12-24 months   ki1135781-COHORTS          INDIA                          <48 cm          1611    3954
12-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm      1459    3954
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm          819    2257
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm           562    2257
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm       876    2257
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1158    9110
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5750    9110
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      2202    9110
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1604    6180
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          3066    6180
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm      1510    6180


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU

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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/116f74ee-e558-4071-928f-8506c1926bab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/116f74ee-e558-4071-928f-8506c1926bab/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                3.2457164   3.0675586   3.4238743
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                3.6737204   3.5861720   3.7612688
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                3.4930952   3.3978436   3.5883467
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                3.7994660   3.6537826   3.9451494
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                4.3072326   4.1467534   4.4677119
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                4.0769268   3.9478504   4.2060033
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                3.4542413   3.3112306   3.5972520
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                3.6622195   3.5566609   3.7677780
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                3.5533004   3.4161304   3.6904703
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                3.6206025   3.4972496   3.7439555
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                3.9099106   3.7885724   4.0312488
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                3.7023947   3.5861298   3.8186596
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                2.9984365   2.8295182   3.1673548
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                3.4484468   3.3683759   3.5285178
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                3.2941160   3.1992449   3.3889871
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                3.2195542   3.0039528   3.4351555
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                3.6370659   3.5059947   3.7681371
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                3.3486605   3.2136982   3.4836228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                3.3731422   3.1159605   3.6303238
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                3.6067650   3.4763077   3.7372224
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                3.5117961   3.3666245   3.6569678
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                3.1298934   2.5797376   3.6800492
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                3.8507486   3.5036585   4.1978386
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                3.3642052   3.0789556   3.6494549
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                2.5821794   2.4121271   2.7522317
0-3 months     ki1000108-IRC              INDIA                          <48 cm               NA                3.7532351   3.5442518   3.9622185
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                3.3295926   3.1813454   3.4778399
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                2.1360097   1.7610678   2.5109516
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                3.0643701   2.8294569   3.2992832
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                2.6610002   2.4216568   2.9003435
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                2.3837532   1.1058073   3.6616991
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                3.5823817   2.4938094   4.6709540
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                2.8146109   2.2303226   3.3988992
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                3.4362439   3.3296013   3.5428866
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                3.7004858   3.6634823   3.7374892
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                3.5087658   3.4545615   3.5629702
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                3.1777879   2.9716198   3.3839559
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                3.5603745   3.4261575   3.6945915
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                3.4539776   3.3182919   3.5896632
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                3.4712454   3.3942094   3.5482814
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                3.5497584   3.4905313   3.6089856
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                3.4848267   3.4263650   3.5432885
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                3.1407558   3.0641141   3.2173974
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                3.4143392   3.3539530   3.4747254
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                3.2904066   3.2336767   3.3471366
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                2.8678613   2.8110707   2.9246519
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                3.7581074   3.6512604   3.8649545
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                3.2256719   3.1650326   3.2863111
0-3 months     ki1114097-CMIN             BRAZIL                         >=50 cm              NA                3.4509958   3.2065242   3.6954673
0-3 months     ki1114097-CMIN             BRAZIL                         <48 cm               NA                4.3839509   3.8093045   4.9585972
0-3 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                3.3005493   2.9388907   3.6622079
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                2.7953001   2.6850590   2.9055411
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                3.5282501   3.3743700   3.6821302
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                3.2048517   3.1006539   3.3090495
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                2.8744241   2.8394044   2.9094439
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                3.8205226   3.7864575   3.8545876
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                3.3862995   3.3572821   3.4153168
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                2.5153768   2.4583334   2.5724202
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                2.9105846   2.8243788   2.9967905
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                2.6561279   2.5909709   2.7212850
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                3.3579228   3.3315481   3.3842976
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                3.6921571   3.6705124   3.7138017
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                3.5086077   3.4876282   3.5295873
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                3.3982109   3.3660481   3.4303737
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                3.7890990   3.7772787   3.8009194
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                3.5969548   3.5799777   3.6139319
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                3.3461176   3.2458764   3.4463588
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                3.7199604   3.6834493   3.7564715
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                3.5290053   3.4698782   3.5881323
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                1.9759977   1.8654740   2.0865214
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                1.9583096   1.8841619   2.0324572
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                1.8762808   1.8100508   1.9425108
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                1.9023520   1.7327265   2.0719776
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                2.0884378   1.9588655   2.2180101
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                2.1278471   1.9928948   2.2627994
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                1.7902867   1.5916847   1.9888886
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                1.8732374   1.7900839   1.9563908
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                1.8570226   1.7392178   1.9748274
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                1.8166308   1.6815120   1.9517496
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                2.0185118   1.9280998   2.1089238
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                1.9379311   1.8601826   2.0156795
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                1.8643245   1.7276854   2.0009635
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                2.0448115   1.9603984   2.1292245
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                1.9981150   1.9185604   2.0776696
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                1.8745899   1.6359872   2.1131927
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                2.0720775   1.9407058   2.2034491
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                1.8984240   1.7733199   2.0235281
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                1.7344752   1.4992391   1.9697114
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                1.9448411   1.7851755   2.1045067
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                1.8107907   1.6663846   1.9551968
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.4569963   1.1262386   1.7877539
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                2.0159831   1.7364185   2.2955476
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                1.8525385   1.5353200   2.1697569
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                1.8529157   1.7341462   1.9716852
3-6 months     ki1000108-IRC              INDIA                          <48 cm               NA                1.9003045   1.7822940   2.0183150
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                1.9471299   1.8445281   2.0497316
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                1.8307013   1.6591178   2.0022847
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                2.0580412   1.9341472   2.1819352
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                1.7857767   1.6435638   1.9279897
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                1.8672327   1.8243695   1.9100959
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                1.9413427   1.8757056   2.0069799
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                1.9585808   1.8919780   2.0251836
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                1.8657481   1.6091143   2.1223819
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                1.7753123   1.6467926   1.9038320
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.7021959   1.5927826   1.8116092
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                1.8399878   1.7804797   1.8994960
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                1.9773660   1.9247235   2.0300085
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                1.9656003   1.9206763   2.0105244
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                1.9421255   1.8774129   2.0068382
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                2.0759603   2.0144284   2.1374922
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                1.9567611   1.9053659   2.0081564
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                1.9098930   1.8483015   1.9714844
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                2.0873584   2.0113141   2.1634028
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                1.9632161   1.8891329   2.0372993
3-6 months     ki1114097-CMIN             BRAZIL                         >=50 cm              NA                1.6126978   1.3643291   1.8610666
3-6 months     ki1114097-CMIN             BRAZIL                         <48 cm               NA                1.8689826   1.4845325   2.2534327
3-6 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                1.8616572   1.4721795   2.2511350
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                2.0813070   2.0390945   2.1235195
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                2.3878963   2.2904749   2.4853178
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                2.1735606   2.1267250   2.2203962
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.9472514   1.9131197   1.9813831
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                2.0123183   1.9756819   2.0489547
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.9657856   1.9346381   1.9969332
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                1.6731696   1.6305021   1.7158371
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                1.7688248   1.7072805   1.8303691
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                1.7611040   1.7098615   1.8123464
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                1.8043428   1.7795846   1.8291010
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                1.9229895   1.9033906   1.9425884
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                1.8677394   1.8480523   1.8874265
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                1.8626403   1.8348031   1.8904774
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                1.9441652   1.9313181   1.9570124
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                1.8780501   1.8596259   1.8964742
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                1.8746855   1.8220896   1.9272814
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                1.9318098   1.8854360   1.9781835
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                1.8795485   1.8297176   1.9293794
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                1.0372055   0.9701381   1.1042729
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                1.1374868   1.1034311   1.1715426
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                1.0933970   1.0525999   1.1341941
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                1.4301273   1.3298310   1.5304236
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                1.4111684   1.3391339   1.4832029
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                1.3458572   1.2809988   1.4107155
6-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                1.1215046   1.0500669   1.1929422
6-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                1.1675056   1.1258321   1.2091790
6-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                1.0622118   1.0167536   1.1076701
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                1.1988625   1.1464785   1.2512465
6-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                1.2144242   1.1667562   1.2620922
6-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                1.1703151   1.1315697   1.2090604
6-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                1.1871592   1.1070633   1.2672551
6-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                1.2047191   1.1587454   1.2506928
6-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                1.2229641   1.1698928   1.2760353
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                1.2013125   1.1298502   1.2727749
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                1.2256204   1.1666456   1.2845952
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                1.1891810   1.1422109   1.2361512
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                1.0169391   0.8886271   1.1452512
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                1.0211235   0.9408335   1.1014136
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                1.0212683   0.9540937   1.0884429
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.4033933   1.1173782   1.6894084
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                1.1347276   1.0091512   1.2603040
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                1.1164327   0.9972624   1.2356030
6-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                1.2447536   1.2004417   1.2890655
6-12 months    ki1000108-IRC              INDIA                          <48 cm               NA                1.3187814   1.2645889   1.3729738
6-12 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                1.2270498   1.1808856   1.2732140
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                1.1385185   1.1109035   1.1661334
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                1.1031041   1.0845080   1.1217003
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                1.0958454   1.0733621   1.1183286
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                1.1553260   1.0613675   1.2492844
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                1.1180509   1.0632451   1.1728567
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.1543416   1.0899210   1.2187622
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                1.2139002   1.1789610   1.2488393
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                1.1529967   1.1248186   1.1811748
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                1.1698705   1.1436061   1.1961349
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                1.2375201   1.2053135   1.2697267
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                1.2389282   1.2118148   1.2660416
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                1.2313824   1.2035719   1.2591930
6-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                1.2098099   1.1807442   1.2388756
6-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                1.1496367   1.1184843   1.1807892
6-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                1.1607168   1.1286019   1.1928317
6-12 months    ki1114097-CMIN             BRAZIL                         >=50 cm              NA                1.3148227   1.2081902   1.4214552
6-12 months    ki1114097-CMIN             BRAZIL                         <48 cm               NA                1.2001984   1.0339578   1.3664391
6-12 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                1.1769630   1.0472559   1.3066700
6-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                1.4646236   1.4257256   1.5035215
6-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                1.5353827   1.4528626   1.6179028
6-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                1.5370638   1.4861264   1.5880012
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.1950274   1.1763564   1.2136985
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                1.2159478   1.1965967   1.2352989
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.1849346   1.1678200   1.2020493
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                1.0250994   1.0010248   1.0491740
6-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                1.0589772   1.0230199   1.0949344
6-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                1.0241922   0.9926220   1.0557624
6-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                1.1319839   1.1153399   1.1486279
6-12 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                1.0856181   1.0716483   1.0995879
6-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                1.0930556   1.0794775   1.1066336
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                1.0894998   1.0704396   1.1085600
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                1.0574802   1.0342377   1.0807228
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                1.0561616   1.0371112   1.0752119
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                1.1183229   1.1029584   1.1336873
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                1.1076951   1.0995615   1.1158287
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                1.1019720   1.0903565   1.1135875
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                1.2037951   1.1829449   1.2246453
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                1.2111545   1.1948091   1.2274998
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                1.1868754   1.1695966   1.2041543
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.8598517   0.8291542   0.8905492
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.8397235   0.8159436   0.8635035
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.8514071   0.8245449   0.8782693
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                0.9733479   0.8814437   1.0652521
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                0.9945748   0.9381467   1.0510030
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                0.9438810   0.8999751   0.9877868
12-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                0.9078636   0.8627141   0.9530131
12-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                0.8752367   0.8476641   0.9028093
12-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                0.8912200   0.8651943   0.9172456
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                0.8761660   0.8423475   0.9099846
12-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                0.8620784   0.8359291   0.8882277
12-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                0.8629640   0.8332251   0.8927029
12-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.7344330   0.6861789   0.7826872
12-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.8394686   0.8096108   0.8693265
12-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.8051209   0.7759602   0.8342816
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.8567065   0.8047340   0.9086791
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.8611399   0.8301660   0.8921139
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.8875290   0.8520130   0.9230450
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.8365095   0.7615585   0.9114606
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.7479625   0.7011021   0.7948228
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.7892340   0.7403552   0.8381128
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.6224535   0.4926578   0.7522493
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.7108402   0.6338387   0.7878418
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.7023215   0.6376455   0.7669975
12-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                0.7990988   0.7637265   0.8344711
12-24 months   ki1000108-IRC              INDIA                          <48 cm               NA                0.8473190   0.8143184   0.8803195
12-24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                0.8683468   0.8374046   0.8992890
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.8132003   0.7457640   0.8806366
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.7440982   0.7055692   0.7826272
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7517119   0.7175449   0.7858788
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.8544250   0.8316875   0.8771626
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.8346510   0.8142282   0.8550739
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.8810537   0.8625438   0.8995636
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.8544577   0.8336501   0.8752652
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.8918264   0.8725234   0.9111294
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.8762032   0.8569130   0.8954934
12-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.8380039   0.8206228   0.8553850
12-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.8372655   0.8181393   0.8563918
12-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.8558616   0.8366853   0.8750379
12-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.8568451   0.8009263   0.9127639
12-24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.9314844   0.6699585   1.1930102
12-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.8956811   0.8389820   0.9523801
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.7324026   0.6758623   0.7889428
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.7043021   0.6708667   0.7377375
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.7103785   0.6581094   0.7626475
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.7774913   0.7589404   0.7960422
12-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.7689608   0.7429356   0.7949859
12-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.7640278   0.7415383   0.7865173
12-24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.8512851   0.8415289   0.8610413
12-24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                0.8088336   0.8011448   0.8165224
12-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.8305745   0.8223579   0.8387910
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.7207532   0.7093169   0.7321895
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.7009334   0.6867763   0.7150905
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.7022765   0.6910199   0.7135332
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.8017253   0.7901483   0.8133023
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.7944639   0.7876107   0.8013171
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.8017496   0.7926714   0.8108277
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.8503378   0.8398953   0.8607802
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.8496589   0.8420231   0.8572947
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.8563490   0.8440489   0.8686491


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5618862   3.4982954   3.6254770
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5938067   3.5151131   3.6725003
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8294484   3.7523124   3.9065845
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3146487   3.2509977   3.3782997
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.5184426   3.4211308   3.6157544
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5392594   3.3209576   3.7575612
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6554709   2.4664453   2.8444966
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.9269153   2.2800055   3.5738250
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.4610393   3.3649812   3.5570973
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1413994   3.0946463   3.1881525
0-3 months     ki1114097-CMIN             BRAZIL                         NA                   NA                3.5146220   3.3089330   3.7203110
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3706967   3.3498056   3.3915878
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6117091   2.5680119   2.6554063
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5478988   3.5336609   3.5621367
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184443   3.7081005   3.7287881
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9322597   1.8817976   1.9827218
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1370912   2.0494394   2.2247430
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8567821   1.7912868   1.9222774
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9537710   1.8906776   2.0168644
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0207578   1.9533306   2.0881850
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9630425   1.8758535   2.0502314
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8521056   1.7510494   1.9531617
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8840366   1.6919074   2.0761658
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8963844   1.8303319   1.9624368
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                1.9532124   1.8459665   2.0604583
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9466547   1.9003261   1.9929832
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.7586503   1.6750753   1.8422254
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9507505   1.9059588   1.9955422
3-6 months     ki1114097-CMIN             BRAZIL                         NA                   NA                1.7300458   1.5349283   1.9251633
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9754684   1.9554111   1.9955257
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7456394   1.7115844   1.7796945
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8751782   1.8624443   1.8879121
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9186534   1.9080504   1.9292563
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.9000274   1.8695360   1.9305188
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1139089   1.0886470   1.1391708
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3893396   1.3390346   1.4396445
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1313548   1.1016806   1.1610290
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2038122   1.1754217   1.2322027
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2104362   1.1774244   1.2434480
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.2094885   1.1659224   1.2530545
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0073568   0.9496271   1.0650865
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.1674064   1.0767906   1.2580222
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2475426   1.2172348   1.2778505
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0991031   1.0873380   1.1108683
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1373681   1.0988883   1.1758478
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1782598   1.1573793   1.1991403
6-12 months    ki1114097-CMIN             BRAZIL                         NA                   NA                1.2448939   1.1665303   1.3232574
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1974925   1.1865196   1.2084653
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0259211   1.0057423   1.0460999
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0984962   1.0896302   1.1073622
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0669016   1.0547084   1.0790949
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1070784   1.1002245   1.1139322
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2045728   1.1936968   1.2154488
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8468504   0.8307685   0.8629323
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9692760   0.9358403   1.0027117
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8838136   0.8647106   0.9029166
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8654614   0.8481208   0.8828019
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8466155   0.8250641   0.8681669
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8700558   0.8454663   0.8946452
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7805537   0.7480074   0.8130999
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6952844   0.6464932   0.7440757
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8306573   0.8104592   0.8508554
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7567788   0.7318996   0.7816580
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8474735   0.8350344   0.8599126
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7090807   0.6829531   0.7352082
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7705085   0.7567567   0.7842603
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8265427   0.8213170   0.8317684
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7067961   0.6994517   0.7141404
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7964622   0.7910961   0.8018282
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8515530   0.8456765   0.8574295


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.4280040    0.2296274    0.6263805
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.2473787    0.0454646    0.4492929
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.5077666    0.2924518    0.7230814
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.2774608    0.0861544    0.4687672
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.2079782    0.0307991    0.3851573
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0990591   -0.0978807    0.2959989
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.2893081    0.1164447    0.4621714
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0817922   -0.0881235    0.2517078
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.4500104    0.2633214    0.6366994
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.2956795    0.1018036    0.4895555
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.4175117    0.1654581    0.6695653
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1291063   -0.1248714    0.3830840
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.2336229   -0.0550565    0.5223023
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1386540   -0.1566969    0.4340048
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.7208552    0.0731417    1.3685687
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2343118   -0.3836832    0.8523069
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.1710557    0.9032450    1.4388664
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.7474132    0.5234877    0.9713388
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.9283603    0.4879733    1.3687474
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.5249904    0.0782575    0.9717234
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            1.1986285   -0.4801018    2.8773588
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.4308577   -0.9743250    1.8360405
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.2642418    0.1430868    0.3853969
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0725219   -0.0569521    0.2019959
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.3825866    0.1366890    0.6284842
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.2761897    0.0289226    0.5234567
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0785130   -0.0175999    0.1746260
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0135813   -0.0819480    0.1091107
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.2735835    0.1760725    0.3710944
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.1496509    0.0542784    0.2450234
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.8902461    0.7706640    1.0098283
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.3578106    0.2768555    0.4387656
0-3 months     ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            0.9329551    0.3126313    1.5532789
0-3 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -0.1504465   -0.5860928    0.2851998
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.7329500    0.5694145    0.8964856
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.4095516    0.3158740    0.5032292
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.9460984    0.8975260    0.9946708
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.5118753    0.4667393    0.5570113
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.3952078    0.2921055    0.4983102
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1407511    0.0544466    0.2270556
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.3342342    0.3006642    0.3678042
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1506849    0.1175237    0.1838461
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.3908881    0.3575829    0.4241933
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.1987438    0.1635335    0.2339542
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.3738428    0.2678992    0.4797864
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.1828877    0.0669834    0.2987920
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0176881   -0.1493220    0.1139457
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0997169   -0.2277205    0.0282866
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.1860858   -0.0262519    0.3984234
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.2254951    0.0104574    0.4405327
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0829507   -0.1322073    0.2981087
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0667360   -0.1641499    0.2976219
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.2018810    0.0404340    0.3633280
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1213003   -0.0328326    0.2754331
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.1804870    0.0227768    0.3381972
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.1337906   -0.0187019    0.2862830
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.1974875   -0.0749297    0.4699048
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0238341   -0.2453003    0.2929685
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.2103659   -0.0734864    0.4942182
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0763155   -0.1987599    0.3513909
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.5589868    0.1262699    0.9917037
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.3955422   -0.0613624    0.8524467
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0473888   -0.1199708    0.2147484
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0942142   -0.0626055    0.2510340
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.2273399    0.0168311    0.4378488
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0449245   -0.2638662    0.1740171
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0741100   -0.0120948    0.1603149
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0913481    0.0170086    0.1656876
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0904358   -0.3767589    0.1958873
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.1635522   -0.4411887    0.1140842
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.1373782    0.0594678    0.2152886
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.1256125    0.0527907    0.1984343
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.1338348    0.0449580    0.2227116
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0146356   -0.0676978    0.0969691
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.1774655    0.0804702    0.2744607
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0533231   -0.0414428    0.1480891
3-6 months     ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            0.2562848   -0.2014148    0.7139843
3-6 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm            0.2489594   -0.2129713    0.7108901
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.3065893    0.2132047    0.3999740
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0922536    0.0488525    0.1356547
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0650669    0.0151284    0.1150054
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0185343   -0.0275069    0.0645754
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0956552    0.0211704    0.1701399
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0879344    0.0222128    0.1536560
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.1186467    0.0872576    0.1500358
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0633966    0.0319797    0.0948135
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.0815249    0.0510815    0.1119684
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.0154098   -0.0179853    0.0488049
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0571243   -0.0123539    0.1266024
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0048630   -0.0663278    0.0760539
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.1002814    0.0250629    0.1754999
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0561915   -0.0221551    0.1345381
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0189589   -0.1390558    0.1011381
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0842701   -0.2015486    0.0330084
6-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0460010   -0.0364600    0.1284621
6-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0592927   -0.1438415    0.0252560
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0155617   -0.0552460    0.0863694
6-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0285474   -0.0936788    0.0365840
6-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0175600   -0.0747084    0.1098283
6-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0358049   -0.0600602    0.1316700
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0243079   -0.0585663    0.1071820
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0121315   -0.0904023    0.0661393
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0041844   -0.1439182    0.1522870
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0043292   -0.1401644    0.1488227
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.2686658   -0.5776003    0.0402688
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.2869607   -0.5956757    0.0217543
6-12 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0740277    0.0052840    0.1427714
6-12 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0177038   -0.0802837    0.0448761
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.0354143   -0.0682388   -0.0025898
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0426731   -0.0778969   -0.0074493
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0372751   -0.1460498    0.0714997
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0009844   -0.1149063    0.1129375
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0609035   -0.1057834   -0.0160236
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0440296   -0.0877325   -0.0003267
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0014081   -0.0405559    0.0433721
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0061377   -0.0486080    0.0363327
6-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0601732   -0.1022991   -0.0180472
6-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0490930   -0.0915062   -0.0066799
6-12 months    ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm           -0.1146243   -0.3150543    0.0858058
6-12 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -0.1378598   -0.3039166    0.0281971
6-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0707591   -0.0121251    0.1536434
6-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0724402    0.0299259    0.1149545
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0209204   -0.0058634    0.0477041
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0100928   -0.0352841    0.0150985
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0338778   -0.0084512    0.0762068
6-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0009072   -0.0396903    0.0378759
6-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.0463658   -0.0679491   -0.0247825
6-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0389283   -0.0602702   -0.0175864
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.0320196   -0.0618762   -0.0021630
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0333382   -0.0600738   -0.0066027
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.0106277   -0.0276923    0.0064368
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0163509   -0.0354175    0.0027158
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0073593   -0.0192612    0.0339799
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0169197   -0.0438517    0.0100123
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0201281   -0.0588668    0.0186105
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0084446   -0.0492078    0.0323187
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0212269   -0.0866219    0.1290757
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0294669   -0.1313382    0.0724043
12-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0326269   -0.0852660    0.0200123
12-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0166436   -0.0683138    0.0350266
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0140876   -0.0567606    0.0285854
12-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0132020   -0.0581438    0.0317398
12-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.1050356    0.0484781    0.1615931
12-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0706879    0.0140440    0.1273317
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0044334   -0.0546402    0.0635070
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0308225   -0.0303779    0.0920228
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0885471   -0.1769584   -0.0001358
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0472755   -0.1367165    0.0421654
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0883867   -0.0621958    0.2389692
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0798679   -0.0650261    0.2247620
12-24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0482202   -0.0001542    0.0965945
12-24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0692480    0.0223187    0.1161773
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0691021   -0.1465267    0.0083225
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0614884   -0.1370593    0.0140824
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0197740   -0.0502563    0.0107083
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0266286   -0.0025915    0.0558488
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0373688    0.0090095    0.0657280
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0217456   -0.0065998    0.0500909
12-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0007384   -0.0261757    0.0246990
12-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0178577   -0.0077682    0.0434836
12-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0746393   -0.1905465    0.3398250
12-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0388359   -0.0258287    0.1035006
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0281005   -0.0937777    0.0375768
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0220241   -0.0989890    0.0549408
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0085305   -0.0402029    0.0231419
12-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0134635   -0.0423803    0.0154533
12-24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.0424515   -0.0546986   -0.0302045
12-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0207106   -0.0332954   -0.0081259
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.0198198   -0.0378353   -0.0018043
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0184767   -0.0342950   -0.0026583
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.0072614   -0.0203777    0.0058549
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.0000242   -0.0143444    0.0143928
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0006789   -0.0133350    0.0119772
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0060112   -0.0098796    0.0219021
