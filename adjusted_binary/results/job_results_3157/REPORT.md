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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c67e947c-5f94-42b9-b8f8-262993ab74f1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c67e947c-5f94-42b9-b8f8-262993ab74f1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c67e947c-5f94-42b9-b8f8-262993ab74f1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c67e947c-5f94-42b9-b8f8-262993ab74f1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.1014998   0.0651581   0.1378414
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.1546549   0.0826048   0.2267050
6 months    ki1000108-IRC              INDIA           0                    NA                0.0547532   0.0268730   0.0826335
6 months    ki1000108-IRC              INDIA           1                    NA                0.0760763   0.0305743   0.1215784
6 months    ki1000109-EE               PAKISTAN        0                    NA                0.1832359   0.1389016   0.2275701
6 months    ki1000109-EE               PAKISTAN        1                    NA                0.1716430   0.0354042   0.3078818
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                0.1664844   0.1125839   0.2203849
6 months    ki1000109-ResPak           PAKISTAN        1                    NA                0.2888959   0.1545861   0.4232056
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.0651997   0.0464030   0.0839965
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.1291875   0.0701120   0.1882630
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.1245441   0.0878911   0.1611971
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.2076333   0.1174171   0.2978496
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0377301   0.0182173   0.0572428
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.0839082   0.0420127   0.1258037
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.0109409   0.0013953   0.0204866
6 months    ki1017093b-PROVIDE         BANGLADESH      1                    NA                0.0504202   0.0110724   0.0897679
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0213178   0.0088460   0.0337896
6 months    ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.0393258   0.0107514   0.0679003
6 months    ki1101329-Keneba           GAMBIA          0                    NA                0.0265414   0.0195009   0.0335818
6 months    ki1101329-Keneba           GAMBIA          1                    NA                0.1610881   0.0786949   0.2434813
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                0.0253386   0.0111481   0.0395291
6 months    ki1113344-GMS-Nepal        NEPAL           1                    NA                0.0773541   0.0224907   0.1322174
6 months    ki1119695-PROBIT           BELARUS         0                    NA                0.0154263   0.0097252   0.0211274
6 months    ki1119695-PROBIT           BELARUS         1                    NA                0.0147782   0.0091865   0.0203699
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0292236   0.0251741   0.0332731
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0735485   0.0600148   0.0870823
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                0.1326073   0.1078751   0.1573395
6 months    ki1135781-COHORTS          GUATEMALA       1                    NA                0.0638023   0.0274186   0.1001860
6 months    ki1135781-COHORTS          INDIA           0                    NA                0.0297514   0.0252191   0.0342837
6 months    ki1135781-COHORTS          INDIA           1                    NA                0.0436837   0.0319041   0.0554633
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0416009   0.0332476   0.0499542
6 months    ki1135781-COHORTS          PHILIPPINES     1                    NA                0.0441911   0.0241958   0.0641864
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                0.0800000   0.0614767   0.0985233
6 months    ki1148112-LCNI-5           MALAWI          1                    NA                0.3571429   0.1059997   0.6082860
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.0274473   0.0243832   0.0305113
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.0457976   0.0348705   0.0567247
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0363490   0.0304529   0.0422451
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.0598730   0.0404030   0.0793430
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.1036585   0.0568906   0.1504265
24 months   ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.1351351   0.0247048   0.2455655
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                0.1195652   0.0725799   0.1665505
24 months   ki0047075b-MAL-ED          INDIA           1                    NA                0.1500000   0.0390966   0.2609034
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.3200860   0.2643001   0.3758719
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.3521864   0.2580005   0.4463723
24 months   ki1000108-IRC              INDIA           0                    NA                0.0926170   0.0570388   0.1281951
24 months   ki1000108-IRC              INDIA           1                    NA                0.1282152   0.0745909   0.1818395
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.1931324   0.1482368   0.2380279
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.2192711   0.1476480   0.2908942
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.0864745   0.0605120   0.1124370
24 months   ki1017093b-PROVIDE         BANGLADESH      1                    NA                0.0593220   0.0166624   0.1019817
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0578512   0.0338106   0.0818919
24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.0656934   0.0241667   0.1072202
24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.0733514   0.0607148   0.0859881
24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.1624257   0.0826936   0.2421578
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                0.0994544   0.0708233   0.1280855
24 months   ki1113344-GMS-Nepal        NEPAL           1                    NA                0.1471011   0.0679631   0.2262392
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                0.2672811   0.2082734   0.3262889
24 months   ki1114097-CMIN             BANGLADESH      1                    NA                0.3333333   0.0942583   0.5724084
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0929791   0.0681626   0.1177956
24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.2380952   0.0557641   0.4204263
24 months   ki1119695-PROBIT           BELARUS         0                    NA                0.0150531   0.0003987   0.0297074
24 months   ki1119695-PROBIT           BELARUS         1                    NA                0.0186837   0.0061723   0.0311952
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.2450466   0.1997578   0.2903354
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.4417661   0.3299605   0.5535716
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.4372528   0.4045654   0.4699402
24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.3678624   0.2995934   0.4361315
24 months   ki1135781-COHORTS          INDIA           0                    NA                0.1641923   0.1531453   0.1752393
24 months   ki1135781-COHORTS          INDIA           1                    NA                0.1840090   0.1591608   0.2088572
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.2754358   0.2558809   0.2949908
24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.2541180   0.2128306   0.2954055
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.1146191   0.1056964   0.1235419
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.1253449   0.1009902   0.1496997
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0775755   0.0677648   0.0873861
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.0984472   0.0733035   0.1235910


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


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 1.5236970   0.8466840    2.742053
6 months    ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA           1                    0                 1.3894396   0.6335326    3.047266
6 months    ki1000109-EE               PAKISTAN        0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN        1                    0                 0.9367327   0.4086845    2.147055
6 months    ki1000109-ResPak           PAKISTAN        0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN        1                    0                 1.7352730   0.9861710    3.053398
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    0                 1.9814110   1.2068594    3.253063
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.6671474   0.9871626    2.815525
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    0                 2.2239074   1.0859900    4.554152
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH      1                    0                 4.6084034   1.4294855   14.856661
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 1.8447395   0.7257688    4.688909
6 months    ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA          1                    0                 6.0693208   3.4121415   10.795758
6 months    ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL           1                    0                 3.0528201   1.2378924    7.528692
6 months    ki1119695-PROBIT           BELARUS         0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS         1                    0                 0.9579844   0.6756059    1.358387
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 2.5167529   1.9997642    3.167396
6 months    ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA       1                    0                 0.4811372   0.2641978    0.876211
6 months    ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA           1                    0                 1.4682902   1.0782766    1.999372
6 months    ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES     1                    0                 1.0622623   0.6476119    1.742403
6 months    ki1148112-LCNI-5           MALAWI          0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI          1                    0                 4.4642857   2.1292496    9.360033
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    0                 1.6685670   1.2781969    2.178159
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.6471695   1.1471599    2.365117
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH      1                    0                 1.3036566   0.5125857    3.315583
24 months   ki0047075b-MAL-ED          INDIA           0                    0                 1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA           1                    0                 1.2545455   0.5430650    2.898151
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 1.1002869   0.8007996    1.511778
24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA           1                    0                 1.3843595   0.7830701    2.447356
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.1353410   0.7602193    1.695562
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH      1                    0                 0.6860061   0.3146966    1.495423
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 1.1355579   0.5329294    2.419629
24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA          1                    0                 2.2143486   1.3166680    3.724052
24 months   ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL           1                    0                 1.4790810   0.8040495    2.720828
24 months   ki1114097-CMIN             BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH      1                    0                 1.2471264   0.5888451    2.641313
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    0                 2.5607386   1.1380602    5.761894
24 months   ki1119695-PROBIT           BELARUS         0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS         1                    0                 1.2411912   0.3633972    4.239315
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.8027838   1.3170850    2.467593
24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 0.8413038   0.6893809    1.026707
24 months   ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA           1                    0                 1.1206919   0.9653548    1.301025
24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 0.9226035   0.7737008    1.100163
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 1.0935777   0.8878266    1.347011
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.2690515   0.9576620    1.681691


