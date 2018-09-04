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

**Intervention Variable:** enwast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enwast    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      200     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0       40     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0      175     183
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        2     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        6     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          0                0      167     203
Birth       ki0047075b-MAL-ED          INDIA                          0                1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          1                0       32     203
Birth       ki0047075b-MAL-ED          INDIA                          1                1        1     203
Birth       ki0047075b-MAL-ED          NEPAL                          0                0      146     169
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        2     169
Birth       ki0047075b-MAL-ED          NEPAL                          1                0       21     169
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0     169
Birth       ki0047075b-MAL-ED          PERU                           0                0      271     279
Birth       ki0047075b-MAL-ED          PERU                           0                1        2     279
Birth       ki0047075b-MAL-ED          PERU                           1                0        6     279
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      240     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       20     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     260
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      115     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        2     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       74      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       11      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0      85
Birth       ki1000108-IRC              INDIA                          0                0      256     369
Birth       ki1000108-IRC              INDIA                          0                1        0     369
Birth       ki1000108-IRC              INDIA                          1                0      113     369
Birth       ki1000108-IRC              INDIA                          1                1        0     369
Birth       ki1000109-EE               PAKISTAN                       0                0        2       4
Birth       ki1000109-EE               PAKISTAN                       0                1        0       4
Birth       ki1000109-EE               PAKISTAN                       1                0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                1        0       4
Birth       ki1000109-ResPak           PAKISTAN                       0                0        6       6
Birth       ki1000109-ResPak           PAKISTAN                       0                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1                0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1                1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      155     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0       11     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        0     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0       20      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0      23
Birth       ki1101329-Keneba           GAMBIA                         0                0     1481    1537
Birth       ki1101329-Keneba           GAMBIA                         0                1       23    1537
Birth       ki1101329-Keneba           GAMBIA                         1                0       30    1537
Birth       ki1101329-Keneba           GAMBIA                         1                1        3    1537
Birth       ki1114097-CMIN             BANGLADESH                     0                0        5       8
Birth       ki1114097-CMIN             BANGLADESH                     0                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1                0        3       8
Birth       ki1114097-CMIN             BANGLADESH                     1                1        0       8
Birth       ki1114097-CMIN             BRAZIL                         0                0      103     111
Birth       ki1114097-CMIN             BRAZIL                         0                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         1                0        8     111
Birth       ki1114097-CMIN             BRAZIL                         1                1        0     111
Birth       ki1114097-CMIN             PERU                           0                0       10      10
Birth       ki1114097-CMIN             PERU                           0                1        0      10
Birth       ki1114097-CMIN             PERU                           1                0        0      10
Birth       ki1114097-CMIN             PERU                           1                1        0      10
Birth       ki1114097-CONTENT          PERU                           0                0        2       2
Birth       ki1114097-CONTENT          PERU                           0                1        0       2
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0                0    10936   13877
Birth       ki1119695-PROBIT           BELARUS                        0                1        0   13877
Birth       ki1119695-PROBIT           BELARUS                        1                0     2941   13877
Birth       ki1119695-PROBIT           BELARUS                        1                1        0   13877
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    10856   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0     2236   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1        0   13092
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      564     762
Birth       ki1135781-COHORTS          GUATEMALA                      0                1        0     762
Birth       ki1135781-COHORTS          GUATEMALA                      1                0      198     762
Birth       ki1135781-COHORTS          GUATEMALA                      1                1        0     762
Birth       ki1135781-COHORTS          INDIA                          0                0     5097    6231
Birth       ki1135781-COHORTS          INDIA                          0                1        0    6231
Birth       ki1135781-COHORTS          INDIA                          1                0     1134    6231
Birth       ki1135781-COHORTS          INDIA                          1                1        0    6231
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2448    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1        0    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0      462    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1        0    2910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    28406   31490
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   31490
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     3084   31490
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1        0   31490
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0     1294    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0       72    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      183     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        5     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       40     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        1     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      195     202
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        7     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     202
6 months    ki0047075b-MAL-ED          INDIA                          0                0      188     233
6 months    ki0047075b-MAL-ED          INDIA                          0                1        5     233
6 months    ki0047075b-MAL-ED          INDIA                          1                0       37     233
6 months    ki0047075b-MAL-ED          INDIA                          1                1        3     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      205     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       27     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     232
6 months    ki0047075b-MAL-ED          PERU                           0                0      250     266
6 months    ki0047075b-MAL-ED          PERU                           0                1       11     266
6 months    ki0047075b-MAL-ED          PERU                           1                0        5     266
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      232     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        4     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       16     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      223     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       12     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        3     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      239     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       27     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       82     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       15     363
6 months    ki1000108-IRC              INDIA                          0                0      242     387
6 months    ki1000108-IRC              INDIA                          0                1       14     387
6 months    ki1000108-IRC              INDIA                          1                0      121     387
6 months    ki1000108-IRC              INDIA                          1                1       10     387
6 months    ki1000109-EE               PAKISTAN                       0                0      480     652
6 months    ki1000109-EE               PAKISTAN                       0                1      108     652
6 months    ki1000109-EE               PAKISTAN                       1                0       50     652
6 months    ki1000109-EE               PAKISTAN                       1                1       14     652
6 months    ki1000109-ResPak           PAKISTAN                       0                0      152     226
6 months    ki1000109-ResPak           PAKISTAN                       0                1       31     226
6 months    ki1000109-ResPak           PAKISTAN                       1                0       31     226
6 months    ki1000109-ResPak           PAKISTAN                       1                1       12     226
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0     1004    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1       70    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      121    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       18    1213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      272     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1       39     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       54     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       15     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      354     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1       14     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      135     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       11     514
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      452     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        5     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      113     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        6     576
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      505     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       11     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      171     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        7     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1883    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       18    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      119    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0    2020
6 months    ki1101329-Keneba           GAMBIA                         0                0     1947    2078
6 months    ki1101329-Keneba           GAMBIA                         0                1       53    2078
6 months    ki1101329-Keneba           GAMBIA                         1                0       65    2078
6 months    ki1101329-Keneba           GAMBIA                         1                1       13    2078
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      270     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1       23     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0        2     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        4     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      916    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1       24    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      168    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       14    1122
6 months    ki1114097-CMIN             BANGLADESH                     0                0      200     232
6 months    ki1114097-CMIN             BANGLADESH                     0                1       18     232
6 months    ki1114097-CMIN             BANGLADESH                     1                0       11     232
6 months    ki1114097-CMIN             BANGLADESH                     1                1        3     232
6 months    ki1114097-CMIN             BRAZIL                         0                0       96     105
6 months    ki1114097-CMIN             BRAZIL                         0                1        2     105
6 months    ki1114097-CMIN             BRAZIL                         1                0        7     105
6 months    ki1114097-CMIN             BRAZIL                         1                1        0     105
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                0      806     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                1       16     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0       21     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1        1     844
6 months    ki1114097-CMIN             PERU                           0                0      599     637
6 months    ki1114097-CMIN             PERU                           0                1        6     637
6 months    ki1114097-CMIN             PERU                           1                0       30     637
6 months    ki1114097-CMIN             PERU                           1                1        2     637
6 months    ki1114097-CONTENT          PERU                           0                0      210     215
6 months    ki1114097-CONTENT          PERU                           0                1        4     215
6 months    ki1114097-CONTENT          PERU                           1                0        1     215
6 months    ki1114097-CONTENT          PERU                           1                1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0                0    12526   15754
6 months    ki1119695-PROBIT           BELARUS                        0                1      195   15754
6 months    ki1119695-PROBIT           BELARUS                        1                0     2987   15754
6 months    ki1119695-PROBIT           BELARUS                        1                1       46   15754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     6428    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1      194    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1141    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       82    7845
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      628     901
6 months    ki1135781-COHORTS          GUATEMALA                      0                1       97     901
6 months    ki1135781-COHORTS          GUATEMALA                      1                0      164     901
6 months    ki1135781-COHORTS          GUATEMALA                      1                1       12     901
6 months    ki1135781-COHORTS          INDIA                          0                0     5205    6508
6 months    ki1135781-COHORTS          INDIA                          0                1      159    6508
6 months    ki1135781-COHORTS          INDIA                          1                0     1089    6508
6 months    ki1135781-COHORTS          INDIA                          1                1       55    6508
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2099    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1       92    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      385    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1       17    2593
6 months    ki1148112-LCNI-5           MALAWI                         0                0      759     839
6 months    ki1148112-LCNI-5           MALAWI                         0                1       66     839
6 months    ki1148112-LCNI-5           MALAWI                         1                0        9     839
6 months    ki1148112-LCNI-5           MALAWI                         1                1        5     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    24681   28427
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      697   28427
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     2921   28427
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      128   28427
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     7544    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      284    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0      734    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       48    8610
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      147     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       17     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       32     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        5     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      156     163
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        6     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     163
24 months   ki0047075b-MAL-ED          INDIA                          0                0      162     224
24 months   ki0047075b-MAL-ED          INDIA                          0                1       22     224
24 months   ki0047075b-MAL-ED          INDIA                          1                0       34     224
24 months   ki0047075b-MAL-ED          INDIA                          1                1        6     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      193     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        6     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       25     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     225
24 months   ki0047075b-MAL-ED          PERU                           0                0      179     197
24 months   ki0047075b-MAL-ED          PERU                           0                1       14     197
24 months   ki0047075b-MAL-ED          PERU                           1                0        4     197
24 months   ki0047075b-MAL-ED          PERU                           1                1        0     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      198     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       23     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       13     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        3     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      139     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       63     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        2     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        1     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      182     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       85     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       63     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       35     365
24 months   ki1000108-IRC              INDIA                          0                0      233     388
24 months   ki1000108-IRC              INDIA                          0                1       23     388
24 months   ki1000108-IRC              INDIA                          1                0      117     388
24 months   ki1000108-IRC              INDIA                          1                1       15     388
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      237     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1       56     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       92     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       24     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      412     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       39     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      111     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        7     569
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      342     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       21     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      128     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        9     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0                0     1516    1716
24 months   ki1101329-Keneba           GAMBIA                         0                1      120    1716
24 months   ki1101329-Keneba           GAMBIA                         1                0       67    1716
24 months   ki1101329-Keneba           GAMBIA                         1                1       13    1716
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      758     994
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       84     994
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0      130     994
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       22     994
24 months   ki1114097-CMIN             BANGLADESH                     0                0      159     232
24 months   ki1114097-CMIN             BANGLADESH                     0                1       58     232
24 months   ki1114097-CMIN             BANGLADESH                     1                0       10     232
24 months   ki1114097-CMIN             BANGLADESH                     1                1        5     232
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                0      478     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                1       49     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       16     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1        5     548
24 months   ki1114097-CMIN             PERU                           0                0      387     429
24 months   ki1114097-CMIN             PERU                           0                1       27     429
24 months   ki1114097-CMIN             PERU                           1                0       12     429
24 months   ki1114097-CMIN             PERU                           1                1        3     429
24 months   ki1114097-CONTENT          PERU                           0                0      160     164
24 months   ki1114097-CONTENT          PERU                           0                1        3     164
24 months   ki1114097-CONTENT          PERU                           1                0        1     164
24 months   ki1114097-CONTENT          PERU                           1                1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0                0     3074    4032
24 months   ki1119695-PROBIT           BELARUS                        0                1       47    4032
24 months   ki1119695-PROBIT           BELARUS                        1                0      894    4032
24 months   ki1119695-PROBIT           BELARUS                        1                1       17    4032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      263     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       84     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       34     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       18     399
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      494    1029
24 months   ki1135781-COHORTS          GUATEMALA                      0                1      382    1029
24 months   ki1135781-COHORTS          GUATEMALA                      1                0       93    1029
24 months   ki1135781-COHORTS          GUATEMALA                      1                1       60    1029
24 months   ki1135781-COHORTS          INDIA                          0                0     3554    5071
24 months   ki1135781-COHORTS          INDIA                          0                1      698    5071
24 months   ki1135781-COHORTS          INDIA                          1                0      668    5071
24 months   ki1135781-COHORTS          INDIA                          1                1      151    5071
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     1434    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1      555    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      271    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       87    2347
24 months   ki1148112-LCNI-5           MALAWI                         0                0      505     579
24 months   ki1148112-LCNI-5           MALAWI                         0                1       64     579
24 months   ki1148112-LCNI-5           MALAWI                         1                0        7     579
24 months   ki1148112-LCNI-5           MALAWI                         1                1        3     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0    11323   14437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1     1468   14437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     1458   14437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      188   14437
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     7083    8405
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      595    8405
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      653    8405
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1       74    8405


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
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/66b4ffb5-d393-47a8-83ec-e925c93832ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/66b4ffb5-d393-47a8-83ec-e925c93832ea/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/66b4ffb5-d393-47a8-83ec-e925c93832ea/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/66b4ffb5-d393-47a8-83ec-e925c93832ea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.1015038   0.0651620   0.1378455
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.1546392   0.0825878   0.2266905
6 months    ki1000108-IRC              INDIA           0                    NA                0.0546875   0.0267992   0.0825758
6 months    ki1000108-IRC              INDIA           1                    NA                0.0763359   0.0308061   0.1218657
6 months    ki1000109-EE               PAKISTAN        0                    NA                0.1836735   0.1393436   0.2280034
6 months    ki1000109-EE               PAKISTAN        1                    NA                0.2187500   0.0752971   0.3622029
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                0.1693989   0.1149315   0.2238664
6 months    ki1000109-ResPak           PAKISTAN        1                    NA                0.2790698   0.1447067   0.4134328
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.0651769   0.0463612   0.0839926
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.1294964   0.0704696   0.1885232
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.1254019   0.0885469   0.1622569
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.2173913   0.1199397   0.3148429
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0380435   0.0184792   0.0576078
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.0753425   0.0324871   0.1181978
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.0109409   0.0013953   0.0204866
6 months    ki1017093b-PROVIDE         BANGLADESH      1                    NA                0.0504202   0.0110724   0.0897679
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0213178   0.0088460   0.0337896
6 months    ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.0393258   0.0107514   0.0679003
6 months    ki1101329-Keneba           GAMBIA          0                    NA                0.0265000   0.0194591   0.0335409
6 months    ki1101329-Keneba           GAMBIA          1                    NA                0.1666667   0.0839412   0.2493921
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                0.0255319   0.0112590   0.0398048
6 months    ki1113344-GMS-Nepal        NEPAL           1                    NA                0.0769231   0.0221254   0.1317207
6 months    ki1119695-PROBIT           BELARUS         0                    NA                0.0153290   0.0096647   0.0209932
6 months    ki1119695-PROBIT           BELARUS         1                    NA                0.0151665   0.0095350   0.0207980
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0292963   0.0252344   0.0333582
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0670482   0.0530302   0.0810662
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                0.1337931   0.1089990   0.1585872
6 months    ki1135781-COHORTS          GUATEMALA       1                    NA                0.0681818   0.0309227   0.1054410
6 months    ki1135781-COHORTS          INDIA           0                    NA                0.0296421   0.0251031   0.0341810
6 months    ki1135781-COHORTS          INDIA           1                    NA                0.0480769   0.0356793   0.0604745
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0419900   0.0335902   0.0503897
6 months    ki1135781-COHORTS          PHILIPPINES     1                    NA                0.0422886   0.0226121   0.0619650
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                0.0800000   0.0614767   0.0985233
6 months    ki1148112-LCNI-5           MALAWI          1                    NA                0.3571429   0.1059997   0.6082860
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.0274647   0.0243925   0.0305370
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.0419810   0.0306378   0.0533242
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0362800   0.0303953   0.0421647
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.0613811   0.0406721   0.0820900
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.1036585   0.0568906   0.1504265
24 months   ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.1351351   0.0247048   0.2455655
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                0.1195652   0.0725799   0.1665505
24 months   ki0047075b-MAL-ED          INDIA           1                    NA                0.1500000   0.0390966   0.2609034
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.3183521   0.2623992   0.3743049
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.3571429   0.2621460   0.4521397
24 months   ki1000108-IRC              INDIA           0                    NA                0.0898438   0.0547693   0.1249182
24 months   ki1000108-IRC              INDIA           1                    NA                0.1136364   0.0594255   0.1678472
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.1911263   0.1460502   0.2362024
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.2068966   0.1330905   0.2807026
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.0864745   0.0605120   0.1124370
24 months   ki1017093b-PROVIDE         BANGLADESH      1                    NA                0.0593220   0.0166624   0.1019817
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0578512   0.0338106   0.0818919
24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.0656934   0.0241667   0.1072202
24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.0733496   0.0607128   0.0859865
24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.1625000   0.0816372   0.2433628
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                0.0997625   0.0711071   0.1284179
24 months   ki1113344-GMS-Nepal        NEPAL           1                    NA                0.1447368   0.0655564   0.2239173
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                0.2672811   0.2082734   0.3262889
24 months   ki1114097-CMIN             BANGLADESH      1                    NA                0.3333333   0.0942583   0.5724084
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0929791   0.0681626   0.1177956
24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.2380952   0.0557641   0.4204263
24 months   ki1119695-PROBIT           BELARUS         0                    NA                0.0150593   0.0004248   0.0296937
24 months   ki1119695-PROBIT           BELARUS         1                    NA                0.0186608   0.0057381   0.0315836
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.2420749   0.1969500   0.2871998
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.3461538   0.2166855   0.4756222
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.4360731   0.4032183   0.4689278
24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.3921569   0.3147572   0.4695565
24 months   ki1135781-COHORTS          INDIA           0                    NA                0.1641580   0.1530231   0.1752930
24 months   ki1135781-COHORTS          INDIA           1                    NA                0.1843712   0.1578103   0.2109320
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.2790347   0.2593191   0.2987503
24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.2430168   0.1985782   0.2874554
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.1147682   0.1058083   0.1237281
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.1142163   0.0880610   0.1403716
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0774941   0.0676844   0.0873039
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.1017882   0.0747655   0.1288109


