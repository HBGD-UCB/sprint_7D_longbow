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

unadjusted

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
![](/tmp/85f93936-725a-4976-8357-bfb09fae1014/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/85f93936-725a-4976-8357-bfb09fae1014/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/85f93936-725a-4976-8357-bfb09fae1014/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/85f93936-725a-4976-8357-bfb09fae1014/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0569948    0.0242171   0.0897725
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1750000    0.0569956   0.2930044
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0833333    0.0499475   0.1167191
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2346939    0.1506697   0.3187180
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1102362    0.0716712   0.1488013
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1818182    0.1159360   0.2477004
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.1216216    0.0843300   0.1589133
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.2187500    0.0752985   0.3622015
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0983607    0.0551180   0.1416033
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.1627907    0.0522025   0.2733789
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1120448    0.0831124   0.1409772
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1870504    0.1027075   0.2713932
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0803859    0.0501284   0.1106433
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.6376812    0.5241166   0.7512458
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0434783    0.0226222   0.0643343
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1103448    0.0592973   0.1613923
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0285088    0.0132207   0.0437968
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0924370    0.0403518   0.1445221
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0174419    0.0061384   0.0287453
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0561798    0.0223277   0.0900319
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0378947    0.0293070   0.0464825
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1260504    0.0664022   0.1856986
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0519740    0.0422458   0.0617022
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2077922    0.1171477   0.2984367
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0531915    0.0328848   0.0734982
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2857143    0.1928141   0.3786145
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.0599078    0.0282641   0.0915515
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.3571429    0.1056044   0.6086813
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0267640    0.0157244   0.0378036
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.5217391    0.3174711   0.7260072
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0070760    0.0058327   0.0083194
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0131970    0.0071002   0.0192937
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0292735    0.0252042   0.0333428
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0491400    0.0370147   0.0612654
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0260989    0.0145114   0.0376864
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0568182    0.0225987   0.0910377
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0895522    0.0819075   0.0971970
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2687225    0.2429310   0.2945140
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0534491    0.0440247   0.0628734
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0947631    0.0660909   0.1234353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0688892    0.0640083   0.0737702
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1624382    0.1423077   0.1825687
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0408685    0.0314966   0.0502403
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1948718    0.1529618   0.2367818
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0914634    0.0472347   0.1356921
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1621622    0.0430969   0.2812274
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0760870    0.0376914   0.1144826
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3000000    0.1576691   0.4423309
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0599251    0.0314166   0.0884336
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0714286    0.0203693   0.1224878
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0585938    0.0297864   0.0874011
24 months   ki1000108-IRC              INDIA                          1                    NA                0.0984848    0.0475878   0.1493819
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0784983    0.0476646   0.1093320
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2173913    0.1419124   0.2928702
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0907080    0.0642087   0.1172073
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2033898    0.1306996   0.2760800
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0716253    0.0450717   0.0981790
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1240876    0.0688268   0.1793484
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1020159    0.0873497   0.1166821
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2750000    0.1771265   0.3728735
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1738095    0.1375319   0.2100871
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2236842    0.1299029   0.3174655
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0341556    0.0186344   0.0496767
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2380952    0.0557641   0.4204263
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0101010    0.0050217   0.0151804
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0144605   -0.0034794   0.0324005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1682243    0.1272473   0.2092013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2558140    0.1252227   0.3864052
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0441176    0.0305739   0.0576614
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0584416    0.0213751   0.0955081
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0776538    0.0695698   0.0857378
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.1423313    0.1183417   0.1663209
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0618090    0.0512266   0.0723915
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0888889    0.0594854   0.1182924
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1855719    0.1747608   0.1963829
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3414634    0.3046737   0.3782531
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1727023    0.1584128   0.1869919
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3241379    0.2635295   0.3847464


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


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  3.070454    1.2656407    7.448947
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.816327    1.6456645    4.819752
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  1.649351    0.9967134    2.729328
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  1.798611    0.8720522    3.709643
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.655039    0.7368653    3.717305
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  1.669425    0.9836558    2.833286
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  7.932754    5.2309486   12.030051
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.537931    1.3033378    4.941999
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.242405    1.4895209    7.058100
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  3.220974    1.3294526    7.803716
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  3.326331    1.9683476    5.621200
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  3.998002    2.4870757    6.426833
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  5.371429    3.2531644    8.868978
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                  5.961538    2.4718296   14.377990
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 19.494071   11.0387037   34.426036
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  1.865024    1.1785842    2.951266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.678655    1.2646299    2.228226
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  2.177033    1.0301824    4.600617
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  3.000734    2.6390195    3.412027
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.772961    1.2491403    2.516443
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.357962    2.0572743    2.702598
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.768269    3.4923008    6.510433
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  1.772973    0.7360098    4.270912
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  3.942857    1.9724443    7.881653
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.191964    0.5050681    2.813044
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  1.680808    0.8236365    3.430051
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.769376    1.6394699    4.678003
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  2.242249    1.4132311    3.557578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  1.732454    0.9705288    3.092537
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.695659    1.8363861    3.956998
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  1.286950    0.8056841    2.055695
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  6.970899    2.8612942   16.983028
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  1.431591    0.4040341    5.072473
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.520672    0.8637450    2.677229
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.324675    0.6547698    2.679972
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  1.832896    1.5034944    2.234467
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.438121    0.9909077    2.087169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  1.840060    1.6309545    2.075976
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  1.876859    1.5360779    2.293243


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0202584   -0.0015326   0.0420494
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0409761    0.0155352   0.0664170
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0244788   -0.0018464   0.0508040
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0094759   -0.0053180   0.0242699
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0122588   -0.0105741   0.0350917
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0086163   -0.0018965   0.0191292
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1011931    0.0708086   0.1315776
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0188999    0.0030968   0.0347030
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0132304    0.0017982   0.0246625
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0099357    0.0006957   0.0191757
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0051959    0.0015303   0.0088615
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0057738    0.0021663   0.0093813
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0377176    0.0207371   0.0546981
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.0180142    0.0001232   0.0359053
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0134727    0.0056926   0.0212528
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0011779    0.0000531   0.0023027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0031043    0.0010994   0.0051092
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0059807   -0.0010977   0.0130591
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0313100    0.0263263   0.0362936
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0063965    0.0016883   0.0111047
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0100145    0.0078207   0.0122083
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0139515    0.0099897   0.0179133
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0130142   -0.0106730   0.0367013
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0399845    0.0113544   0.0686146
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0030886   -0.0126213   0.0187985
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0135712   -0.0064143   0.0335567
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0391488    0.0153791   0.0629185
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0233271    0.0068768   0.0397774
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0143747   -0.0025491   0.0312984
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0080598    0.0031366   0.0129831
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0076421   -0.0078464   0.0231305
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0078152    0.0000732   0.0155572
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0009877   -0.0029768   0.0049522
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0103471   -0.0060810   0.0267752
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0021251   -0.0037379   0.0079882
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0104879    0.0063303   0.0146455
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0041484   -0.0006550   0.0089518
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0177802    0.0131850   0.0223755
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0131109    0.0074251   0.0187967


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2622337   -0.0495942   0.4814195
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3296296    0.1128106   0.4934606
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1817081   -0.0338484   0.3523212
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0722816   -0.0462425   0.1773786
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1108197   -0.1174781   0.2924768
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0714094   -0.0211428   0.1555730
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5572953    0.4077485   0.6690807
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3029891    0.0248179   0.5018118
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3169773    0.0208909   0.5235261
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3629131   -0.0173110   0.6010269
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1205808    0.0349948   0.1985761
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0999833    0.0376356   0.1582918
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4148936    0.2355896   0.5521391
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.2311828   -0.0084996   0.4139017
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3348361    0.1527858   0.4777673
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.1427120    0.0145247   0.2542251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0958778    0.0328911   0.1547623
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1864343   -0.0542856   0.3721917
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.2590550    0.2197006   0.2964246
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1068834    0.0262947   0.1808022
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1269205    0.1001129   0.1529295
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2544970    0.1742871   0.3269154
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1245645   -0.1283691   0.3208008
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3444816    0.0844851   0.5306419
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0490148   -0.2351693   0.2678147
24 months   ki1000108-IRC              INDIA                          0                    NA                0.1880580   -0.1318746   0.4175594
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3327645    0.1190306   0.4946439
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2045609    0.0537782   0.3313161
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1671472   -0.0485709   0.3384865
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0732208    0.0282835   0.1160799
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0421164   -0.0469319   0.1235906
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1862058   -0.0027239   0.3395380
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0890725   -0.3134774   0.3682504
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0579439   -0.0381156   0.1451148
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0459559   -0.0889830   0.1641741
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1189891    0.0715836   0.1639741
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0628951   -0.0122438   0.1324564
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0874358    0.0649699   0.1093618
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0705597    0.0402127   0.0999471