### Parameter: PAR


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0142027   -0.0074965    0.0359020
6 months    ki1000108-IRC              INDIA           0                    NA                 0.0072623   -0.0108319    0.0253564
6 months    ki1000109-EE               PAKISTAN        0                    NA                 0.0038807   -0.0109905    0.0187519
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.0237811   -0.0042147    0.0517769
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0073477   -0.0003210    0.0150163
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0175612   -0.0017153    0.0368377
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0109081   -0.0024658    0.0242819
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                 0.0081563   -0.0003100    0.0166226
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0046188   -0.0033992    0.0126368
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0052199    0.0019086    0.0085313
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0085295   -0.0007698    0.0178288
6 months    ki1119695-PROBIT           BELARUS         0                    NA                -0.0001286   -0.0011644    0.0009072
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0059581    0.0036722    0.0082439
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0116306   -0.0204474   -0.0028138
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.0031312    0.0008204    0.0054420
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0004353   -0.0028641    0.0037348
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                 0.0046246   -0.0002164    0.0094655
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0015744    0.0003111    0.0028378
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0022108    0.0002681    0.0041535
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0057942   -0.0163463    0.0279347
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.0054348   -0.0161277    0.0269973
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0086811   -0.0206225    0.0379848
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0053212   -0.0170542    0.0276965
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0024667   -0.0220026    0.0269359
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                -0.0056309   -0.0160268    0.0047650
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0021488   -0.0110023    0.0152998
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0041544    0.0002647    0.0080441
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0071854   -0.0057594    0.0201302
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.0042706   -0.0117879    0.0203291
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0055610   -0.0018669    0.0129890
24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0008200   -0.0037993    0.0054392
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0105925   -0.0077556    0.0289405
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0077096   -0.0200229    0.0046037
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0032303   -0.0012720    0.0077326
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0018951   -0.0091472    0.0053569
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0000861   -0.0030089    0.0031811
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0020200   -0.0004071    0.0044472