### Parameter: E(Y)


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.1157025   0.0827518   0.1486532
6 months    ki1000108-IRC              INDIA           NA                   NA                0.0620155   0.0379551   0.0860759
6 months    ki1000109-EE               PAKISTAN        NA                   NA                0.1871166   0.1447155   0.2295176
6 months    ki1000109-ResPak           PAKISTAN        NA                   NA                0.1902655   0.1389784   0.2415526
6 months    ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.0725474   0.0527677   0.0923271
6 months    ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.0486381   0.0300237   0.0672526
6 months    ki1017093b-PROVIDE         BANGLADESH      NA                   NA                0.0190972   0.0079103   0.0302842
6 months    ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0259366   0.0141026   0.0377706
6 months    ki1101329-Keneba           GAMBIA          NA                   NA                0.0317613   0.0242196   0.0393030
6 months    ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.0338681   0.0188862   0.0488500
6 months    ki1119695-PROBIT           BELARUS         NA                   NA                0.0152977   0.0100190   0.0205764
6 months    ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.0351816   0.0311045   0.0392588
6 months    ki1135781-COHORTS          GUATEMALA       NA                   NA                0.1209767   0.0996719   0.1422815
6 months    ki1135781-COHORTS          INDIA           NA                   NA                0.0328826   0.0285497   0.0372155
6 months    ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.0420363   0.0343109   0.0497616
6 months    ki1148112-LCNI-5           MALAWI          NA                   NA                0.0846246   0.0657805   0.1034686
6 months    kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.0290217   0.0260653   0.0319781
6 months    kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0385598   0.0328778   0.0442418
24 months   ki0047075b-MAL-ED          BANGLADESH      NA                   NA                0.1094527   0.0661839   0.1527215
24 months   ki0047075b-MAL-ED          INDIA           NA                   NA                0.1250000   0.0815935   0.1684065
24 months   ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.3287671   0.2805081   0.3770261
24 months   ki1000108-IRC              INDIA           NA                   NA                0.0979381   0.0683249   0.1275514
24 months   ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.1955990   0.1571099   0.2340881
24 months   ki1017093b-PROVIDE         BANGLADESH      NA                   NA                0.0808436   0.0584259   0.1032613
24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0600000   0.0391629   0.0808371
24 months   ki1101329-Keneba           GAMBIA          NA                   NA                0.0775058   0.0648507   0.0901609
24 months   ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.1066398   0.0794767   0.1338030
24 months   ki1114097-CMIN             BANGLADESH      NA                   NA                0.2715517   0.2141972   0.3289063
24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0985401   0.0735635   0.1235168
24 months   ki1119695-PROBIT           BELARUS         NA                   NA                0.0158730   0.0044440   0.0273021
24 months   ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.2556391   0.2127831   0.2984951
24 months   ki1135781-COHORTS          GUATEMALA       NA                   NA                0.4295432   0.3992834   0.4598031
24 months   ki1135781-COHORTS          INDIA           NA                   NA                0.1674226   0.1571457   0.1776995
24 months   ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.2735407   0.2555022   0.2915792
24 months   kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.1147053   0.1062340   0.1231766
24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0795955   0.0702601   0.0889308


