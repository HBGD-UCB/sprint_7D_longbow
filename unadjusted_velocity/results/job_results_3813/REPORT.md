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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/ad55546b-b2c0-4c53-ad34-5d49d256061e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ad55546b-b2c0-4c53-ad34-5d49d256061e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                3.2522795   3.0732746   3.4312845
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                3.6731717   3.5855479   3.7607955
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                3.4918246   3.3964815   3.5871677
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                3.6744739   3.4939587   3.8549890
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                4.2474660   4.0735278   4.4214042
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                4.0250297   3.8836689   4.1663904
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                3.4483538   3.2916725   3.6050350
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                3.6577204   3.5495231   3.7659178
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                3.5505449   3.4092055   3.6918843
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                3.7436087   3.5973071   3.8899103
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                3.9500071   3.8239204   4.0760939
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                3.7533587   3.6313726   3.8753449
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                2.9806395   2.7813483   3.1799307
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                3.4279686   3.3446540   3.5112832
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                3.2694537   3.1691187   3.3697886
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                3.2248467   3.0082121   3.4414813
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                3.6365261   3.5051849   3.7678674
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                3.3468696   3.2113565   3.4823828
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                3.3479242   3.0599671   3.6358813
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                3.5990686   3.4635235   3.7346138
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                3.4885550   3.3368186   3.6402914
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                3.1480479   2.5797623   3.7163335
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                3.8484121   3.4966292   4.2001950
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                3.3618918   3.0770504   3.6467331
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                2.5897694   2.4171880   2.7623509
0-3 months     ki1000108-IRC              INDIA                          <48 cm               NA                3.7412094   3.5299622   3.9524567
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                3.3312372   3.1814659   3.4810085
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                2.0930382   1.6772880   2.5087884
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                3.0236025   2.7767638   3.2704412
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                2.5830798   2.3279745   2.8381850
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                2.3837532   1.1058073   3.6616991
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                3.5823817   2.4938094   4.6709540
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                2.8146109   2.2303226   3.3988992
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                3.4418889   3.3165676   3.5672102
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                3.6863653   3.6462742   3.7264565
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                3.5129376   3.4584808   3.5673945
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                3.1720141   2.9366655   3.4073627
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                3.5520249   3.4077417   3.6963082
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                3.4463956   3.3019149   3.5908764
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                3.4383511   3.3543895   3.5223126
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                3.5268818   3.4638113   3.5899522
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                3.4697102   3.4081388   3.5312815
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                3.1420442   3.0624549   3.2216336
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                3.4060899   3.3437281   3.4684516
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                3.2902495   3.2323258   3.3481731
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                2.8844000   2.8238735   2.9449264
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                3.7082788   3.5808454   3.8357121
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                3.2081961   3.1420182   3.2743740
0-3 months     ki1114097-CMIN             BRAZIL                         >=50 cm              NA                3.4602903   3.2229965   3.6975841
0-3 months     ki1114097-CMIN             BRAZIL                         <48 cm               NA                4.1089892   3.4940426   4.7239358
0-3 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                3.3052048   2.9371659   3.6732437
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                2.7969024   2.6860196   2.9077852
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                3.5376955   3.3215499   3.7538411
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                3.1827871   3.0705805   3.2949937
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                2.8900056   2.8535258   2.9264854
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                3.8038551   3.7685508   3.8391593
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                3.3869778   3.3571809   3.4167746
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                2.5159842   2.4550115   2.5769570
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                2.8155120   2.7068424   2.9241817
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                2.6469885   2.5760209   2.7179561
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                3.3896136   3.3600500   3.4191773
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                3.6666004   3.6440194   3.6891814
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                3.5061576   3.4839679   3.5283474
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                3.4667778   3.4297684   3.5037873
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                3.7757253   3.7638870   3.7875637
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                3.6181691   3.6006069   3.6357313
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                3.3868923   3.2708539   3.5029307
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                3.7078850   3.6705085   3.7452615
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                3.5458840   3.4835045   3.6082634
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                1.9896334   1.8637759   2.1154910
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                1.9525245   1.8753491   2.0296999
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                1.8871037   1.8148447   1.9593626
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                2.0359120   1.8512898   2.2205342
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                2.1272772   1.9907639   2.2637906
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                2.1871281   2.0463591   2.3278970
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                1.7869158   1.5880026   1.9858291
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                1.8747683   1.7913699   1.9581667
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                1.8560485   1.7382636   1.9738334
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                1.8340954   1.6712862   1.9969046
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                2.0244157   1.9266177   2.1222136
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                1.9491468   1.8628011   2.0354926
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                1.9443901   1.7034232   2.1853569
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                2.0492811   1.9523874   2.1461748
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                2.0055418   1.9094050   2.1016785
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                1.8718311   1.6348315   2.1088308
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                2.0689674   1.9368956   2.2010391
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                1.9025181   1.7756139   2.0294222
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                1.7077813   1.4713184   1.9442441
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                1.9315544   1.7703734   2.0927353
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                1.8114786   1.6647414   1.9582158
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.4474722   1.1102517   1.7846926
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                2.0185520   1.7395729   2.2975310
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                1.8523607   1.5334462   2.1712752
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                1.8493665   1.7300886   1.9686443
3-6 months     ki1000108-IRC              INDIA                          <48 cm               NA                1.8972999   1.7784287   2.0161710
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                1.9437283   1.8403843   2.0470723
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                1.8643086   1.6557626   2.0728546
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                2.0736989   1.9295820   2.2178158
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                1.8342018   1.6242007   2.0442028
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                1.9173526   1.8612906   1.9734146
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                1.9399528   1.8689038   2.0110017
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                1.9707702   1.8921260   2.0494144
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                1.8770270   1.6118459   2.1422082
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                1.7710116   1.6415572   1.9004659
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.7035837   1.5920047   1.8151627
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                1.8860777   1.8143643   1.9577910
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                2.0056089   1.9432151   2.0680027
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                1.9768055   1.9255216   2.0280895
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                1.9733987   1.8987470   2.0480503
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                2.0704138   2.0064368   2.1343909
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                1.9622657   1.9091458   2.0153856
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                1.9176341   1.8525605   1.9827077
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                2.0507954   1.9567578   2.1448331
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                1.9465344   1.8668286   2.0262403
3-6 months     ki1114097-CMIN             BRAZIL                         >=50 cm              NA                1.6126978   1.3643291   1.8610666
3-6 months     ki1114097-CMIN             BRAZIL                         <48 cm               NA                1.8689826   1.4845325   2.2534327
3-6 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                1.8616572   1.4721795   2.2511350
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                2.0822387   2.0400220   2.1244554
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                2.3217367   2.1700889   2.4733844
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                2.1643533   2.1165776   2.2121290
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.9493165   1.9141002   1.9845327
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                2.0071998   1.9695328   2.0448669
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.9697639   1.9380118   2.0015160
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                1.6862939   1.6399149   1.7326730
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                1.8256192   1.7432464   1.9079920
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                1.7939861   1.7332549   1.8547174
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                1.8218416   1.7948029   1.8488803
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                1.9116823   1.8915442   1.9318203
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                1.8659658   1.8454112   1.8865204
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                1.8825940   1.8543176   1.9108705
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                1.9410313   1.9280708   1.9539919
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                1.8794414   1.8602348   1.8986479
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                1.8786715   1.8251696   1.9321734
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                1.9245393   1.8763625   1.9727161
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                1.8782443   1.8261190   1.9303695
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                1.0584126   0.9849637   1.1318616
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                1.1393691   1.1047891   1.1739492
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                1.0965618   1.0551346   1.1379891
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                1.4122461   1.2965022   1.5279900
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                1.4179747   1.3319660   1.5039833
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                1.3529568   1.2818611   1.4240525
6-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                1.1504570   1.0720636   1.2288505
6-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                1.1701424   1.1282091   1.2120757
6-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                1.0709578   1.0249241   1.1169916
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                1.2157876   1.1574184   1.2741568
6-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                1.2213801   1.1713057   1.2714545
6-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                1.1794275   1.1388003   1.2200547
6-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                1.1863868   1.0960628   1.2767108
6-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                1.2064925   1.1598709   1.2531141
6-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                1.2235038   1.1691764   1.2778312
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                1.1866079   1.0826270   1.2905888
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                1.2474587   1.1712158   1.3237016
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                1.1812546   1.1235590   1.2389501
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                1.0130075   0.8207395   1.2052755
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                1.0083842   0.9163768   1.1003917
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                1.0048210   0.9277937   1.0818483
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.3949270   1.0913004   1.6985537
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                1.1402148   1.0099276   1.2705019
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                1.1140028   0.9948733   1.2331324
6-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                1.2376277   1.1893041   1.2859513
6-12 months    ki1000108-IRC              INDIA                          <48 cm               NA                1.2988121   1.2400410   1.3575831
6-12 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                1.2167358   1.1659558   1.2675159
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                1.1153885   1.0865380   1.1442389
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                1.1001235   1.0823449   1.1179022
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                1.0901141   1.0688213   1.1114070
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                1.1553300   1.0613782   1.2492818
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                1.1180445   1.0632375   1.1728515
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.1543479   1.0899248   1.2187710
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                1.2093077   1.1731256   1.2454898
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                1.1524858   1.1237527   1.1812188
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                1.1692079   1.1425647   1.1958511
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                1.2214293   1.1865018   1.2563567
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                1.2328297   1.2044899   1.2611694
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                1.2274059   1.1989060   1.2559059
6-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                1.2044520   1.1730489   1.2358550
6-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                1.1374848   1.0972399   1.1777297
6-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                1.1596025   1.1236342   1.1955707
6-12 months    ki1114097-CMIN             BRAZIL                         >=50 cm              NA                1.3091539   1.2017343   1.4165734
6-12 months    ki1114097-CMIN             BRAZIL                         <48 cm               NA                1.1418083   0.9476387   1.3359778
6-12 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                1.1732022   1.0419121   1.3044924
6-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                1.4641558   1.4252866   1.5030250
6-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                1.5272832   1.4019789   1.6525875
6-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                1.5400863   1.4868023   1.5933702
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.1914336   1.1720546   1.2108125
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                1.2172217   1.1972382   1.2372052
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.1852741   1.1677220   1.2028263
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                1.0171643   0.9905812   1.0437473
6-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                1.0527649   1.0046792   1.1008506
6-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                1.0221353   0.9831423   1.0611284
6-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                1.1358938   1.1178858   1.1539017
6-12 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                1.0840086   1.0694674   1.0985498
6-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                1.0922739   1.0782105   1.1063374
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                1.0900843   1.0703504   1.1098182
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                1.0534040   1.0286572   1.0781509
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                1.0536908   1.0339043   1.0734774
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                1.1237805   1.1059311   1.1416300
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                1.1062507   1.0979906   1.1145108
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                1.1000235   1.0878355   1.1122116
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                1.2070294   1.1854274   1.2286314
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                1.2112747   1.1946566   1.2278929
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                1.1899252   1.1717677   1.2080827
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.8624130   0.8315817   0.8932442
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.8393207   0.8153751   0.8632663
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.8510310   0.8240745   0.8779875
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                0.9746257   0.8829542   1.0662972
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                0.9933999   0.9368853   1.0499145
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                0.9445653   0.9005979   0.9885327
12-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                0.9042732   0.8542935   0.9542528
12-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                0.8734099   0.8447499   0.9020699
12-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                0.8915011   0.8629528   0.9200495
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                0.8767728   0.8429345   0.9106111
12-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                0.8624101   0.8359300   0.8888902
12-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                0.8623743   0.8323182   0.8924305
12-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.8461972   0.7777100   0.9146844
12-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.8535306   0.8220833   0.8849779
12-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.8366504   0.8053207   0.8679801
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.8506558   0.7867226   0.9145891
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.8613745   0.8271545   0.8955945
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.8864715   0.8458354   0.9271076
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.8386456   0.7584968   0.9187944
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.7534783   0.7061417   0.8008150
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.7949930   0.7441823   0.8458037
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.6256075   0.4915519   0.7596631
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.7093680   0.6316621   0.7870739
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.7036235   0.6375404   0.7697067
12-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                0.7949276   0.7584836   0.8313716
12-24 months   ki1000108-IRC              INDIA                          <48 cm               NA                0.8408452   0.8063142   0.8753762
12-24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                0.8590518   0.8268850   0.8912185
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.8125487   0.7438971   0.8812004
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.7425454   0.7033995   0.7816912
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7520262   0.7175939   0.7864586
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.8544333   0.8313946   0.8774720
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.8349338   0.8144819   0.8553856
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.8807846   0.8622087   0.8993605
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.8533751   0.8319040   0.8748463
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.8897842   0.8701802   0.9093883
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.8750965   0.8555061   0.8946870
12-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.8409054   0.8224396   0.8593711
12-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.8480203   0.8244934   0.8715471
12-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.8581391   0.8360456   0.8802326
12-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.8565902   0.8006870   0.9124934
12-24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.9134603   0.5773488   1.2495718
12-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.8963374   0.8375072   0.9551677
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.7324959   0.6761656   0.7888263
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.7037148   0.6702430   0.7371867
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.7114819   0.6590319   0.7639318
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.7745799   0.7546081   0.7945516
12-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.7692095   0.7389764   0.7994427
12-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.7652653   0.7409771   0.7895535
12-24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.8541841   0.8432056   0.8651625
12-24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                0.8074463   0.7993335   0.8155590
12-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.8308808   0.8222934   0.8394682
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.7208077   0.7088388   0.7327767
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.6970506   0.6819551   0.7121462
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.6999483   0.6882105   0.7116861
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.8016531   0.7883312   0.8149751
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.7944229   0.7874108   0.8014350
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.7990574   0.7894653   0.8086495
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.8509487   0.8401543   0.8617431
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.8497352   0.8420447   0.8574256
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.8558860   0.8431178   0.8686543


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.4208922    0.2215917    0.6201927
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.2395451    0.0367321    0.4423580
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.5729921    0.3223126    0.8236716
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.3505558    0.1212774    0.5798342
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.2093667    0.0189574    0.3997759
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.1021912   -0.1088203    0.3132026
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.2063985    0.0132612    0.3995358
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0097501   -0.1807356    0.2002357
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.4473291    0.2313238    0.6633345
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.2888142    0.0656908    0.5119377
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.4116795    0.1583397    0.6650193
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1220230   -0.1335046    0.3775505
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.2511444   -0.0671192    0.5694081
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1406308   -0.1848584    0.4661200
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.7003642    0.0320082    1.3687202
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2138438   -0.4218315    0.8495192
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.1514400    0.8786585    1.4242215
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.7414678    0.5129600    0.9699755
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.9305642    0.4470587    1.4140697
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.4900415    0.0022640    0.9778190
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            1.1986285   -0.4801018    2.8773588
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.4308577   -0.9743250    1.8360405
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.2444764    0.0965423    0.3924105
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0710487   -0.0756765    0.2177740
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.3800108    0.1039554    0.6560663
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.2743815   -0.0017772    0.5505403
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0885307   -0.0164809    0.1935422
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0313591   -0.0727590    0.1354772
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.2640456    0.1629345    0.3651567
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.1482052    0.0497694    0.2466411
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.8238788    0.6828019    0.9649558
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.3237961    0.2341135    0.4134787
0-3 months     ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            0.6486988   -0.0104428    1.3078405
0-3 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -0.1550855   -0.5929907    0.2828197
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.7407931    0.5184929    0.9630933
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.3858847    0.2836094    0.4881600
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.9138495    0.8630837    0.9646152
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.4969722    0.4498699    0.5440745
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.2995278    0.1749213    0.4241343
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1310043    0.0374410    0.2245675
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.2769868    0.2397858    0.3141877
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1165440    0.0795792    0.1535088
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.3089475    0.2705931    0.3473019
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.1513913    0.1117821    0.1910004
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.3209927    0.1988815    0.4431039
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.1589916    0.0280058    0.2899775
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0371090   -0.1847442    0.1105263
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.1025298   -0.2476555    0.0425960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0913653   -0.1382458    0.3209764
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.1512161   -0.0809503    0.3833825
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0878524   -0.1278366    0.3035415
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0691327   -0.1620378    0.3003031
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.1903203    0.0003959    0.3802447
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1150515   -0.0692375    0.2993404
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.1048910   -0.1548270    0.3646090
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0611517   -0.1982848    0.3205882
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.1971362   -0.0741787    0.4684512
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0306869   -0.2381504    0.2995242
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.2237731   -0.0623981    0.5099443
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1036973   -0.1745947    0.3819894
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.5710798    0.1334190    1.0087405
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.4048885   -0.0592495    0.8690265
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0479334   -0.1204636    0.2163304
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0943618   -0.0634583    0.2521820
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.2093903   -0.0441074    0.4628881
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0301068   -0.3260661    0.2658524
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0226002   -0.0707743    0.1159747
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0534176   -0.0400663    0.1469015
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.1060155   -0.4011079    0.1890769
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.1734433   -0.4611427    0.1142561
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.1195312    0.0244745    0.2145880
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0907279    0.0025641    0.1788916
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0970152   -0.0013003    0.1953306
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0111330   -0.1027550    0.0804890
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.1331613    0.0188037    0.2475189
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0289003   -0.0739958    0.1317964
3-6 months     ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            0.2562848   -0.2014148    0.7139843
3-6 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm            0.2489594   -0.2129713    0.7108901
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.2394980    0.0954615    0.3835344
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0821146    0.0377324    0.1264968
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0578834    0.0063180    0.1094488
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0204474   -0.0269696    0.0678645
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.1393252    0.0447933    0.2338572
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1076922    0.0312769    0.1841075
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.0898407    0.0561267    0.1235546
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0441242    0.0101598    0.0780887
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.0584373    0.0272100    0.0896645
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0031527   -0.0375117    0.0312063
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0458678   -0.0258867    0.1176223
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0004272   -0.0742425    0.0733880
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0809565   -0.0002256    0.1621386
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0381492   -0.0461773    0.1224758
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0057286   -0.1384731    0.1499303
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0592893   -0.1951246    0.0765461
6-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0196854   -0.0692187    0.1085894
6-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0794992   -0.1704093    0.0114109
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0055925   -0.0713127    0.0824977
6-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0363601   -0.1074764    0.0347562
6-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0201057   -0.0815407    0.1217522
6-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0371170   -0.0682865    0.1425205
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0608508   -0.0680872    0.1897888
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0053533   -0.1242684    0.1135618
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0046232   -0.2177719    0.2085254
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0081864   -0.2153100    0.1989372
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.2547122   -0.5851118    0.0756873
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.2809242   -0.6070851    0.0452368
6-12 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0611844   -0.0149025    0.1372712
6-12 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0208919   -0.0909903    0.0492065
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.0152650   -0.0514686    0.0209386
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0252743   -0.0621838    0.0116351
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0372855   -0.1460547    0.0714837
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0009821   -0.1149000    0.1129357
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0568219   -0.1030251   -0.0106187
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0400998   -0.0850331    0.0048336
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0114004   -0.0335781    0.0563789
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0059766   -0.0391030    0.0510563
6-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0669672   -0.1180143   -0.0159201
6-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0448495   -0.0925975    0.0028984
6-12 months    ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm           -0.1673456   -0.3892482    0.0545570
6-12 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -0.1359516   -0.3055867    0.0336835
6-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0631274   -0.0609384    0.1871932
6-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0759305    0.0332097    0.1186513
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0257881   -0.0020486    0.0536249
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0061594   -0.0323056    0.0199867
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0356006   -0.0193439    0.0905451
6-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0049711   -0.0422212    0.0521634
6-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.0518852   -0.0750311   -0.0287393
6-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0436198   -0.0664686   -0.0207710
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.0366803   -0.0683320   -0.0050285
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0363934   -0.0643386   -0.0084482
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.0175298   -0.0367739    0.0017142
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0237570   -0.0451558   -0.0023582
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0042453   -0.0231589    0.0316496
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0171042   -0.0452109    0.0110025
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0230923   -0.0621302    0.0159456
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0113820   -0.0523359    0.0295719
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0187742   -0.0889178    0.1264662
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0300604   -0.1317305    0.0716097
12-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0308632   -0.0884771    0.0267506
12-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0127720   -0.0703304    0.0447864
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0143627   -0.0573304    0.0286050
12-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0143985   -0.0596577    0.0308608
12-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0073334   -0.0680286    0.0826954
12-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0095468   -0.0848598    0.0657662
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0107187   -0.0617966    0.0832340
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0358156   -0.0399389    0.1115702
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0851673   -0.1782510    0.0079165
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0436526   -0.1385502    0.0512450
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0837605   -0.0711882    0.2387092
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0780160   -0.0714426    0.2274746
12-24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0459176   -0.0042875    0.0961227
12-24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0641242    0.0155148    0.1127335
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0700034   -0.1490315    0.0090247
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0605225   -0.1373251    0.0162800
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0194995   -0.0503063    0.0113073
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0263513   -0.0032434    0.0559460
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0364091    0.0073345    0.0654837
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0217214   -0.0073440    0.0507868
12-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0071149   -0.0227933    0.0370230
12-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0172337   -0.0115605    0.0460279
12-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0568701   -0.2810684    0.3948086
12-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0397472   -0.0256968    0.1051912
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0287811   -0.0943057    0.0367435
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0210140   -0.0979822    0.0559542
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0053703   -0.0416045    0.0308638
12-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0093146   -0.0407596    0.0221304
12-24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.0467378   -0.0603886   -0.0330871
12-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0233033   -0.0372413   -0.0093652
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.0237571   -0.0430219   -0.0044923
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0208594   -0.0376235   -0.0040954
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.0072303   -0.0220499    0.0075893
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0025958   -0.0183668    0.0131753
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0012135   -0.0141881    0.0117611
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0049374   -0.0116324    0.0215072