### Parameter: PAF


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.1227521   -0.0832239    0.2895615
6 months    ki1000108-IRC              INDIA           0                    NA                 0.1171039   -0.2241929    0.3632494
6 months    ki1000109-EE               PAKISTAN        0                    NA                 0.0207394   -0.0619847    0.0970197
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.1249890   -0.0327317    0.2586223
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.1012808   -0.0049115    0.1962513
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.1235787   -0.0201826    0.2470816
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.2242699   -0.0890629    0.4474541
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                 0.4270937   -0.0888394    0.6985583
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.1780792   -0.1821916    0.4285582
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.1643489    0.0614584    0.2559597
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.2518458   -0.0484628    0.4661377
6 months    ki1119695-PROBIT           BELARUS         0                    NA                -0.0084066   -0.0774922    0.0562495
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.1693515    0.1048314    0.2292213
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0961395   -0.1697242   -0.0271838
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.0952239    0.0233653    0.1617952
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0103563   -0.0713229    0.0858083
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                 0.0546479   -0.0031785    0.1091410
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0542501    0.0100699    0.0964586
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0573343    0.0053577    0.1065947
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0529379   -0.1715422    0.2344052
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.0434783   -0.1449793    0.2009167
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0264051   -0.0669130    0.1115611
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0543321   -0.2030789    0.2566674
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0126108   -0.1206899    0.1300561
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                -0.0696520   -0.2049603    0.0504622
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0358127   -0.2098968    0.2316227
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0536009    0.0027217    0.1018843
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0673804   -0.0612590    0.1804269
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.0157267   -0.0451956    0.0730980
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0564340   -0.0208643    0.1278795
24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0516569   -0.3213434    0.3193634
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0414353   -0.0328735    0.1103981
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0179483   -0.0470483    0.0103430
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0192943   -0.0079456    0.0457980
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0069281   -0.0337882    0.0192341
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0007508   -0.0265972    0.0273704
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0253787   -0.0059623    0.0557432