### Parameter: RR


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 1.5234822   0.8465322    2.7417718
6 months    ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000108-IRC              INDIA           1                    0                 1.3958561   0.6368510    3.0594506
6 months    ki1000109-EE               PAKISTAN        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-EE               PAKISTAN        1                    0                 1.1909722   0.5921368    2.3954175
6 months    ki1000109-ResPak           PAKISTAN        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-ResPak           PAKISTAN        1                    0                 1.6474119   0.9233428    2.9392831
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    0                 1.9868448   1.2099150    3.2626692
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.7335563   1.0142465    2.9630049
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.9804305   0.9198892    4.2636714
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH      1                    0                 4.6084034   1.4294855   14.8566610
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 1.8447395   0.7257688    4.6889094
6 months    ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba           GAMBIA          1                    0                 6.2893082   3.5817786   11.0435070
6 months    ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL           1                    0                 3.0128205   1.2181721    7.4513996
6 months    ki1119695-PROBIT           BELARUS         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS         1                    0                 0.9894004   0.7058306    1.3868953
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 2.2886261   1.7808354    2.9412091
6 months    ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA       1                    0                 0.5096064   0.2861752    0.9074814
6 months    ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA           1                    0                 1.6219158   1.2016558    2.1891551
6 months    ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES     1                    0                 1.0071112   0.6069038    1.6712253
6 months    ki1148112-LCNI-5           MALAWI          0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI          1                    0                 4.4642857   2.1292496    9.3600332
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    0                 1.5285412   1.1357450    2.0571857
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.6918699   1.1650349    2.4569425
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH      1                    0                 1.3036566   0.5125857    3.3155829
24 months   ki0047075b-MAL-ED          INDIA           0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          INDIA           1                    0                 1.2545455   0.5430650    2.8981511
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 1.1218487   0.8155965    1.5430970
24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000108-IRC              INDIA           1                    0                 1.2648221   0.6828358    2.3428401
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.0825123   0.7058458    1.6601826
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH      1                    0                 0.6860061   0.3146966    1.4954226
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 1.1355579   0.5329294    2.4196293
24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba           GAMBIA          1                    0                 2.2154167   1.3084505    3.7510559
24 months   ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL           1                    0                 1.4508145   0.7821081    2.6912683
24 months   ki1114097-CMIN             BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1114097-CMIN             BANGLADESH      1                    0                 1.2471264   0.5888451    2.6413131
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    0                 2.5607386   1.1380602    5.7618938
24 months   ki1119695-PROBIT           BELARUS         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS         1                    0                 1.2391573   0.3583536    4.2849041
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.4299451   0.9415175    2.1717523
24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 0.8992917   0.7280333    1.1108359
24 months   ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA           1                    0                 1.1231322   0.9578056    1.3169958
24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 0.8709195   0.7158792    1.0595374
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 0.9951911   0.7811480    1.2678843
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.3134951   0.9826378    1.7557531


