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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** enwast

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

agecat      studyid                    country                        enwast    wasted   n_cell       n
----------  -------------------------  -----------------------------  -------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              0      201     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1       40     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0              0      177     183
Birth       ki0047075b-MAL-ED          BRAZIL                         0              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        6     183
Birth       ki0047075b-MAL-ED          INDIA                          0              0      170     203
Birth       ki0047075b-MAL-ED          INDIA                          0              1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          1              0        0     203
Birth       ki0047075b-MAL-ED          INDIA                          1              1       33     203
Birth       ki0047075b-MAL-ED          NEPAL                          0              0      148     168
Birth       ki0047075b-MAL-ED          NEPAL                          0              1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          1              0        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          1              1       20     168
Birth       ki0047075b-MAL-ED          PERU                           0              0      273     279
Birth       ki0047075b-MAL-ED          PERU                           0              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           1              0        0     279
Birth       ki0047075b-MAL-ED          PERU                           1              1        6     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              0      240     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1       18     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0      116     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        2     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0       74      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1       14      88
Birth       ki1000108-IRC              INDIA                          0              0      251     343
Birth       ki1000108-IRC              INDIA                          0              1        0     343
Birth       ki1000108-IRC              INDIA                          1              0        0     343
Birth       ki1000108-IRC              INDIA                          1              1       92     343
Birth       ki1000109-EE               PAKISTAN                       0              0        2       2
Birth       ki1000109-EE               PAKISTAN                       0              1        0       2
Birth       ki1000109-EE               PAKISTAN                       1              0        0       2
Birth       ki1000109-EE               PAKISTAN                       1              1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       0              0        6       6
Birth       ki1000109-ResPak           PAKISTAN                       0              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1              0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1              1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              0      155     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              0        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              1       11     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0              0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              1        7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              0       20      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              0        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              1        3      23
Birth       ki1101329-Keneba           GAMBIA                         0              0     1395    1423
Birth       ki1101329-Keneba           GAMBIA                         0              1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         1              0        0    1423
Birth       ki1101329-Keneba           GAMBIA                         1              1       28    1423
Birth       ki1114097-CMIN             BANGLADESH                     0              0        5       8
Birth       ki1114097-CMIN             BANGLADESH                     0              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1              0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1              1        3       8
Birth       ki1114097-CMIN             BRAZIL                         0              0      103     111
Birth       ki1114097-CMIN             BRAZIL                         0              1        0     111
Birth       ki1114097-CMIN             BRAZIL                         1              0        0     111
Birth       ki1114097-CMIN             BRAZIL                         1              1        8     111
Birth       ki1114097-CMIN             PERU                           0              0       10      10
Birth       ki1114097-CMIN             PERU                           0              1        0      10
Birth       ki1114097-CMIN             PERU                           1              0        0      10
Birth       ki1114097-CMIN             PERU                           1              1        0      10
Birth       ki1114097-CONTENT          PERU                           0              0        2       2
Birth       ki1114097-CONTENT          PERU                           0              1        0       2
Birth       ki1114097-CONTENT          PERU                           1              0        0       2
Birth       ki1114097-CONTENT          PERU                           1              1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0              0    10936   13824
Birth       ki1119695-PROBIT           BELARUS                        0              1        0   13824
Birth       ki1119695-PROBIT           BELARUS                        1              0        0   13824
Birth       ki1119695-PROBIT           BELARUS                        1              1     2888   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0              0    10856   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0              1        0   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              0        0   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              1     2060   12916
Birth       ki1135781-COHORTS          GUATEMALA                      0              0      564     756
Birth       ki1135781-COHORTS          GUATEMALA                      0              1        0     756
Birth       ki1135781-COHORTS          GUATEMALA                      1              0        0     756
Birth       ki1135781-COHORTS          GUATEMALA                      1              1      192     756
Birth       ki1135781-COHORTS          INDIA                          0              0     5097    6193
Birth       ki1135781-COHORTS          INDIA                          0              1        0    6193
Birth       ki1135781-COHORTS          INDIA                          1              0        0    6193
Birth       ki1135781-COHORTS          INDIA                          1              1     1096    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    0              0     2448    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    0              1        0    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1              0        0    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1              1      451    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              0    28406   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1        0   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0        0   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1     3012   31418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              0     1294    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1       72    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              0      183     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              1        5     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0       39     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        2     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0              0      195     202
6 months    ki0047075b-MAL-ED          BRAZIL                         0              1        0     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1              0        6     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        1     202
6 months    ki0047075b-MAL-ED          INDIA                          0              0      182     233
6 months    ki0047075b-MAL-ED          INDIA                          0              1       11     233
6 months    ki0047075b-MAL-ED          INDIA                          1              0       33     233
6 months    ki0047075b-MAL-ED          INDIA                          1              1        7     233
6 months    ki0047075b-MAL-ED          NEPAL                          0              0      203     232
6 months    ki0047075b-MAL-ED          NEPAL                          0              1        2     232
6 months    ki0047075b-MAL-ED          NEPAL                          1              0       25     232
6 months    ki0047075b-MAL-ED          NEPAL                          1              1        2     232
6 months    ki0047075b-MAL-ED          PERU                           0              0      261     266
6 months    ki0047075b-MAL-ED          PERU                           0              1        0     266
6 months    ki0047075b-MAL-ED          PERU                           1              0        5     266
6 months    ki0047075b-MAL-ED          PERU                           1              1        0     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              0      230     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        6     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       16     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        1     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0      234     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        1     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        3     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0      242     362
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              1       22     362
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0       75     362
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1       23     362
6 months    ki1000108-IRC              INDIA                          0              0      226     386
6 months    ki1000108-IRC              INDIA                          0              1       28     386
6 months    ki1000108-IRC              INDIA                          1              0      108     386
6 months    ki1000108-IRC              INDIA                          1              1       24     386
6 months    ki1000109-EE               PAKISTAN                       0              0      520     656
6 months    ki1000109-EE               PAKISTAN                       0              1       72     656
6 months    ki1000109-EE               PAKISTAN                       1              0       50     656
6 months    ki1000109-EE               PAKISTAN                       1              1       14     656
6 months    ki1000109-ResPak           PAKISTAN                       0              0      165     226
6 months    ki1000109-ResPak           PAKISTAN                       0              1       18     226
6 months    ki1000109-ResPak           PAKISTAN                       1              0       36     226
6 months    ki1000109-ResPak           PAKISTAN                       1              1        7     226
6 months    ki1000304b-SAS-CompFeed    INDIA                          0              0      951    1210
6 months    ki1000304b-SAS-CompFeed    INDIA                          0              1      120    1210
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0      113    1210
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1       26    1210
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0              0      286     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0              1       25     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0       25     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1       44     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0              0      352     513
6 months    ki1017093-NIH-Birth        BANGLADESH                     0              1       16     513
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              0      129     513
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              1       16     513
6 months    ki1017093b-PROVIDE         BANGLADESH                     0              0      443     575
6 months    ki1017093b-PROVIDE         BANGLADESH                     0              1       13     575
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0      108     575
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1       11     575
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              0      507     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              1        9     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              0      168     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              1       10     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0     1828    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1       72    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      104    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       15    2019
6 months    ki1101329-Keneba           GAMBIA                         0              0     1897    2078
6 months    ki1101329-Keneba           GAMBIA                         0              1      104    2078
6 months    ki1101329-Keneba           GAMBIA                         1              0       61    2078
6 months    ki1101329-Keneba           GAMBIA                         1              1       16    2078
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0              0      292     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0              1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              0        3     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              1        3     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0              0      890    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          0              1       50    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0      130    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1       52    1122
6 months    ki1114097-CMIN             BANGLADESH                     0              0      204     231
6 months    ki1114097-CMIN             BANGLADESH                     0              1       13     231
6 months    ki1114097-CMIN             BANGLADESH                     1              0        9     231
6 months    ki1114097-CMIN             BANGLADESH                     1              1        5     231
6 months    ki1114097-CMIN             BRAZIL                         0              0       97     105
6 months    ki1114097-CMIN             BRAZIL                         0              1        1     105
6 months    ki1114097-CMIN             BRAZIL                         1              0        7     105
6 months    ki1114097-CMIN             BRAZIL                         1              1        0     105
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0              0      800     845
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0              1       22     845
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1              0       11     845
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1              1       12     845
6 months    ki1114097-CMIN             PERU                           0              0      601     636
6 months    ki1114097-CMIN             PERU                           0              1        3     636
6 months    ki1114097-CMIN             PERU                           1              0       25     636
6 months    ki1114097-CMIN             PERU                           1              1        7     636
6 months    ki1114097-CONTENT          PERU                           0              0      214     215
6 months    ki1114097-CONTENT          PERU                           0              1        0     215
6 months    ki1114097-CONTENT          PERU                           1              0        1     215
6 months    ki1114097-CONTENT          PERU                           1              1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0              0    12629   15750
6 months    ki1119695-PROBIT           BELARUS                        0              1       90   15750
6 months    ki1119695-PROBIT           BELARUS                        1              0     2991   15750
6 months    ki1119695-PROBIT           BELARUS                        1              1       40   15750
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0              0     6400    7814
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0              1      193    7814
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              0     1161    7814
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              1       60    7814
6 months    ki1135781-COHORTS          GUATEMALA                      0              0      709     904
6 months    ki1135781-COHORTS          GUATEMALA                      0              1       19     904
6 months    ki1135781-COHORTS          GUATEMALA                      1              0      166     904
6 months    ki1135781-COHORTS          GUATEMALA                      1              1       10     904
6 months    ki1135781-COHORTS          INDIA                          0              0     4880    6495
6 months    ki1135781-COHORTS          INDIA                          0              1      480    6495
6 months    ki1135781-COHORTS          INDIA                          1              0      830    6495
6 months    ki1135781-COHORTS          INDIA                          1              1      305    6495
6 months    ki1135781-COHORTS          PHILIPPINES                    0              0     2072    2590
6 months    ki1135781-COHORTS          PHILIPPINES                    0              1      117    2590
6 months    ki1135781-COHORTS          PHILIPPINES                    1              0      363    2590
6 months    ki1135781-COHORTS          PHILIPPINES                    1              1       38    2590
6 months    ki1148112-LCNI-5           MALAWI                         0              0      825     839
6 months    ki1148112-LCNI-5           MALAWI                         0              1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1              0        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1              1       14     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              0    23572   28351
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1     1744   28351
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0     2542   28351
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1      493   28351
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0              0     7510    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0              1      320    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0      628    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1      152    8610
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              0      149     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              1       15     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0       31     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1        6     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0              0      155     163
24 months   ki0047075b-MAL-ED          BRAZIL                         0              1        2     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0        5     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        1     163
24 months   ki0047075b-MAL-ED          INDIA                          0              0      170     224
24 months   ki0047075b-MAL-ED          INDIA                          0              1       14     224
24 months   ki0047075b-MAL-ED          INDIA                          1              0       28     224
24 months   ki0047075b-MAL-ED          INDIA                          1              1       12     224
24 months   ki0047075b-MAL-ED          NEPAL                          0              0      195     225
24 months   ki0047075b-MAL-ED          NEPAL                          0              1        4     225
24 months   ki0047075b-MAL-ED          NEPAL                          1              0       26     225
24 months   ki0047075b-MAL-ED          NEPAL                          1              1        0     225
24 months   ki0047075b-MAL-ED          PERU                           0              0      190     197
24 months   ki0047075b-MAL-ED          PERU                           0              1        3     197
24 months   ki0047075b-MAL-ED          PERU                           1              0        4     197
24 months   ki0047075b-MAL-ED          PERU                           1              1        0     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              0      221     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        0     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       15     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        1     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0      198     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        4     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        3     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0      251     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              1       16     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0       91     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1        7     365
24 months   ki1000108-IRC              INDIA                          0              0      241     388
24 months   ki1000108-IRC              INDIA                          0              1       15     388
24 months   ki1000108-IRC              INDIA                          1              0      119     388
24 months   ki1000108-IRC              INDIA                          1              1       13     388
24 months   ki1017093-NIH-Birth        BANGLADESH                     0              0      270     408
24 months   ki1017093-NIH-Birth        BANGLADESH                     0              1       23     408
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              0       90     408
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              1       25     408
24 months   ki1017093b-PROVIDE         BANGLADESH                     0              0      411     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     0              1       41     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0       94     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1       24     570
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              0      337     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              1       26     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              0      120     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              1       17     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0              0     1470    1717
24 months   ki1101329-Keneba           GAMBIA                         0              1      167    1717
24 months   ki1101329-Keneba           GAMBIA                         1              0       58    1717
24 months   ki1101329-Keneba           GAMBIA                         1              1       22    1717
24 months   ki1113344-GMS-Nepal        NEPAL                          0              0      694     992
24 months   ki1113344-GMS-Nepal        NEPAL                          0              1      146     992
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0      118     992
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1       34     992
24 months   ki1114097-CMIN             BANGLADESH                     0              0      197     232
24 months   ki1114097-CMIN             BANGLADESH                     0              1       20     232
24 months   ki1114097-CMIN             BANGLADESH                     1              0       12     232
24 months   ki1114097-CMIN             BANGLADESH                     1              1        3     232
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0              0      509     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0              1       18     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              0       16     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              1        5     548
24 months   ki1114097-CMIN             PERU                           0              0      414     429
24 months   ki1114097-CMIN             PERU                           0              1        0     429
24 months   ki1114097-CMIN             PERU                           1              0       13     429
24 months   ki1114097-CMIN             PERU                           1              1        2     429
24 months   ki1114097-CONTENT          PERU                           0              0      163     164
24 months   ki1114097-CONTENT          PERU                           0              1        0     164
24 months   ki1114097-CONTENT          PERU                           1              0        1     164
24 months   ki1114097-CONTENT          PERU                           1              1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0              0     3038    3968
24 months   ki1119695-PROBIT           BELARUS                        0              1       31    3968
24 months   ki1119695-PROBIT           BELARUS                        1              0      886    3968
24 months   ki1119695-PROBIT           BELARUS                        1              1       13    3968
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              0      267     364
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              1       54     364
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0       32     364
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1       11     364
24 months   ki1135781-COHORTS          GUATEMALA                      0              0      845    1038
24 months   ki1135781-COHORTS          GUATEMALA                      0              1       39    1038
24 months   ki1135781-COHORTS          GUATEMALA                      1              0      145    1038
24 months   ki1135781-COHORTS          GUATEMALA                      1              1        9    1038
24 months   ki1135781-COHORTS          INDIA                          0              0     3884    5026
24 months   ki1135781-COHORTS          INDIA                          0              1      327    5026
24 months   ki1135781-COHORTS          INDIA                          1              0      699    5026
24 months   ki1135781-COHORTS          INDIA                          1              1      116    5026
24 months   ki1135781-COHORTS          PHILIPPINES                    0              0     1867    2350
24 months   ki1135781-COHORTS          PHILIPPINES                    0              1      123    2350
24 months   ki1135781-COHORTS          PHILIPPINES                    1              0      328    2350
24 months   ki1135781-COHORTS          PHILIPPINES                    1              1       32    2350
24 months   ki1148112-LCNI-5           MALAWI                         0              0      545     563
24 months   ki1148112-LCNI-5           MALAWI                         0              1        9     563
24 months   ki1148112-LCNI-5           MALAWI                         1              0        8     563
24 months   ki1148112-LCNI-5           MALAWI                         1              1        1     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              0    10375   14379
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1     2364   14379
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0     1080   14379
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1      560   14379
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              0     6328    8374
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              1     1321    8374
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0      490    8374
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1      235    8374


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
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/fa966699-c3ac-47bb-9a7c-a3a1d7326e0e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa966699-c3ac-47bb-9a7c-a3a1d7326e0e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fa966699-c3ac-47bb-9a7c-a3a1d7326e0e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fa966699-c3ac-47bb-9a7c-a3a1d7326e0e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0569948    0.0242171   0.0897725
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1750000    0.0569956   0.2930044
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0833630    0.0499827   0.1167432
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2344882    0.1504728   0.3185037
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1099269    0.0713533   0.1485006
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1827072    0.1172766   0.2481378
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.1218937    0.0846201   0.1591673
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.2610684    0.1242879   0.3978488
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0983607    0.0551180   0.1416033
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.1627907    0.0522025   0.2733789
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1118764    0.0836484   0.1401045
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2001410    0.1176049   0.2826771
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0824208    0.0521935   0.1126482
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.6467027    0.5372930   0.7561124
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0424012    0.0216832   0.0631191
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1055253    0.0561364   0.1549141
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0285093    0.0132769   0.0437417
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0899425    0.0388104   0.1410746
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0174419    0.0061384   0.0287453
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0561798    0.0223277   0.0900319
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0378968    0.0293091   0.0464844
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1259570    0.0664432   0.1854707
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0520264    0.0422984   0.0617543
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2033338    0.1143416   0.2923260
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0528399    0.0325847   0.0730950
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2960473    0.2098500   0.3822447
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.0599078    0.0282641   0.0915515
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.3571429    0.1056044   0.6086813
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0269521    0.0158714   0.0380328
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4621060    0.2740433   0.6501687
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0070618    0.0058263   0.0082973
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0133342    0.0073519   0.0193166
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0290465    0.0249947   0.0330984
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0498532    0.0381551   0.0615513
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0266205    0.0149209   0.0383201
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0506134    0.0187101   0.0825168
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0897440    0.0821080   0.0973799
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2653735    0.2409950   0.2897521
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0534860    0.0440696   0.0629023
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1180521    0.0899043   0.1462000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0688571    0.0639805   0.0737337
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1601138    0.1405503   0.1796772
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0410713    0.0316718   0.0504708
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2088841    0.1727888   0.2449795
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0914634    0.0472347   0.1356921
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1621622    0.0430969   0.2812274
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0775362    0.0391590   0.1159135
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3474823    0.2288382   0.4661263
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0599251    0.0314166   0.0884336
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0714286    0.0203693   0.1224878
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0568934    0.0286539   0.0851330
24 months   ki1000108-IRC              INDIA                          1                    NA                0.0963744    0.0465284   0.1462204
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0750059    0.0450967   0.1049152
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2163164    0.1474880   0.2851448
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0891055    0.0626911   0.1155200
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1794506    0.1087676   0.2501336
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0716586    0.0452081   0.0981090
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1291946    0.0748891   0.1835000
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1022141    0.0875576   0.1168705
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2692635    0.1799093   0.3586177
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1738095    0.1375319   0.2100871
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2236842    0.1299029   0.3174655
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0341556    0.0186344   0.0496767
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2380952    0.0557641   0.4204263
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0100713    0.0050069   0.0151356
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0145890   -0.0032663   0.0324442
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1668633    0.1261313   0.2075954
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2287956    0.1105438   0.3470474
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0441176    0.0305739   0.0576614
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0584416    0.0213751   0.0955081
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0777552    0.0696874   0.0858230
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.1459365    0.1227749   0.1690981
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0613331    0.0507793   0.0718870
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0887409    0.0600677   0.1174141
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1857664    0.1750038   0.1965290
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3525032    0.3188833   0.3861231
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1730023    0.1587020   0.1873027
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3256063    0.2670437   0.3841690


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0772532   0.0428971   0.1116093
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1243094   0.0902747   0.1583441
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1347150   0.1006110   0.1688190
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1310976   0.0945164   0.1676787
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1106195   0.0696353   0.1516037
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1206612   0.0934553   0.1478670
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0623782   0.0414301   0.0833262
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0417391   0.0253783   0.0581000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0273775   0.0152282   0.0395268
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0430906   0.0342310   0.0519502
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0577478   0.0477160   0.0677797
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0909091   0.0670990   0.1147192
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0779221   0.0432805   0.1125637
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0402367   0.0269789   0.0534944
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082540   0.0066043   0.0099037
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0323778   0.0284530   0.0363026
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0320796   0.0205865   0.0435728
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1208622   0.1129342   0.1287902
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0598456   0.0507087   0.0689824
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0789037   0.0738012   0.0840062
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0548200   0.0454626   0.0641774
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1044776   0.0620857   0.1468695
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1160714   0.0740310   0.1581118
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0630137   0.0380516   0.0879758
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0721649   0.0463845   0.0979454
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1176471   0.0863457   0.1489484
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1140351   0.0879183   0.1401519
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0860000   0.0614008   0.1105992
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1100757   0.0952672   0.1248842
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1814516   0.1475010   0.2154023
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0419708   0.0251666   0.0587750
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0110887   0.0050591   0.0171183
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1785714   0.1391724   0.2179705
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0462428   0.0334608   0.0590248
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0881417   0.0803031   0.0959802
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0659574   0.0559200   0.0759949
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2033521   0.1926606   0.2140436
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1858132   0.1713776   0.2002488


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  3.070454   1.2656407    7.448947
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.812859   1.6438136    4.813303
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  1.662078   1.0076448    2.741546
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  2.141770   1.1675135    3.929017
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.655039   0.7368653    3.717305
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  1.788947   1.1020931    2.903867
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  7.846350   5.2455602   11.736632
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.488734   1.2657661    4.893320
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.154849   1.4462228    6.882115
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  3.220974   1.3294526    7.803716
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  3.323684   1.9682288    5.612596
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  3.908283   2.4291873    6.287977
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  5.602728   3.4713804    9.042673
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                  5.961538   2.4718296   14.377990
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.0000000    1.000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 17.145453   9.6256365   30.539961
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  1.888224   1.2118100    2.942203
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.716321   1.3066928    2.254361
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  1.901297   0.8832003    4.092990
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  2.957006   2.6097710    3.350442
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.207161   1.6417709    2.967258
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.325305   2.0330814    2.659532
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.085891   3.8305725    6.752591
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  1.772973   0.7360098    4.270912
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  4.481547   2.4703901    8.129995
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.191964   0.5050681    2.813044
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  1.693945   0.8272200    3.468788
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.883991   1.7332844    4.798638
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  2.013911   1.2310407    3.294640
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  1.802919   1.0305037    3.154299
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.634309   1.8352509    3.781274
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  1.286950   0.8056841    2.055695
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.0000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  6.970899   2.8612942   16.983028
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  1.000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  1.448571   0.4170639    5.031266
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.371156   0.7739290    2.429251
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.324675   0.6547698    2.679972
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  1.876871   1.5535223    2.267521
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.446867   1.0034890    2.086147
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  1.897561   1.7005285    2.117424
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  1.882092   1.5505481    2.284528


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0202584   -0.0015326   0.0420494
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0409464    0.0155134   0.0663795
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0247881   -0.0014089   0.0509851
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0092038   -0.0055790   0.0239867
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0122588   -0.0105741   0.0350917
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0087847   -0.0013986   0.0189680
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0991581    0.0692362   0.1290800
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0199770    0.0042059   0.0357481
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0132298    0.0018271   0.0246325
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0099357    0.0006957   0.0191757
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0051938    0.0015316   0.0088561
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0057215    0.0021386   0.0093043
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0380692    0.0212305   0.0549080
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.0180142    0.0001232   0.0359053
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0132846    0.0055745   0.0209946
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0011922    0.0000772   0.0023071
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0033312    0.0013352   0.0053273
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0054592   -0.0016183   0.0125366
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0311182    0.0261540   0.0360824
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0063596    0.0016665   0.0110527
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0100466    0.0078546   0.0122387
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0137487    0.0097783   0.0177190
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0130142   -0.0106730   0.0367013
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0385352    0.0104724   0.0665980
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0030886   -0.0126213   0.0187985
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0152715   -0.0044960   0.0350390
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0426411    0.0190575   0.0662247
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0249296    0.0084322   0.0414269
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0143414   -0.0025425   0.0312254
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0078616    0.0029477   0.0127755
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0076421   -0.0078464   0.0231305
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0078152    0.0000732   0.0155572
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0010174   -0.0029288   0.0049636
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0117081   -0.0047641   0.0281803
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0021251   -0.0037379   0.0079882
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0103865    0.0062563   0.0145166
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0046243   -0.0001687   0.0094173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0175857    0.0130423   0.0221291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0128109    0.0071686   0.0184532


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2622337   -0.0495942   0.4814195
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3293913    0.1126767   0.4931769
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1840038   -0.0306708   0.3539647
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0702059   -0.0481692   0.1752123
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1108197   -0.1174781   0.2924768
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0728049   -0.0157732   0.1536588
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5460882    0.3995102   0.6568868
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3202562    0.0425222   0.5174284
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3169647    0.0225514   0.5226990
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3629131   -0.0173110   0.6010269
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1205330    0.0350262   0.1984630
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0990765    0.0371602   0.1570112
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4187616    0.2410923   0.5548365
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.2311828   -0.0084996   0.4139017
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3301610    0.1493414   0.4725449
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.1444369    0.0179764   0.2546125
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1028865    0.0402614   0.1614252
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1701754   -0.0712301   0.3571793
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.2574685    0.2182892   0.2946842
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1062667    0.0259630   0.1799498
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1273279    0.1005587   0.1533004
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2507970    0.1704279   0.3233800
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1245645   -0.1283691   0.3208008
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3319955    0.0782933   0.5158654
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0490148   -0.2351693   0.2678147
24 months   ki1000108-IRC              INDIA                          0                    NA                0.2116195   -0.1034691   0.4367366
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3624496    0.1534112   0.5198725
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2186130    0.0673342   0.3453544
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1667610   -0.0480384   0.3375365
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0714203    0.0265953   0.1141811
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0421164   -0.0469319   0.1235906
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1862058   -0.0027239   0.3395380
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0917539   -0.3075296   0.3691073
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0655654   -0.0306109   0.1527665
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0459559   -0.0889830   0.1641741
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1178384    0.0707773   0.1625160
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0701107   -0.0048370   0.1394682
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0864791    0.0643084   0.1081246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0689450    0.0388126   0.0981327
