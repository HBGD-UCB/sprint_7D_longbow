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
![](/tmp/91ca7cbf-02d4-49f1-b31a-1504c39d8496/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/91ca7cbf-02d4-49f1-b31a-1504c39d8496/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.2529330   -0.3407371   -0.1651289
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.0509468    0.0081630    0.0937306
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0998849   -0.1454305   -0.0543394
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0351585   -0.1271585    0.0568415
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.3364499    0.2496460    0.4232538
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.1528912    0.0850648    0.2207177
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.1659787   -0.2379280   -0.0940293
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.0531426   -0.0006584    0.1069436
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0634987   -0.1316865    0.0046890
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0176530   -0.0843327    0.0490266
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.1782088    0.1210330    0.2353846
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.0232920   -0.0284330    0.0750171
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.3916700   -0.4902523   -0.2930877
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0650975   -0.1068685   -0.0233264
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.2102802   -0.2578061   -0.1627543
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.2908597   -0.3962398   -0.1854796
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.0353254   -0.0267223    0.0973731
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.1587187   -0.2216969   -0.0957405
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.2333606   -0.3707158   -0.0960054
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0152628   -0.0571192    0.0876447
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0960614   -0.1686876   -0.0234353
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3519464   -0.6358696   -0.0680233
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1043299   -0.0649079    0.2735677
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1584738   -0.2940444   -0.0229031
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.5956704   -0.6790796   -0.5122611
0-3 months     ki1000108-IRC              INDIA                          <48 cm               NA                 0.0822817   -0.0191686    0.1837319
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.1791475   -0.2497957   -0.1084993
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.8020395   -1.0206270   -0.5834520
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.2169008   -0.3308216   -0.1029800
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.4914804   -0.6011795   -0.3817812
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.6439900   -1.2716080   -0.0163721
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                 0.0437272   -0.4914156    0.5788700
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.4260048   -0.7380428   -0.1139667
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.1364642   -0.2054986   -0.0674299
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                 0.0812376    0.0623476    0.1001277
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.0542515   -0.0887998   -0.0197032
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.2815102   -0.4016290   -0.1613914
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.0166496   -0.0513976    0.0846967
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0907190   -0.1594358   -0.0220021
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.1111109   -0.1507816   -0.0714402
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.0182255   -0.0096763    0.0461274
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0528899   -0.0806352   -0.0251446
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.2395382   -0.2752699   -0.2038065
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0316815   -0.0609609   -0.0024022
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.1458870   -0.1722002   -0.1195738
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.4524428   -0.4815686   -0.4233170
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.0594243   -0.0044453    0.1232938
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.2382269   -0.2687889   -0.2076650
0-3 months     ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.1571206   -0.2705218   -0.0437194
0-3 months     ki1114097-CMIN             BRAZIL                         <48 cm               NA                 0.3150170    0.0347002    0.5953338
0-3 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                -0.1695177   -0.3475830    0.0085477
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.4603814   -0.5178853   -0.4028776
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                -0.0203484   -0.1297794    0.0890826
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.2334078   -0.2888210   -0.1779945
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4248172   -0.4425379   -0.4070965
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1165779    0.0995045    0.1336513
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.1374844   -0.1516105   -0.1233582
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.6311901   -0.6608215   -0.6015587
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.3612882   -0.4137448   -0.3088316
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.5074337   -0.5411020   -0.4737653
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2018971   -0.2159392   -0.1878550
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                 0.0371156    0.0264104    0.0478209
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0932592   -0.1035729   -0.0829455
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.1260185   -0.1437231   -0.1083138
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                 0.1183372    0.1127879    0.1238866
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0169457   -0.0252163   -0.0086750
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.1018554   -0.1575912   -0.0461196
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.1193253    0.1016124    0.1370381
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0070919   -0.0348445    0.0206606
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0183276   -0.0765855    0.0399302
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.0007885   -0.0354332    0.0370102
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0521602   -0.0856387   -0.0186817
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0056932   -0.0871329    0.0757465
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0664107    0.0040956    0.1287258
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.0713360    0.0052809    0.1373912
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.1151553   -0.2070633   -0.0232473
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0321263   -0.0699992    0.0057465
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0642996   -0.1197775   -0.0088218
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1030483   -0.1787749   -0.0273217
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.0214224   -0.0238027    0.0666474
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0354108   -0.0760273    0.0052057
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0297076   -0.1418616    0.0824465
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.0547264    0.0090724    0.1003803
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.0091397   -0.0361413    0.0544206
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0767485   -0.1889680    0.0354710
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.0545276   -0.0071412    0.1161964
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0387562   -0.0983646    0.0208523
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1617835   -0.2743986   -0.0491685
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0078622   -0.0815737    0.0658494
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0895716   -0.1580015   -0.0211417
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3005896   -0.4555183   -0.1456609
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.0109576   -0.1188331    0.1407483
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0731847   -0.2203325    0.0739631
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0788464   -0.1348847   -0.0228081
3-6 months     ki1000108-IRC              INDIA                          <48 cm               NA                -0.0259425   -0.0819820    0.0300969
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0252250   -0.0740540    0.0236039
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0448169   -0.1393809    0.0497472
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.0930318    0.0251632    0.1609003
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.0342116   -0.1276412    0.0592180
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0537677   -0.0796971   -0.0278383
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0038843   -0.0364358    0.0286672
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.0106920   -0.0456504    0.0242663
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0557791   -0.1789476    0.0673894
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0704752   -0.1314133   -0.0095371
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.1207235   -0.1721345   -0.0693126
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0878513   -0.1212345   -0.0544680
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.0094986   -0.0194109    0.0384081
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0237641   -0.0475410    0.0000129
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0069365   -0.0418759    0.0280028
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0742694    0.0451126    0.1034263
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.0002234   -0.0239104    0.0243572
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0671675   -0.0974124   -0.0369225
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.0267242   -0.0163675    0.0698159
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0316203   -0.0690096    0.0057689
3-6 months     ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.2008795   -0.3168687   -0.0848902
3-6 months     ki1114097-CMIN             BRAZIL                         <48 cm               NA                -0.0314053   -0.2231108    0.1603002
3-6 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                -0.0516085   -0.2372517    0.1340346
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0410137    0.0212371    0.0607903
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.1789651    0.1098345    0.2480957
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.0974623    0.0747836    0.1201410
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0245129   -0.0410453   -0.0079806
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0266014    0.0090252    0.0441777
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0045296   -0.0193527    0.0102935
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1508191   -0.1727004   -0.1289378
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0363897   -0.0751891    0.0024098
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0740960   -0.1018060   -0.0463859
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1047795   -0.1173276   -0.0922314
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0217719   -0.0309684   -0.0125754
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0641233   -0.0735040   -0.0547425
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.0390375   -0.0521629   -0.0259122
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                 0.0154073    0.0093363    0.0214783
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0366112   -0.0454613   -0.0277610
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0341369   -0.0587758   -0.0094979
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.0166589   -0.0054179    0.0387358
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0266129   -0.0504211   -0.0028046
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.1224369   -0.1537154   -0.0911583
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0630433   -0.0771999   -0.0488867
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0927939   -0.1094738   -0.0761139
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0040367   -0.0437343    0.0518077
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0275656   -0.0091608    0.0642920
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0091119   -0.0394501    0.0212264
6-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0813601   -0.1152779   -0.0474423
6-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0497022   -0.0670145   -0.0323899
6-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.1039167   -0.1237634   -0.0840700
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0652894   -0.0889959   -0.0415829
6-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0402691   -0.0603090   -0.0202293
6-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0679848   -0.0852570   -0.0507126
6-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0595665   -0.0968452   -0.0222877
6-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0319556   -0.0516429   -0.0122683
6-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0377908   -0.0618037   -0.0137778
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0665413   -0.1097506   -0.0233321
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0238329   -0.0558512    0.0081853
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0578628   -0.0817268   -0.0339988
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1363842   -0.2188470   -0.0539213
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.1160851   -0.1542717   -0.0778986
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.1304564   -0.1629914   -0.0979213
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0407906   -0.0934546    0.1750358
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0692103   -0.1264319   -0.0119886
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0820370   -0.1360234   -0.0280505
6-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0386845   -0.0597109   -0.0176582
6-12 months    ki1000108-IRC              INDIA                          <48 cm               NA                 0.0057044   -0.0201728    0.0315815
6-12 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0399606   -0.0625139   -0.0174073
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0956507   -0.1074712   -0.0838302
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0765173   -0.0843412   -0.0686934
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.0967286   -0.1050717   -0.0883855
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0789616   -0.1204155   -0.0375077
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0638720   -0.0868280   -0.0409160
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0620336   -0.0883687   -0.0356985
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0607607   -0.0754240   -0.0460973
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0594228   -0.0711467   -0.0476990
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0665485   -0.0771250   -0.0559721
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0479478   -0.0627843   -0.0331113
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0197577   -0.0314357   -0.0080796
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0336562   -0.0454578   -0.0218545
6-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0587355   -0.0724204   -0.0450506
6-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0683245   -0.0850043   -0.0516447
6-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0667776   -0.0817134   -0.0518419
6-12 months    ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.0182427   -0.0613287    0.0248433
6-12 months    ki1114097-CMIN             BRAZIL                         <48 cm               NA                -0.0758829   -0.1541526    0.0023869
6-12 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                -0.0597462   -0.1133865   -0.0061058
6-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0375456    0.0207656    0.0543255
6-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.0896793    0.0335342    0.1458245
6-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.0897260    0.0661390    0.1133129
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0581208   -0.0664368   -0.0498047
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0350490   -0.0435026   -0.0265953
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0557913   -0.0632873   -0.0482953
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1207099   -0.1316877   -0.1097322
6-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0789199   -0.0986428   -0.0591971
6-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.1039799   -0.1195841   -0.0883758
6-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0900011   -0.0975331   -0.0824692
6-12 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0864717   -0.0925516   -0.0803918
6-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0966689   -0.1025182   -0.0908196
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0999603   -0.1083192   -0.0916013
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.0928093   -0.1030650   -0.0825536
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.1050224   -0.1133168   -0.0967280
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.0811322   -0.0887449   -0.0735196
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.0688417   -0.0723179   -0.0653654
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0875022   -0.0927114   -0.0822931
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0447458   -0.0538181   -0.0356734
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0274031   -0.0343995   -0.0204067
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0501833   -0.0578504   -0.0425162
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0235071   -0.0355992   -0.0114150
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0153928   -0.0229152   -0.0078704
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0184370   -0.0282101   -0.0086640
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0193100   -0.0483207    0.0097007
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0102590   -0.0090293    0.0295472
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0129782   -0.0281335    0.0021770
12-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0167917   -0.0333512   -0.0002321
12-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0079033   -0.0158638    0.0000571
12-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0072982   -0.0163240    0.0017277
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0362738   -0.0484105   -0.0241371
12-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0221094   -0.0311217   -0.0130970
12-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0288907   -0.0378474   -0.0199341
12-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0181083   -0.0422166    0.0059999
12-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0017503   -0.0119432    0.0084427
12-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0172056   -0.0280016   -0.0064097
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0303404   -0.0527575   -0.0079233
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0168464   -0.0287651   -0.0049276
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0089935   -0.0220504    0.0040634
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0326737   -0.0628214   -0.0025260
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0400278   -0.0552634   -0.0247922
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0360521   -0.0532140   -0.0188902
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0995587   -0.1496282   -0.0494893
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0599544   -0.0888203   -0.0310884
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0661410   -0.0905351   -0.0417468
12-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0489606   -0.0620226   -0.0358986
12-24 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.0194585   -0.0323107   -0.0066063
12-24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0234143   -0.0347663   -0.0120624
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0361774   -0.0564571   -0.0158976
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0316236   -0.0435960   -0.0196512
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0427415   -0.0530877   -0.0323953
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0189840   -0.0269776   -0.0109903
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0057814   -0.0120858    0.0005231
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0039420   -0.0098648    0.0019808
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0225431   -0.0300256   -0.0150606
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0061507   -0.0003738    0.0126752
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0073145   -0.0135099   -0.0011190
12-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0270113   -0.0337092   -0.0203134
12-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0114909   -0.0195336   -0.0034483
12-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0108249   -0.0181185   -0.0035314
12-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0454784   -0.0636387   -0.0273180
12-24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                -0.0057362   -0.1187936    0.1073211
12-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.0184719   -0.0374079    0.0004641
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0494419   -0.0714790   -0.0274049
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0506078   -0.0625789   -0.0386367
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0562472   -0.0743816   -0.0381129
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0387820   -0.0455882   -0.0319757
12-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0232373   -0.0330517   -0.0134228
12-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0312925   -0.0394624   -0.0231226
12-24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0390042   -0.0426373   -0.0353712
12-24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0322312   -0.0349301   -0.0295323
12-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0358898   -0.0387254   -0.0330543
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0608947   -0.0650276   -0.0567617
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.0507171   -0.0559068   -0.0455274
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.0588963   -0.0629162   -0.0548764
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.0286280   -0.0336088   -0.0236472
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.0144073   -0.0167415   -0.0120732
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0257765   -0.0289639   -0.0225891
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0201840   -0.0239125   -0.0164556
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0091930   -0.0119418   -0.0064442
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0174355   -0.0217387   -0.0131323


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.3038798    0.2062068   0.4015528
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.1530480    0.0541342   0.2519619
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.3716084    0.2451216   0.4980952
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.1880497    0.0737500   0.3023494
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.2191213    0.1292811   0.3089614
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.1024799    0.0033523   0.2016075
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.1958619    0.1080254   0.2836983
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0409451   -0.0434448   0.1253350
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.3265725    0.2195058   0.4336393
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.1813899    0.0719496   0.2908302
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.3261852    0.2038950   0.4484753
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1321410    0.0093761   0.2549059
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.2486233    0.0933636   0.4038831
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1372991   -0.0180747   0.2926729
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.4562763    0.1257407   0.7868120
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.1934727   -0.1211569   0.5081022
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.6779521    0.5466156   0.8092885
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.4165229    0.3072147   0.5258310
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.5851387    0.3386464   0.8316310
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.3105591    0.0659893   0.5551289
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.6877173   -0.1370749   1.5125094
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.2179853   -0.4829227   0.9188933
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.2177019    0.1412622   0.2941415
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0822127    0.0039139   0.1605116
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.2981598    0.1601057   0.4362139
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.1907913    0.0524058   0.3291767
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.1293364    0.0808361   0.1778368
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0582210    0.0098106   0.1066314
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.2078567    0.1616611   0.2540523
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0936512    0.0492763   0.1380262
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.5118670    0.4416700   0.5820641
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.2142159    0.1719980   0.2564337
0-3 months     ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            0.4721376    0.1697515   0.7745237
0-3 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -0.0123971   -0.2235063   0.1987121
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.4400330    0.3252163   0.5548498
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.2269736    0.1747869   0.2791604
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.5413951    0.5167877   0.5660025
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.2873329    0.2646708   0.3099950
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.2699019    0.2096548   0.3301490
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1237564    0.0789058   0.1686071
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.2390127    0.2213553   0.2566701
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1086379    0.0912151   0.1260606
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.2443557    0.2261519   0.2625595
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.1090728    0.0902682   0.1278774
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.2211807    0.1628244   0.2795369
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0947635    0.0324346   0.1570923
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0191161   -0.0494841   0.0877163
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0338326   -0.1010247   0.0333596
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0721039   -0.0304416   0.1746495
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0770293   -0.0278311   0.1818897
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0830289   -0.0163765   0.1824343
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0508556   -0.0564983   0.1582096
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.1244707    0.0362674   0.2126740
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0676375   -0.0182940   0.1535690
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0844339   -0.0366562   0.2055241
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0388472   -0.0821027   0.1597972
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.1312761    0.0032282   0.2593240
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0379923   -0.0890761   0.1650608
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.1539214    0.0193274   0.2885153
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0722120   -0.0595636   0.2039875
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.3115473    0.1094371   0.5136575
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2274049    0.0137337   0.4410761
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0529038   -0.0263471   0.1321547
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0536213   -0.0207060   0.1279487
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.1378486    0.0214506   0.2542467
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0106053   -0.1223287   0.1435393
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0498834    0.0050122   0.0947547
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0430757    0.0000426   0.0861088
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0146960   -0.1521148   0.1227228
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0649444   -0.1984119   0.0685231
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0973499    0.0531888   0.1415110
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0640872    0.0231020   0.1050724
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0812060    0.0356991   0.1267129
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0071599   -0.0353041   0.0496240
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0938916    0.0412452   0.1465381
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0355471   -0.0125436   0.0836378
3-6 months     ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            0.1694741   -0.0545895   0.3935377
3-6 months     ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm            0.1492709   -0.0696283   0.3681702
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.1379514    0.0724855   0.2034173
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0564486    0.0348236   0.0780736
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0511144    0.0269847   0.0752441
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0199833   -0.0022212   0.0421879
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.1144294    0.0698852   0.1589737
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0767231    0.0414154   0.1120309
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.0830077    0.0674504   0.0985650
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0406563    0.0249894   0.0563232
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.0544448    0.0398879   0.0690018
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.0024264   -0.0134859   0.0183387
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0507958    0.0178526   0.0837390
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0075240   -0.0263639   0.0414119
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0593936    0.0250605   0.0937266
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0296430   -0.0058051   0.0650911
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0235289   -0.0367281   0.0837858
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0131486   -0.0697390   0.0434419
6-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0316579   -0.0064227   0.0697385
6-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0225566   -0.0618543   0.0167411
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0250203   -0.0060215   0.0560621
6-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0026954   -0.0320267   0.0266360
6-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0276109   -0.0145471   0.0697688
6-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0217757   -0.0225675   0.0661189
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0427084   -0.0110709   0.0964877
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0086786   -0.0406827   0.0580398
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0202990   -0.0705763   0.1111744
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0059278   -0.0827212   0.0945768
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.1100008   -0.2559326   0.0359309
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.1228276   -0.2675214   0.0218663
6-12 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0443889    0.0110462   0.0777316
6-12 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0012761   -0.0321105   0.0295583
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0191334    0.0048438   0.0334229
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0010779   -0.0152735   0.0131178
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0150896   -0.0322961   0.0624753
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0169280   -0.0321838   0.0660397
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0013378   -0.0174362   0.0201119
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0057878   -0.0238676   0.0122919
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0281901    0.0093089   0.0470713
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0142916   -0.0046662   0.0332495
6-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0095890   -0.0311643   0.0119863
6-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0080422   -0.0282993   0.0122150
6-12 months    ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm           -0.0576402   -0.1469854   0.0317050
6-12 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -0.0415035   -0.1103053   0.0272983
6-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0521338   -0.0030338   0.1073013
6-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0521804    0.0337210   0.0706398
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0230718    0.0112134   0.0349302
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0023295   -0.0088664   0.0135253
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0417900    0.0192178   0.0643622
6-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0167300   -0.0023488   0.0358088
6-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.0035295   -0.0061502   0.0132091
6-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0066678   -0.0162042   0.0028687
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.0071510   -0.0060797   0.0203817
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0050621   -0.0168380   0.0067137
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.0122906    0.0040776   0.0205035
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0063700   -0.0154971   0.0027572
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0173427    0.0057780   0.0289074
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0054375   -0.0172219   0.0063469
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0081143   -0.0061267   0.0223552
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0050700   -0.0104776   0.0206177
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0295690   -0.0052686   0.0644065
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0063318   -0.0263989   0.0390625
12-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0088883   -0.0094852   0.0272618
12-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0094935   -0.0093661   0.0283531
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0141644   -0.0009525   0.0292814
12-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0073831   -0.0077007   0.0224669
12-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0163581   -0.0098165   0.0425326
12-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0009027   -0.0255125   0.0273179
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0134940   -0.0118946   0.0388826
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0213469   -0.0045955   0.0472893
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0073541   -0.0411329   0.0264248
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0033784   -0.0380687   0.0313119
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0396044   -0.0181900   0.0973988
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0334178   -0.0222780   0.0891136
12-24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0295021    0.0111774   0.0478267
12-24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0255462    0.0082407   0.0428518
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0045537   -0.0189963   0.0281038
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0065641   -0.0293306   0.0162023
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0132026    0.0030220   0.0233832
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0150419    0.0050932   0.0249907
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0286938    0.0187662   0.0386214
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0152286    0.0055141   0.0249431
12-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0155204    0.0050539   0.0259868
12-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0161864    0.0062840   0.0260888
12-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0397421   -0.0745871   0.1540713
12-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0270064    0.0056127   0.0484002
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0011659   -0.0262445   0.0239127
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0068053   -0.0353445   0.0217339
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0155447    0.0036012   0.0274882
12-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0074895   -0.0031441   0.0181230
12-24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.0067730    0.0022472   0.0112989
12-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0031144   -0.0014942   0.0077230
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.0101776    0.0035433   0.0168120
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            0.0019984   -0.0037671   0.0077639
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.0142206    0.0088022   0.0196391
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.0028515   -0.0027893   0.0084923
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0109911    0.0065041   0.0154780
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0027486   -0.0028903   0.0083874