### Parameter: PAR


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0141987   -0.0075007    0.0358982
6 months    ki1000108-IRC              INDIA           0                    NA                 0.0073280   -0.0107742    0.0254302
6 months    ki1000109-EE               PAKISTAN        0                    NA                 0.0034431   -0.0113388    0.0182250
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.0208666   -0.0072863    0.0490195
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0073705   -0.0003326    0.0150736
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0167033   -0.0025489    0.0359556
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0105947   -0.0028657    0.0240550
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                 0.0081563   -0.0003100    0.0166226
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0046188   -0.0033992    0.0126368
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0052613    0.0019409    0.0085817
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0083362   -0.0009822    0.0176546
6 months    ki1119695-PROBIT           BELARUS         0                    NA                -0.0000313   -0.0010255    0.0009629
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0058854    0.0035900    0.0081807
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0128164   -0.0217224   -0.0039104
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.0032405    0.0009135    0.0055676
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0000463   -0.0032705    0.0033631
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                 0.0046246   -0.0002164    0.0094655
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0015570    0.0002806    0.0028334
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0022798    0.0003531    0.0042065
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0057942   -0.0163463    0.0279347
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.0054348   -0.0161277    0.0269973
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0104151   -0.0192390    0.0400691
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0080944   -0.0139007    0.0300895
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0044727   -0.0200650    0.0290104
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                -0.0056309   -0.0160268    0.0047650
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0021488   -0.0110023    0.0152998
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0041562    0.0002383    0.0080741
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0068774   -0.0060778    0.0198325
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.0042706   -0.0117879    0.0203291
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0055610   -0.0018669    0.0129890
24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0008137   -0.0038460    0.0054735
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0135642   -0.0046330    0.0317613
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0065298   -0.0190686    0.0060089
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0032646   -0.0013914    0.0079205
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0054940   -0.0129281    0.0019401
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0000629   -0.0032179    0.0030920
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0021013   -0.0003297    0.0045324


