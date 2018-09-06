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

**Outcome Variable:** y_rate_haz

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
![](/tmp/4c91a62d-88da-4ccc-8781-f43cfe08a2ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4c91a62d-88da-4ccc-8781-f43cfe08a2ea/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.2504762   -0.3345557   -0.1663966
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.0500273    0.0074145    0.0926401
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0974012   -0.1424475   -0.0523548
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0358672   -0.1278728    0.0561385
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.3361396    0.2493326    0.4229466
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.1535154    0.0857642    0.2212666
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.1636247   -0.2397633   -0.0874860
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.0492600   -0.0041603    0.1026802
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0572152   -0.1259959    0.0115655
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0120902   -0.0663604    0.0421799
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.2147105    0.1646480    0.2647730
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.0383930   -0.0058510    0.0826370
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.4170283   -0.4979072   -0.3361494
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0584883   -0.0987990   -0.0181775
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.2032174   -0.2475411   -0.1588938
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.2909175   -0.3962810   -0.1855541
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.0353270   -0.0267166    0.0973706
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.1586946   -0.2216618   -0.0957274
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.2804914   -0.4073020   -0.1536807
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0026224   -0.0680966    0.0733413
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0957696   -0.1687532   -0.0227859
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3533345   -0.6354582   -0.0712107
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1045961   -0.0644190    0.2736112
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1582982   -0.2940630   -0.0225335
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.5992520   -0.6804169   -0.5180871
0-3 months     ki1000108-IRC              INDIA                          <48 cm               NA                 0.0843353   -0.0142549    0.1829255
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.1804887   -0.2495708   -0.1114065
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.7621613   -0.9760512   -0.5482714
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.2023391   -0.3164425   -0.0882357
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.4554868   -0.5638473   -0.3471263
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.6439900   -1.2716080   -0.0163721
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                 0.0437272   -0.4914156    0.5788700
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.4260048   -0.7380428   -0.1139667
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.1157976   -0.1707146   -0.0608806
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                 0.0823858    0.0637011    0.1010706
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.0509885   -0.0819287   -0.0200483
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.2575747   -0.3586756   -0.1564738
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.0139953   -0.0500784    0.0780690
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0880436   -0.1534176   -0.0226696
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.1049672   -0.1404541   -0.0694803
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.0209806   -0.0047083    0.0466694
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0492511   -0.0747857   -0.0237165
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.2503207   -0.2841523   -0.2164891
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0269618   -0.0546908    0.0007672
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.1471011   -0.1724851   -0.1217171
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.4574953   -0.4858604   -0.4291302
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.0818723    0.0233050    0.1404396
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.2355485   -0.2651001   -0.2059970
0-3 months     ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.1551714   -0.2742131   -0.0361296
0-3 months     ki1114097-CMIN             BRAZIL                         <48 cm               NA                 0.4310994    0.1409090    0.7212899
0-3 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                -0.1674642   -0.3411237    0.0061953
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.4623725   -0.5193665   -0.4053785
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                -0.0107752   -0.0849614    0.0634109
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.2067278   -0.2576565   -0.1557992
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4269942   -0.4442317   -0.4097567
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1173892    0.1007334    0.1340449
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.1381281   -0.1520395   -0.1242167
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.6337759   -0.6619850   -0.6055667
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.3312880   -0.3747952   -0.2877807
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.5092432   -0.5405990   -0.4778874
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2066266   -0.2193639   -0.1938894
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                 0.0413957    0.0309288    0.0518626
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0926657   -0.1026432   -0.0826882
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.1393313   -0.1548684   -0.1237941
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                 0.1186451    0.1131011    0.1241891
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0191209   -0.0272671   -0.0109747
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.1036898   -0.1524404   -0.0549392
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.1189067    0.1014240    0.1363894
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0078631   -0.0350654    0.0193393
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0181100   -0.0758696    0.0396497
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0015588   -0.0376400    0.0345225
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0496659   -0.0824827   -0.0168491
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0882084   -0.1620486   -0.0143682
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0395351   -0.0190461    0.0981164
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.0407763   -0.0218370    0.1033895
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.1019007   -0.1830157   -0.0207858
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0317469   -0.0674134    0.0039196
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0705462   -0.1217469   -0.0193455
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1215259   -0.1883310   -0.0547208
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.0197400   -0.0234964    0.0629764
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0422126   -0.0800814   -0.0043439
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0248934   -0.1127353    0.0629486
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.0561977    0.0120072    0.1003882
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.0080919   -0.0341222    0.0503059
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0731269   -0.1841589    0.0379052
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.0535921   -0.0078807    0.1150649
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0394122   -0.0986542    0.0198299
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1526563   -0.2575272   -0.0477854
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0090777   -0.0841747    0.0660193
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0916566   -0.1601207   -0.0231924
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3054138   -0.4329184   -0.1779092
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.0114302   -0.1190641    0.1419246
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0866197   -0.2312823    0.0580429
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0788464   -0.1348847   -0.0228081
3-6 months     ki1000108-IRC              INDIA                          <48 cm               NA                -0.0259425   -0.0819820    0.0300969
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0252250   -0.0740540    0.0236039
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0574125   -0.1397958    0.0249707
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.0914271    0.0272715    0.1555826
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.0450897   -0.1205683    0.0303889
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0709214   -0.0916434   -0.0501994
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0051367   -0.0352446    0.0249713
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.0148247   -0.0449681    0.0153186
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0557828   -0.1789476    0.0673821
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0704731   -0.1314112   -0.0095350
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.1207247   -0.1721351   -0.0693144
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.1150135   -0.1452621   -0.0847649
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0042926   -0.0311884    0.0226032
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0320935   -0.0546685   -0.0095186
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0222182   -0.0532959    0.0088595
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0754753    0.0472658    0.1036847
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0017967   -0.0252702    0.0216769
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0673936   -0.0960443   -0.0387429
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.0368556    0.0009296    0.0727817
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0276412   -0.0624128    0.0071304
3-6 months     ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.2008712   -0.3168610   -0.0848815
3-6 months     ki1114097-CMIN             BRAZIL                         <48 cm               NA                -0.0314492   -0.2231421    0.1602436
3-6 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                -0.0516048   -0.2372430    0.1340335
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0405266    0.0207552    0.0602980
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.2119360    0.1669219    0.2569501
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.1037837    0.0817174    0.1258500
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0240307   -0.0399644   -0.0080969
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0271207    0.0100409    0.0442005
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0062654   -0.0208117    0.0082808
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1607059   -0.1814002   -0.1400116
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0678371   -0.0992373   -0.0364369
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0922433   -0.1168809   -0.0676058
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1091958   -0.1207390   -0.0976526
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0198720   -0.0288816   -0.0108625
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0636594   -0.0727288   -0.0545901
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.0479153   -0.0608008   -0.0350297
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                 0.0151600    0.0091201    0.0211999
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0354772   -0.0439925   -0.0269618
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0328654   -0.0569648   -0.0087660
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.0178201   -0.0033250    0.0389651
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0242430   -0.0470454   -0.0014406
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.1306301   -0.1608643   -0.1003959
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0637378   -0.0778162   -0.0496594
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0940313   -0.1106332   -0.0774294
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0087983   -0.0355235    0.0531201
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0261747   -0.0072107    0.0595602
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0104482   -0.0393058    0.0184094
6-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0813650   -0.1152796   -0.0474503
6-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0497003   -0.0670120   -0.0323885
6-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.1039177   -0.1237640   -0.0840713
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0744676   -0.0941599   -0.0547754
6-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0429174   -0.0612329   -0.0246018
6-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0710939   -0.0870457   -0.0551421
6-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0916421   -0.1153170   -0.0679672
6-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0377201   -0.0558550   -0.0195852
6-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0427485   -0.0641965   -0.0213006
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0641489   -0.1069122   -0.0213856
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0244360   -0.0563944    0.0075223
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0581999   -0.0819762   -0.0344236
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1343486   -0.1925225   -0.0761748
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.1140974   -0.1484827   -0.0797120
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.1240139   -0.1531722   -0.0948557
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0119134   -0.1015365    0.1253634
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0688868   -0.1284223   -0.0093512
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1003008   -0.1527105   -0.0478911
6-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0352442   -0.0543981   -0.0160902
6-12 months    ki1000108-IRC              INDIA                          <48 cm               NA                 0.0141611   -0.0097271    0.0380493
6-12 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0357927   -0.0563622   -0.0152233
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0848544   -0.0959005   -0.0738083
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0749789   -0.0832360   -0.0667219
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.0945220   -0.1032668   -0.0857772
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0789664   -0.1204257   -0.0375070
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0638668   -0.0868220   -0.0409116
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0620382   -0.0883717   -0.0357047
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0586696   -0.0724697   -0.0448696
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0588070   -0.0701434   -0.0474707
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0664089   -0.0767255   -0.0560923
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0418796   -0.0545680   -0.0291913
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0177436   -0.0284762   -0.0070109
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0333354   -0.0443374   -0.0223334
6-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0579953   -0.0706111   -0.0453794
6-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0670119   -0.0801904   -0.0538334
6-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0679579   -0.0814233   -0.0544924
6-12 months    ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.0164685   -0.0592102    0.0262731
6-12 months    ki1114097-CMIN             BRAZIL                         <48 cm               NA                -0.0480703   -0.1175375    0.0213969
6-12 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                -0.0585862   -0.1118004   -0.0053721
6-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0381375    0.0213361    0.0549389
6-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.0907067    0.0568872    0.1245262
6-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.0846521    0.0624212    0.1068831
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0571981   -0.0652044   -0.0491917
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0354394   -0.0436509   -0.0272278
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0557097   -0.0630136   -0.0484059
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1178661   -0.1278417   -0.1078906
6-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0741726   -0.0887769   -0.0595683
6-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.1021760   -0.1150171   -0.0893349
6-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0921228   -0.0990530   -0.0851926
6-12 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0861630   -0.0920492   -0.0802769
6-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0963973   -0.1020684   -0.0907262
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.1006117   -0.1086823   -0.0925411
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.0914934   -0.1011557   -0.0818310
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.1042111   -0.1121985   -0.0962237
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.0845411   -0.0910599   -0.0780223
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.0682697   -0.0716996   -0.0648398
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0871098   -0.0920538   -0.0821658
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0462261   -0.0550371   -0.0374151
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0270362   -0.0339332   -0.0201392
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0513967   -0.0587912   -0.0440021
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0231401   -0.0350167   -0.0112634
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0155571   -0.0230065   -0.0081076
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0181040   -0.0276605   -0.0085476
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0053230   -0.0339654    0.0233193
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0141883   -0.0049489    0.0333254
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0088166   -0.0236744    0.0060412
12-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0158559   -0.0318640    0.0001522
12-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0078615   -0.0157264    0.0000033
12-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0073263   -0.0160697    0.0014172
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0350234   -0.0470623   -0.0229846
12-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0216404   -0.0306541   -0.0126267
12-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0283057   -0.0372607   -0.0193508
12-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0252251   -0.0461173   -0.0043330
12-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0030513   -0.0131384    0.0070358
12-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0171327   -0.0277575   -0.0065078
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0281423   -0.0458968   -0.0103878
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0165797   -0.0271442   -0.0060151
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0101245   -0.0214159    0.0011669
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0369256   -0.0648837   -0.0089674
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0422814   -0.0571601   -0.0274028
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0389533   -0.0554312   -0.0224753
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0981383   -0.1435602   -0.0527165
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0588416   -0.0868684   -0.0308149
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0677227   -0.0903207   -0.0451247
12-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0478729   -0.0606651   -0.0350808
12-24 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.0177360   -0.0301637   -0.0053083
12-24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0203047   -0.0312407   -0.0093687
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0306562   -0.0475244   -0.0137880
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0267581   -0.0376423   -0.0158738
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0443723   -0.0536957   -0.0350488
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0194679   -0.0273101   -0.0116258
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0056197   -0.0119118    0.0006725
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0038020   -0.0096985    0.0020944
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0218736   -0.0290492   -0.0146979
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0074354    0.0010623    0.0138084
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0066344   -0.0126994   -0.0005694
12-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0287426   -0.0350778   -0.0224075
12-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0143984   -0.0210198   -0.0077769
12-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0115509   -0.0180704   -0.0050314
12-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0453798   -0.0635368   -0.0272229
12-24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                -0.0028400   -0.0869635    0.0812834
12-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.0186469   -0.0361395   -0.0011544
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0494878   -0.0715306   -0.0274449
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0504136   -0.0623667   -0.0384604
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0566070   -0.0747304   -0.0384836
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0396159   -0.0456629   -0.0335689
12-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0197264   -0.0274542   -0.0119986
12-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0305924   -0.0377017   -0.0234830
12-24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0405230   -0.0438019   -0.0372441
12-24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0313832   -0.0339810   -0.0287853
12-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0359432   -0.0386908   -0.0331957
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0619029   -0.0658603   -0.0579454
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.0492242   -0.0540635   -0.0443849
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.0580054   -0.0618641   -0.0541466
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.0299301   -0.0341607   -0.0256994
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.0139791   -0.0162663   -0.0116919
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0254356   -0.0284367   -0.0224346
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0202039   -0.0238466   -0.0165613
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0088187   -0.0115412   -0.0060963
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0174353   -0.0216011   -0.0132695


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0363947   -0.0688597   -0.0039297
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0153462   -0.0550164    0.0243240
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0760369    0.0401947    0.1118791
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1589969   -0.1917348   -0.1262591
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0654000   -0.1157142   -0.0150858
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0733847   -0.1808133    0.0340439
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.4476526   -0.5443849   -0.3509203
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.3420892   -0.6722417   -0.0119367
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0639988   -0.1111616   -0.0168360
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2885587   -0.3120986   -0.2650189
0-3 months     ki1114097-CMIN             BRAZIL                         NA                   NA                -0.0853247   -0.1864247    0.0157752
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1428175   -0.1532252   -0.1324098
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5431999   -0.5652020   -0.5211979
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0623259   -0.0692941   -0.0553576
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705261    0.0655716    0.0754805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0208790   -0.0445702    0.0028121
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0559535    0.0155245    0.0963825
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0543629   -0.0848579   -0.0238679
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0277330   -0.0575360    0.0020701
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0279148   -0.0039325    0.0597622
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0086078   -0.0498200    0.0326044
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0621262   -0.1094288   -0.0148237
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0600475   -0.1497972    0.0297023
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0449501   -0.0761141   -0.0137861
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0227996   -0.0271403    0.0727396
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0135420   -0.0341135    0.0070296
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0884563   -0.1274675   -0.0494451
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0388978   -0.0598050   -0.0179906
3-6 months     ki1114097-CMIN             BRAZIL                         NA                   NA                -0.1284667   -0.2215654   -0.0353680
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0006556   -0.0100416    0.0087304
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1056524   -0.1218342   -0.0894706
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0555413   -0.0614176   -0.0496651
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0041847   -0.0091112    0.0007418
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0084552   -0.0224890    0.0055787
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0811035   -0.0916744   -0.0705326
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0078601   -0.0135577    0.0292779
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0735301   -0.0862488   -0.0608114
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0566001   -0.0683295   -0.0448707
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0373769   -0.0515603   -0.0231935
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0452163   -0.0634783   -0.0269544
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1245167   -0.1487719   -0.1002614
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0580428   -0.0982112   -0.0178744
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0265858   -0.0399923   -0.0131792
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0858474   -0.0904582   -0.0812366
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0651644   -0.0811867   -0.0491420
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0630034   -0.0718934   -0.0541134
6-12 months    ki1114097-CMIN             BRAZIL                         NA                   NA                -0.0386609   -0.0700728   -0.0072490
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0495577   -0.0542393   -0.0448762
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1072243   -0.1155466   -0.0989020
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0910390   -0.0947339   -0.0873442
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.1001444   -0.1052550   -0.0950339
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748578   -0.0777526   -0.0719629
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0377711   -0.0423440   -0.0331983
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0176338   -0.0231006   -0.0121671
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0042771   -0.0157130    0.0071587
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0088022   -0.0144451   -0.0031592
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0277787   -0.0334672   -0.0220901
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092474   -0.0165255   -0.0019693
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0157587   -0.0240637   -0.0074537
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0375240   -0.0482291   -0.0268189
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0679715   -0.0861504   -0.0497925
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0315534   -0.0388761   -0.0242307
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0368278   -0.0443019   -0.0293536
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0193019   -0.0236985   -0.0149053
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0522086   -0.0614824   -0.0429349
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0330551   -0.0377001   -0.0284101
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0350955   -0.0368190   -0.0333720
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0575848   -0.0601109   -0.0550587
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0189630   -0.0208220   -0.0171040
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0140596   -0.0161303   -0.0119889


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.3005035    0.2062161   0.3947909
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.1530750    0.0577504   0.2483997
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.3720068    0.2455107   0.4985028
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.1893826    0.0751528   0.3036124
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.2128846    0.1198781   0.3058912
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.1064095    0.0044222   0.2083967
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.2268008    0.1515563   0.3020452
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0504833   -0.0166726   0.1176392
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.3585401    0.2680240   0.4490561
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.2138109    0.1215751   0.3060467
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.3262445    0.2039753   0.4485138
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1322229    0.0094849   0.2549610
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.2831137    0.1352686   0.4309588
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1847218    0.0376466   0.3317970
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.4579306    0.1293904   0.7864708
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.1950362   -0.1178628   0.5079353
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.6835873    0.5568104   0.8103643
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.4187634    0.3129928   0.5245340
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.5598222    0.3179765   0.8016679
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.3066745    0.0656024   0.5477467
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.6877173   -0.1370749   1.5125094
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.2179853   -0.4829227   0.9188933
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.1981834    0.1382588   0.2581081
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0648090    0.0005881   0.1290300
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.2715700    0.1516479   0.3914920
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.1695311    0.0487649   0.2902972
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.1259478    0.0826924   0.1692031
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0557161    0.0131164   0.0983158
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.2233589    0.1796196   0.2670983
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.1032196    0.0609437   0.1454954
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.5393676    0.4743087   0.6044265
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.2219468    0.1810581   0.2628354
0-3 months     ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            0.5862708    0.2722129   0.9003287
0-3 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -0.0122929   -0.2226880   0.1981023
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.4515972    0.3706161   0.5325784
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.2556447    0.2079169   0.3033724
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.5443834    0.5204278   0.5683390
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.2888662    0.2667438   0.3109885
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.3024879    0.2505890   0.3543868
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1245327    0.0823488   0.1667165
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.2480223    0.2316281   0.2644165
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1139609    0.0978680   0.1300538
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.2579764    0.2418431   0.2741097
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.1202104    0.1032400   0.1371809
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.2225965    0.1708721   0.2743209
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0958267    0.0397762   0.1518773
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0165512   -0.0515063   0.0846086
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0315560   -0.0979229   0.0348110
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.1277435    0.0335780   0.2219090
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.1289846    0.0326878   0.2252814
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0701538   -0.0177011   0.1580087
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0313545   -0.0632766   0.1259856
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.1412659    0.0617617   0.2207701
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0793133    0.0026386   0.1559879
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0810911   -0.0168530   0.1790352
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0329852   -0.0641924   0.1301629
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.1267189    0.0000693   0.2533686
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0337147   -0.0918251   0.1592545
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.1435786    0.0144850   0.2726722
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0609997   -0.0641114   0.1861109
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.3168441    0.1346424   0.4990458
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2187941    0.0256630   0.4119253
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0529038   -0.0263471   0.1321547
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0536213   -0.0207060   0.1279487
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.1488396    0.0446405   0.2530387
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0123228   -0.0988749   0.1235206
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0657847    0.0245094   0.1070600
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0560967    0.0224277   0.0897657
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0146903   -0.1521054   0.1227247
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0649420   -0.1984051   0.0685212
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.1107209    0.0702618   0.1511800
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0829200    0.0453494   0.1204906
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0976935    0.0559399   0.1394470
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0204216   -0.0183793   0.0592224
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.1042493    0.0586009   0.1498976
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0397524   -0.0046856   0.0841905
3-6 months     ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            0.1694220   -0.0546298   0.3934737
3-6 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm            0.1492664   -0.0696271   0.3681600
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.1714094    0.1286603   0.2141585
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0632571    0.0423802   0.0841340
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0511514    0.0278425   0.0744602
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0177652   -0.0037441   0.0392745
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0928688    0.0551979   0.1305397
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0684626    0.0363545   0.1005706
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.0893238    0.0747170   0.1039305
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0455364    0.0309131   0.0601596
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.0630753    0.0488693   0.0772812
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.0124381   -0.0030575   0.0279337
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0506854    0.0189005   0.0824704
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0086224   -0.0240149   0.0412597
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0668923    0.0335287   0.1002559
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0365988    0.0021380   0.0710595
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0173764   -0.0371206   0.0718734
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0192466   -0.0716027   0.0331096
6-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0316647   -0.0064122   0.0697416
6-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0225527   -0.0618470   0.0167416
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0315503    0.0047274   0.0583731
6-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0033738   -0.0219847   0.0287322
6-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0539220    0.0240077   0.0838363
6-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0488935    0.0170115   0.0807756
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0397129   -0.0135744   0.0930001
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0059490   -0.0428700   0.0547680
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0202513   -0.0463742   0.0868768
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0103347   -0.0546135   0.0752829
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0808002   -0.2087517   0.0471513
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.1122142   -0.2377144   0.0132860
6-12 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0494053    0.0193549   0.0794557
6-12 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0005486   -0.0279076   0.0268104
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0098754   -0.0030827   0.0228336
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0096676   -0.0230770   0.0037417
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0150995   -0.0322909   0.0624900
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0169282   -0.0321875   0.0660438
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0001374   -0.0179547   0.0176799
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0077393   -0.0249180   0.0094395
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0241361    0.0076716   0.0406005
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0085442   -0.0080874   0.0251759
6-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0090166   -0.0270424   0.0090091
6-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0099626   -0.0280304   0.0081052
6-12 months    ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm           -0.0316018   -0.1142869   0.0510833
6-12 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -0.0421177   -0.1099146   0.0256792
6-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0525692    0.0186102   0.0865281
6-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0465146    0.0285512   0.0644780
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0217587    0.0103203   0.0331971
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0014883   -0.0092976   0.0122742
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0436935    0.0263408   0.0610462
6-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0156901   -0.0001030   0.0314832
6-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.0059598   -0.0030883   0.0150079
6-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0042745   -0.0131876   0.0046386
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.0091183   -0.0033981   0.0216348
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0035994   -0.0148525   0.0076536
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.0162714    0.0090234   0.0235194
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0025687   -0.0106573   0.0055198
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0191899    0.0078952   0.0304847
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0051705   -0.0165360   0.0061950
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0075830   -0.0063968   0.0215627
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0050360   -0.0102085   0.0202805
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0195113   -0.0151415   0.0541641
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0034936   -0.0356247   0.0286375
12-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0079944   -0.0098159   0.0258047
12-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0085296   -0.0096399   0.0266992
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0133831   -0.0016551   0.0284212
12-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0067177   -0.0082908   0.0217262
12-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0221738   -0.0011588   0.0455065
12-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0080925   -0.0154230   0.0316079
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0115626   -0.0084413   0.0315665
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0180179   -0.0022818   0.0383175
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0053559   -0.0370411   0.0263293
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0020277   -0.0344777   0.0304222
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0392967   -0.0137965   0.0923900
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0304157   -0.0204808   0.0813122
12-24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0301370    0.0123116   0.0479623
12-24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0275683    0.0107962   0.0443404
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0038981   -0.0161868   0.0239831
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0137161   -0.0330850   0.0056528
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0138483    0.0038352   0.0238614
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0156659    0.0059022   0.0254296
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0293089    0.0197153   0.0389025
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0152392    0.0058406   0.0246378
12-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0143443    0.0052980   0.0233906
12-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0171917    0.0081779   0.0262056
12-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0425398   -0.0437510   0.1288306
12-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0267329    0.0064058   0.0470599
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0009258   -0.0259891   0.0241375
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0071192   -0.0356533   0.0214149
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0198895    0.0102242   0.0295549
12-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0090236    0.0000199   0.0180272
12-24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.0091398    0.0049876   0.0132920
12-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0045798    0.0003325   0.0088270
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.0126787    0.0064716   0.0188857
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            0.0038975   -0.0015650   0.0093599
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.0159509    0.0112721   0.0206298
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.0044945   -0.0005151   0.0095040
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0113852    0.0069844   0.0157860
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0027686   -0.0026732   0.0082104
