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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        enwast    swasted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      201     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       32     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        8     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0      177     183
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        6     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          0               0      170     203
Birth       ki0047075b-MAL-ED          INDIA                          0               1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          1               0       26     203
Birth       ki0047075b-MAL-ED          INDIA                          1               1        7     203
Birth       ki0047075b-MAL-ED          NEPAL                          0               0      148     168
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       16     168
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        4     168
Birth       ki0047075b-MAL-ED          PERU                           0               0      273     279
Birth       ki0047075b-MAL-ED          PERU                           0               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           1               0        6     279
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      240     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       16     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        2     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      116     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       74      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        5      88
Birth       ki1000108-IRC              INDIA                          0               0      251     343
Birth       ki1000108-IRC              INDIA                          0               1        0     343
Birth       ki1000108-IRC              INDIA                          1               0       38     343
Birth       ki1000108-IRC              INDIA                          1               1       54     343
Birth       ki1000109-EE               PAKISTAN                       0               0        2       2
Birth       ki1000109-EE               PAKISTAN                       0               1        0       2
Birth       ki1000109-EE               PAKISTAN                       1               0        0       2
Birth       ki1000109-EE               PAKISTAN                       1               1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       0               0        6       6
Birth       ki1000109-ResPak           PAKISTAN                       0               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1               1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0      155     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0        6     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        5     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1        2      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0       20      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        1      23
Birth       ki1101329-Keneba           GAMBIA                         0               0     1395    1423
Birth       ki1101329-Keneba           GAMBIA                         0               1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         1               0       17    1423
Birth       ki1101329-Keneba           GAMBIA                         1               1       11    1423
Birth       ki1114097-CMIN             BANGLADESH                     0               0        5       8
Birth       ki1114097-CMIN             BANGLADESH                     0               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1               0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     1               1        1       8
Birth       ki1114097-CMIN             BRAZIL                         0               0      103     111
Birth       ki1114097-CMIN             BRAZIL                         0               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         1               0        7     111
Birth       ki1114097-CMIN             BRAZIL                         1               1        1     111
Birth       ki1114097-CMIN             PERU                           0               0       10      10
Birth       ki1114097-CMIN             PERU                           0               1        0      10
Birth       ki1114097-CMIN             PERU                           1               0        0      10
Birth       ki1114097-CMIN             PERU                           1               1        0      10
Birth       ki1114097-CONTENT          PERU                           0               0        2       2
Birth       ki1114097-CONTENT          PERU                           0               1        0       2
Birth       ki1114097-CONTENT          PERU                           1               0        0       2
Birth       ki1114097-CONTENT          PERU                           1               1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0               0    10936   13824
Birth       ki1119695-PROBIT           BELARUS                        0               1        0   13824
Birth       ki1119695-PROBIT           BELARUS                        1               0     1977   13824
Birth       ki1119695-PROBIT           BELARUS                        1               1      911   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    10856   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1        0   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     1269   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      791   12916
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      564     756
Birth       ki1135781-COHORTS          GUATEMALA                      0               1        0     756
Birth       ki1135781-COHORTS          GUATEMALA                      1               0      132     756
Birth       ki1135781-COHORTS          GUATEMALA                      1               1       60     756
Birth       ki1135781-COHORTS          INDIA                          0               0     5097    6193
Birth       ki1135781-COHORTS          INDIA                          0               1        0    6193
Birth       ki1135781-COHORTS          INDIA                          1               0      776    6193
Birth       ki1135781-COHORTS          INDIA                          1               1      320    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2448    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1        0    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      330    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1      121    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0    28406   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1        0   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     2504   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      508   31418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     1294    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0       62    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1       10    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      187     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        1     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0       40     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        1     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      195     202
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        0     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        7     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     202
6 months    ki0047075b-MAL-ED          INDIA                          0               0      189     233
6 months    ki0047075b-MAL-ED          INDIA                          0               1        4     233
6 months    ki0047075b-MAL-ED          INDIA                          1               0       39     233
6 months    ki0047075b-MAL-ED          INDIA                          1               1        1     233
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      205     232
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        0     232
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       27     232
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     232
6 months    ki0047075b-MAL-ED          PERU                           0               0      261     266
6 months    ki0047075b-MAL-ED          PERU                           0               1        0     266
6 months    ki0047075b-MAL-ED          PERU                           1               0        5     266
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      233     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        3     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       17     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      235     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        3     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      262     362
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1        2     362
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       88     362
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       10     362
6 months    ki1000108-IRC              INDIA                          0               0      243     386
6 months    ki1000108-IRC              INDIA                          0               1       11     386
6 months    ki1000108-IRC              INDIA                          1               0      122     386
6 months    ki1000108-IRC              INDIA                          1               1       10     386
6 months    ki1000109-EE               PAKISTAN                       0               0      580     656
6 months    ki1000109-EE               PAKISTAN                       0               1       12     656
6 months    ki1000109-EE               PAKISTAN                       1               0       58     656
6 months    ki1000109-EE               PAKISTAN                       1               1        6     656
6 months    ki1000109-ResPak           PAKISTAN                       0               0      177     226
6 months    ki1000109-ResPak           PAKISTAN                       0               1        6     226
6 months    ki1000109-ResPak           PAKISTAN                       1               0       41     226
6 months    ki1000109-ResPak           PAKISTAN                       1               1        2     226
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0     1043    1210
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1       28    1210
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      130    1210
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1        9    1210
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0      305     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1        6     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       56     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       13     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               0      366     513
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               1        2     513
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0      142     513
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1        3     513
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      455     575
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1        1     575
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      115     575
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        4     575
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      516     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      178     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1893    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        7    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      114    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5    2019
6 months    ki1101329-Keneba           GAMBIA                         0               0     1971    2078
6 months    ki1101329-Keneba           GAMBIA                         0               1       30    2078
6 months    ki1101329-Keneba           GAMBIA                         1               0       74    2078
6 months    ki1101329-Keneba           GAMBIA                         1               1        3    2078
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      293     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0        6     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        0     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      934    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1        6    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      174    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        8    1122
6 months    ki1114097-CMIN             BANGLADESH                     0               0      214     231
6 months    ki1114097-CMIN             BANGLADESH                     0               1        3     231
6 months    ki1114097-CMIN             BANGLADESH                     1               0       14     231
6 months    ki1114097-CMIN             BANGLADESH                     1               1        0     231
6 months    ki1114097-CMIN             BRAZIL                         0               0       98     105
6 months    ki1114097-CMIN             BRAZIL                         0               1        0     105
6 months    ki1114097-CMIN             BRAZIL                         1               0        7     105
6 months    ki1114097-CMIN             BRAZIL                         1               1        0     105
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0               0      815     845
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0               1        7     845
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               0       20     845
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               1        3     845
6 months    ki1114097-CMIN             PERU                           0               0      604     636
6 months    ki1114097-CMIN             PERU                           0               1        0     636
6 months    ki1114097-CMIN             PERU                           1               0       29     636
6 months    ki1114097-CMIN             PERU                           1               1        3     636
6 months    ki1114097-CONTENT          PERU                           0               0      214     215
6 months    ki1114097-CONTENT          PERU                           0               1        0     215
6 months    ki1114097-CONTENT          PERU                           1               0        1     215
6 months    ki1114097-CONTENT          PERU                           1               1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0               0    12709   15750
6 months    ki1119695-PROBIT           BELARUS                        0               1       10   15750
6 months    ki1119695-PROBIT           BELARUS                        1               0     3025   15750
6 months    ki1119695-PROBIT           BELARUS                        1               1        6   15750
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     6534    7814
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1       59    7814
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     1205    7814
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       16    7814
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      725     904
6 months    ki1135781-COHORTS          GUATEMALA                      0               1        3     904
6 months    ki1135781-COHORTS          GUATEMALA                      1               0      174     904
6 months    ki1135781-COHORTS          GUATEMALA                      1               1        2     904
6 months    ki1135781-COHORTS          INDIA                          0               0     5247    6495
6 months    ki1135781-COHORTS          INDIA                          0               1      113    6495
6 months    ki1135781-COHORTS          INDIA                          1               0     1057    6495
6 months    ki1135781-COHORTS          INDIA                          1               1       78    6495
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     2165    2590
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1       24    2590
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      391    2590
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       10    2590
6 months    ki1148112-LCNI-5           MALAWI                         0               0      825     839
6 months    ki1148112-LCNI-5           MALAWI                         0               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1               0       14     839
6 months    ki1148112-LCNI-5           MALAWI                         1               1        0     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0    25018   28351
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1      298   28351
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     2961   28351
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       74   28351
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     7800    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1       30    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0      753    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1       27    8610
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      164     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1        0     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       37     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      157     163
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        0     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        5     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        1     163
24 months   ki0047075b-MAL-ED          INDIA                          0               0      184     224
24 months   ki0047075b-MAL-ED          INDIA                          0               1        0     224
24 months   ki0047075b-MAL-ED          INDIA                          1               0       38     224
24 months   ki0047075b-MAL-ED          INDIA                          1               1        2     224
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      199     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       26     225
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     225
24 months   ki0047075b-MAL-ED          PERU                           0               0      192     197
24 months   ki0047075b-MAL-ED          PERU                           0               1        1     197
24 months   ki0047075b-MAL-ED          PERU                           1               0        4     197
24 months   ki0047075b-MAL-ED          PERU                           1               1        0     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      221     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       16     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      202     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        3     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      266     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1        1     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       96     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        2     365
24 months   ki1000108-IRC              INDIA                          0               0      253     388
24 months   ki1000108-IRC              INDIA                          0               1        3     388
24 months   ki1000108-IRC              INDIA                          1               0      131     388
24 months   ki1000108-IRC              INDIA                          1               1        1     388
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               0      290     408
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               1        3     408
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0      111     408
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1        4     408
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      449     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1        3     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      112     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        6     570
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      361     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1        2     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      136     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1        1     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0               0     1609    1717
24 months   ki1101329-Keneba           GAMBIA                         0               1       28    1717
24 months   ki1101329-Keneba           GAMBIA                         1               0       78    1717
24 months   ki1101329-Keneba           GAMBIA                         1               1        2    1717
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      818     992
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       22     992
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      144     992
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        8     992
24 months   ki1114097-CMIN             BANGLADESH                     0               0      215     232
24 months   ki1114097-CMIN             BANGLADESH                     0               1        2     232
24 months   ki1114097-CMIN             BANGLADESH                     1               0       15     232
24 months   ki1114097-CMIN             BANGLADESH                     1               1        0     232
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0               0      523     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0               1        4     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               0       20     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               1        1     548
24 months   ki1114097-CMIN             PERU                           0               0      414     429
24 months   ki1114097-CMIN             PERU                           0               1        0     429
24 months   ki1114097-CMIN             PERU                           1               0       14     429
24 months   ki1114097-CMIN             PERU                           1               1        1     429
24 months   ki1114097-CONTENT          PERU                           0               0      163     164
24 months   ki1114097-CONTENT          PERU                           0               1        0     164
24 months   ki1114097-CONTENT          PERU                           1               0        1     164
24 months   ki1114097-CONTENT          PERU                           1               1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0               0     3067    3968
24 months   ki1119695-PROBIT           BELARUS                        0               1        2    3968
24 months   ki1119695-PROBIT           BELARUS                        1               0      897    3968
24 months   ki1119695-PROBIT           BELARUS                        1               1        2    3968
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      299     364
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1       22     364
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       40     364
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1        3     364
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      881    1038
24 months   ki1135781-COHORTS          GUATEMALA                      0               1        3    1038
24 months   ki1135781-COHORTS          GUATEMALA                      1               0      153    1038
24 months   ki1135781-COHORTS          GUATEMALA                      1               1        1    1038
24 months   ki1135781-COHORTS          INDIA                          0               0     4170    5026
24 months   ki1135781-COHORTS          INDIA                          0               1       41    5026
24 months   ki1135781-COHORTS          INDIA                          1               0      803    5026
24 months   ki1135781-COHORTS          INDIA                          1               1       12    5026
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0     1971    2350
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1       19    2350
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      356    2350
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1        4    2350
24 months   ki1148112-LCNI-5           MALAWI                         0               0      553     563
24 months   ki1148112-LCNI-5           MALAWI                         0               1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         1               0        9     563
24 months   ki1148112-LCNI-5           MALAWI                         1               1        0     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0    12376   14379
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1      363   14379
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     1512   14379
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      128   14379
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     7502    8374
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      147    8374
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0      688    8374
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1       37    8374


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
![](/tmp/6cccd815-99d3-483d-bb18-4659341f6fa7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6cccd815-99d3-483d-bb18-4659341f6fa7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6cccd815-99d3-483d-bb18-4659341f6fa7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6cccd815-99d3-483d-bb18-4659341f6fa7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0433071    0.0182425   0.0683717
6 months    ki1000108-IRC              INDIA                          1                    NA                0.0757576    0.0305584   0.1209567
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0202703    0.0041917   0.0363489
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.0937500   -0.0073953   0.1948953
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0261438    0.0143634   0.0379242
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0647482    0.0325762   0.0969202
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0192926    0.0039851   0.0346001
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1884058    0.0960185   0.2807931
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0036842    0.0009593   0.0064091
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0420168    0.0059612   0.0780724
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0063830   -0.0008232   0.0135892
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0439560    0.0017997   0.0861124
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0007862    0.0002844   0.0012881
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0019795   -0.0006819   0.0046409
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0089489    0.0066755   0.0112222
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0131040    0.0067250   0.0194831
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0210821    0.0172359   0.0249283
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0687225    0.0540037   0.0834413
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0109639    0.0066008   0.0153270
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0249377    0.0096724   0.0402029
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0117712    0.0096579   0.0138846
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0243822    0.0160858   0.0326787
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0038314    0.0016939   0.0059689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0346154    0.0175593   0.0516715
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0261905    0.0109018   0.0414792
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0526316    0.0023786   0.1028846
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0097364    0.0067704   0.0127024
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0147239    0.0064540   0.0229939
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0284952    0.0239352   0.0330551
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0780488    0.0570501   0.0990474
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0192182    0.0142041   0.0242323
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0510345    0.0292193   0.0728496


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0544041   0.0317480   0.0770603
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.0274390   0.0097332   0.0451449
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0305785   0.0222921   0.0388649
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.0500000   0.0280580   0.0719420
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0059435   0.0025899   0.0092972
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0124777   0.0032839   0.0216715
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0010159   0.0004235   0.0016082
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0095982   0.0074362   0.0117601
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0294072   0.0252982   0.0335163
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0131274   0.0087431   0.0175117
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0131212   0.0109516   0.0152909
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0066202   0.0041469   0.0090935
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0302419   0.0151557   0.0453282
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0105452   0.0077209   0.0133694
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0341470   0.0294209   0.0388732
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0219728   0.0170964   0.0268491


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  1.749311   0.7618527    4.016642
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  4.625000   1.2121338   17.647082
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  2.476619   1.0169935    6.031150
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  9.765700   3.8425498   24.819172
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 11.404562   3.6734787   35.406229
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  6.886446   1.5655118   30.292420
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  2.517783   0.5238295   12.101706
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.464318   0.8455990    2.535749
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  3.259756   2.4603564    4.318890
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.274522   1.0959791    4.720392
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.071342   1.4338745    2.992213
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  9.034615   4.2786035   19.077317
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.009569   0.6562615    6.153597
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  1.512255   0.7982295    2.864984
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.739018   2.0036225    3.744327
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.655529   1.5949768    4.421277


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0110971   -0.0066439   0.0288380
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0071688   -0.0030986   0.0174361
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0044347   -0.0009261   0.0097955
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0307074    0.0124804   0.0489344
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0022593    0.0000921   0.0044266
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0060947   -0.0009369   0.0131263
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0002296   -0.0002931   0.0007524
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0006493   -0.0004094   0.0017080
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0083251    0.0056305   0.0110198
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0021635   -0.0003023   0.0046293
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0013500    0.0004592   0.0022409
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0027888    0.0012122   0.0043653
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0040515   -0.0040407   0.0121436
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0008088   -0.0006168   0.0022343
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0056518    0.0031511   0.0081526
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0027546    0.0008093   0.0046999


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2039745   -0.1837706   0.4647133
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.2612613   -0.1639114   0.5311199
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1450274   -0.0761584   0.3207522
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6141479    0.2597375   0.7988797
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3801316    0.0015864   0.6151526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4884498   -0.1985950   0.7816747
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.2260594   -0.3805449   0.5661250
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0676455   -0.0482802   0.1707514
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.2830986    0.1950310   0.3615312
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1648080   -0.0357851   0.3265537
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1028881    0.0350168   0.1659857
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4212543    0.1728898   0.5950399
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1339683   -0.1686908   0.3582469
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0766949   -0.0671112   0.2011214
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1655151    0.0934210   0.2318761
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1253631    0.0312900   0.2103005