### Parameter: PAF


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.1227175   -0.0832594    0.2895288
6 months    ki1000108-IRC              INDIA           0                    NA                 0.1181641   -0.2234020    0.3643671
6 months    ki1000109-EE               PAKISTAN        0                    NA                 0.0184008   -0.0637979    0.0942481
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.1096709   -0.0492635    0.2445310
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.1015956   -0.0051720    0.1970225
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.1175420   -0.0262974    0.2412217
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.2178261   -0.0975118    0.4425608
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                 0.4270937   -0.0888394    0.6985583
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.1780792   -0.1821916    0.4285582
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.1656515    0.0624562    0.2574881
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.2461366   -0.0557717    0.4617113
6 months    ki1119695-PROBIT           BELARUS         0                    NA                -0.0020448   -0.0689602    0.0606817
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.1672849    0.1024030    0.2274770
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                -0.1059412   -0.1802875   -0.0362779
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.0985490    0.0261484    0.1655670
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0011013   -0.0810028    0.0769693
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                 0.0546479   -0.0031785    0.1091410
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0536485    0.0089805    0.0963032
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0591236    0.0075790    0.1079910
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0529379   -0.1715422    0.2344052
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.0434783   -0.1449793    0.2009167
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0316792   -0.0628463    0.1177979
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0826480   -0.1703871    0.2809775
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0228669   -0.1109428    0.1405596
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                -0.0696520   -0.2049603    0.0504622
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0358127   -0.2098968    0.2316227
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0536243    0.0023769    0.1022391
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0644915   -0.0642492    0.1776587
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.0157267   -0.0451956    0.0730980
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0564340   -0.0208643    0.1278795
24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0512656   -0.3243162    0.3203308
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0530598   -0.0206572    0.1214527
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0152018   -0.0448270    0.0135835
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0194989   -0.0086928    0.0469027
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0200848   -0.0476197    0.0067264
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0005486   -0.0284361    0.0265827
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0264002   -0.0050099    0.0568287
