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

agecat      studyid                    country                        enwast    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      174     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       27     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       36     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        4     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0      163     183
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1       14     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        6     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          0               0      146     203
Birth       ki0047075b-MAL-ED          INDIA                          0               1       24     203
Birth       ki0047075b-MAL-ED          INDIA                          1               0       27     203
Birth       ki0047075b-MAL-ED          INDIA                          1               1        6     203
Birth       ki0047075b-MAL-ED          NEPAL                          0               0      136     169
Birth       ki0047075b-MAL-ED          NEPAL                          0               1       12     169
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       19     169
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        2     169
Birth       ki0047075b-MAL-ED          PERU                           0               0      248     279
Birth       ki0047075b-MAL-ED          PERU                           0               1       25     279
Birth       ki0047075b-MAL-ED          PERU                           1               0        5     279
Birth       ki0047075b-MAL-ED          PERU                           1               1        1     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      218     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       22     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       16     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        4     260
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      104     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       12     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       65      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        9      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        9      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        2      85
Birth       ki1000108-IRC              INDIA                          0               0      232     369
Birth       ki1000108-IRC              INDIA                          0               1       24     369
Birth       ki1000108-IRC              INDIA                          1               0      111     369
Birth       ki1000108-IRC              INDIA                          1               1        2     369
Birth       ki1000109-EE               PAKISTAN                       0               0        0       4
Birth       ki1000109-EE               PAKISTAN                       0               1        2       4
Birth       ki1000109-EE               PAKISTAN                       1               0        2       4
Birth       ki1000109-EE               PAKISTAN                       1               1        0       4
Birth       ki1000109-ResPak           PAKISTAN                       0               0        5       6
Birth       ki1000109-ResPak           PAKISTAN                       0               1        1       6
Birth       ki1000109-ResPak           PAKISTAN                       1               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1               1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0      132     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1       23     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0        9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        2     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0       20      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0       19      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0      23
Birth       ki1101329-Keneba           GAMBIA                         0               0     1430    1537
Birth       ki1101329-Keneba           GAMBIA                         0               1       74    1537
Birth       ki1101329-Keneba           GAMBIA                         1               0       29    1537
Birth       ki1101329-Keneba           GAMBIA                         1               1        4    1537
Birth       ki1114097-CMIN             BANGLADESH                     0               0        5       8
Birth       ki1114097-CMIN             BANGLADESH                     0               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1               0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     1               1        1       8
Birth       ki1114097-CMIN             BRAZIL                         0               0      102     111
Birth       ki1114097-CMIN             BRAZIL                         0               1        1     111
Birth       ki1114097-CMIN             BRAZIL                         1               0        8     111
Birth       ki1114097-CMIN             BRAZIL                         1               1        0     111
Birth       ki1114097-CMIN             PERU                           0               0       10      10
Birth       ki1114097-CMIN             PERU                           0               1        0      10
Birth       ki1114097-CMIN             PERU                           1               0        0      10
Birth       ki1114097-CMIN             PERU                           1               1        0      10
Birth       ki1114097-CONTENT          PERU                           0               0        2       2
Birth       ki1114097-CONTENT          PERU                           0               1        0       2
Birth       ki1114097-CONTENT          PERU                           1               0        0       2
Birth       ki1114097-CONTENT          PERU                           1               1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0               0    10910   13877
Birth       ki1119695-PROBIT           BELARUS                        0               1       26   13877
Birth       ki1119695-PROBIT           BELARUS                        1               0     2941   13877
Birth       ki1119695-PROBIT           BELARUS                        1               1        0   13877
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    10252   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1      604   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     2146   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1       90   13092
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      540     762
Birth       ki1135781-COHORTS          GUATEMALA                      0               1       24     762
Birth       ki1135781-COHORTS          GUATEMALA                      1               0      198     762
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        0     762
Birth       ki1135781-COHORTS          INDIA                          0               0     4772    6231
Birth       ki1135781-COHORTS          INDIA                          0               1      325    6231
Birth       ki1135781-COHORTS          INDIA                          1               0     1074    6231
Birth       ki1135781-COHORTS          INDIA                          1               1       60    6231
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2373    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1       75    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      451    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       11    2910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0    23912   31490
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1     4494   31490
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     2638   31490
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      446   31490
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     1094    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1      200    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0       56    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1       16    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      157     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1       31     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0       34     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        7     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      189     202
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        6     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        7     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     202
6 months    ki0047075b-MAL-ED          INDIA                          0               0      157     233
6 months    ki0047075b-MAL-ED          INDIA                          0               1       36     233
6 months    ki0047075b-MAL-ED          INDIA                          1               0       33     233
6 months    ki0047075b-MAL-ED          INDIA                          1               1        7     233
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      197     232
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        8     232
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       25     232
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        2     232
6 months    ki0047075b-MAL-ED          PERU                           0               0      205     266
6 months    ki0047075b-MAL-ED          PERU                           0               1       56     266
6 months    ki0047075b-MAL-ED          PERU                           1               0        5     266
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      189     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       47     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       15     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        2     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      185     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       50     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        2     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      192     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1       74     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       61     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       36     363
6 months    ki1000108-IRC              INDIA                          0               0      203     387
6 months    ki1000108-IRC              INDIA                          0               1       53     387
6 months    ki1000108-IRC              INDIA                          1               0       96     387
6 months    ki1000108-IRC              INDIA                          1               1       35     387
6 months    ki1000109-EE               PAKISTAN                       0               0      322     652
6 months    ki1000109-EE               PAKISTAN                       0               1      266     652
6 months    ki1000109-EE               PAKISTAN                       1               0       32     652
6 months    ki1000109-EE               PAKISTAN                       1               1       32     652
6 months    ki1000109-ResPak           PAKISTAN                       0               0      120     226
6 months    ki1000109-ResPak           PAKISTAN                       0               1       63     226
6 months    ki1000109-ResPak           PAKISTAN                       1               0       26     226
6 months    ki1000109-ResPak           PAKISTAN                       1               1       17     226
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      831    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1      243    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0       90    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       49    1213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0      181     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1      130     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       33     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               0      282     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               1       86     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0      107     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1       39     514
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      390     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       67     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0       98     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       21     576
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      416     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1      100     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      144     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       34     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1715    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      186    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      111    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        8    2020
6 months    ki1101329-Keneba           GAMBIA                         0               0     1741    2078
6 months    ki1101329-Keneba           GAMBIA                         0               1      259    2078
6 months    ki1101329-Keneba           GAMBIA                         1               0       49    2078
6 months    ki1101329-Keneba           GAMBIA                         1               1       29    2078
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      208     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1       85     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        5     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      742    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1      198    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      146    1122
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       36    1122
6 months    ki1114097-CMIN             BANGLADESH                     0               0      142     232
6 months    ki1114097-CMIN             BANGLADESH                     0               1       76     232
6 months    ki1114097-CMIN             BANGLADESH                     1               0        8     232
6 months    ki1114097-CMIN             BANGLADESH                     1               1        6     232
6 months    ki1114097-CMIN             BRAZIL                         0               0       89     105
6 months    ki1114097-CMIN             BRAZIL                         0               1        9     105
6 months    ki1114097-CMIN             BRAZIL                         1               0        7     105
6 months    ki1114097-CMIN             BRAZIL                         1               1        0     105
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0               0      753     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0               1       69     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               0       19     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               1        3     844
6 months    ki1114097-CMIN             PERU                           0               0      567     637
6 months    ki1114097-CMIN             PERU                           0               1       38     637
6 months    ki1114097-CMIN             PERU                           1               0       27     637
6 months    ki1114097-CMIN             PERU                           1               1        5     637
6 months    ki1114097-CONTENT          PERU                           0               0      195     215
6 months    ki1114097-CONTENT          PERU                           0               1       19     215
6 months    ki1114097-CONTENT          PERU                           1               0        1     215
6 months    ki1114097-CONTENT          PERU                           1               1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0               0    11917   15754
6 months    ki1119695-PROBIT           BELARUS                        0               1      804   15754
6 months    ki1119695-PROBIT           BELARUS                        1               0     2851   15754
6 months    ki1119695-PROBIT           BELARUS                        1               1      182   15754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     5734    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1      888    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      936    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      287    7845
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      420     901
6 months    ki1135781-COHORTS          GUATEMALA                      0               1      305     901
6 months    ki1135781-COHORTS          GUATEMALA                      1               0      115     901
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       61     901
6 months    ki1135781-COHORTS          INDIA                          0               0     4516    6508
6 months    ki1135781-COHORTS          INDIA                          0               1      848    6508
6 months    ki1135781-COHORTS          INDIA                          1               0      943    6508
6 months    ki1135781-COHORTS          INDIA                          1               1      201    6508
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     1760    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1      431    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      332    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       70    2593
6 months    ki1148112-LCNI-5           MALAWI                         0               0      522     839
6 months    ki1148112-LCNI-5           MALAWI                         0               1      303     839
6 months    ki1148112-LCNI-5           MALAWI                         1               0        8     839
6 months    ki1148112-LCNI-5           MALAWI                         1               1        6     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0    20820   28427
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1     4558   28427
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     2457   28427
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      592   28427
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     6181    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1     1647    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0      577    8610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      205    8610
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0       91     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       73     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       22     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       15     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      151     163
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        6     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        6     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     163
24 months   ki0047075b-MAL-ED          INDIA                          0               0      102     224
24 months   ki0047075b-MAL-ED          INDIA                          0               1       82     224
24 months   ki0047075b-MAL-ED          INDIA                          1               0       30     224
24 months   ki0047075b-MAL-ED          INDIA                          1               1       10     224
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      160     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               1       39     225
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       19     225
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        7     225
24 months   ki0047075b-MAL-ED          PERU                           0               0      122     197
24 months   ki0047075b-MAL-ED          PERU                           0               1       71     197
24 months   ki0047075b-MAL-ED          PERU                           1               0        3     197
24 months   ki0047075b-MAL-ED          PERU                           1               1        1     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      140     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       81     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       13     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        3     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       58     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1      144     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        2     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0       73     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1      194     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       30     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       68     365
24 months   ki1000108-IRC              INDIA                          0               0      162     388
24 months   ki1000108-IRC              INDIA                          0               1       94     388
24 months   ki1000108-IRC              INDIA                          1               0       69     388
24 months   ki1000108-IRC              INDIA                          1               1       63     388
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               0      134     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               1      159     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0       57     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1       59     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      302     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1      149     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       82     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       36     569
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      275     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       88     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      101     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       36     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0               0     1095    1716
24 months   ki1101329-Keneba           GAMBIA                         0               1      541    1716
24 months   ki1101329-Keneba           GAMBIA                         1               0       49    1716
24 months   ki1101329-Keneba           GAMBIA                         1               1       31    1716
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      454     994
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1      388     994
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       98     994
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       54     994
24 months   ki1114097-CMIN             BANGLADESH                     0               0       71     232
24 months   ki1114097-CMIN             BANGLADESH                     0               1      146     232
24 months   ki1114097-CMIN             BANGLADESH                     1               0        6     232
24 months   ki1114097-CMIN             BANGLADESH                     1               1        9     232
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0               0      353     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0               1      174     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               0       11     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               1       10     548
24 months   ki1114097-CMIN             PERU                           0               0      284     429
24 months   ki1114097-CMIN             PERU                           0               1      130     429
24 months   ki1114097-CMIN             PERU                           1               0        8     429
24 months   ki1114097-CMIN             PERU                           1               1        7     429
24 months   ki1114097-CONTENT          PERU                           0               0      142     164
24 months   ki1114097-CONTENT          PERU                           0               1       21     164
24 months   ki1114097-CONTENT          PERU                           1               0        1     164
24 months   ki1114097-CONTENT          PERU                           1               1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0               0     2869    4032
24 months   ki1119695-PROBIT           BELARUS                        0               1      252    4032
24 months   ki1119695-PROBIT           BELARUS                        1               0      820    4032
24 months   ki1119695-PROBIT           BELARUS                        1               1       91    4032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      136     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      211     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       18     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       34     399
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      179    1029
24 months   ki1135781-COHORTS          GUATEMALA                      0               1      697    1029
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       35    1029
24 months   ki1135781-COHORTS          GUATEMALA                      1               1      118    1029
24 months   ki1135781-COHORTS          INDIA                          0               0     2356    5071
24 months   ki1135781-COHORTS          INDIA                          0               1     1896    5071
24 months   ki1135781-COHORTS          INDIA                          1               0      450    5071
24 months   ki1135781-COHORTS          INDIA                          1               1      369    5071
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0      772    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1     1217    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      149    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1      209    2347
24 months   ki1148112-LCNI-5           MALAWI                         0               0      319     579
24 months   ki1148112-LCNI-5           MALAWI                         0               1      250     579
24 months   ki1148112-LCNI-5           MALAWI                         1               0        4     579
24 months   ki1148112-LCNI-5           MALAWI                         1               1        6     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0     7163   14437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1     5628   14437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      952   14437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      694   14437
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     4918    8405
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1     2760    8405
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0      426    8405
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      301    8405


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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/c3ab9f86-e5a9-4949-bcd4-4b65da6e8d5a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c3ab9f86-e5a9-4949-bcd4-4b65da6e8d5a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c3ab9f86-e5a9-4949-bcd4-4b65da6e8d5a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c3ab9f86-e5a9-4949-bcd4-4b65da6e8d5a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                0.1411765   0.0887043   0.1936486
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                0.1818182   0.0498993   0.3137371
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0554833   0.0511893   0.0597774
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0425944   0.0345037   0.0506851
Birth       ki1135781-COHORTS          INDIA                          0                    NA                0.0638115   0.0571077   0.0705154
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.0474654   0.0355139   0.0594168
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0307257   0.0238883   0.0375631
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0237109   0.0098741   0.0375478
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1585074   0.1518974   0.1651175
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1488620   0.1307605   0.1669635
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1543603   0.1234860   0.1852345
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2163914   0.0721309   0.3606519
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1648936   0.1117327   0.2180545
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1707317   0.0553037   0.2861597
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1865285   0.1314544   0.2416026
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1750000   0.0569956   0.2930044
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2784688   0.2246293   0.3323082
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3702295   0.2743915   0.4660674
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2073274   0.1577971   0.2568577
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2673400   0.1921051   0.3425748
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4521681   0.3953201   0.5090161
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5031313   0.3568444   0.6494182
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.3414164   0.2726223   0.4102105
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3928471   0.2434449   0.5422493
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2249394   0.2016348   0.2482440
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2809379   0.1710472   0.3908285
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4231888   0.3687874   0.4775903
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5661051   0.4619822   0.6702280
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2368863   0.1939302   0.2798423
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2892820   0.2205693   0.3579946
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1460614   0.1137539   0.1783688
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1826973   0.1173175   0.2480770
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2010395   0.1672716   0.2348073
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2455481   0.1919030   0.2991932
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0978432   0.0844843   0.1112021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0672269   0.0222239   0.1122299
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1295566   0.1148403   0.1442728
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.3690081   0.2629463   0.4750698
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2106625   0.1738047   0.2475202
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1966842   0.1156689   0.2776995
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3486239   0.2852292   0.4120185
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4285714   0.1687861   0.6883568
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0628099   0.0434618   0.0821581
6 months    ki1114097-CMIN             PERU                           1                    NA                0.1562500   0.0303484   0.2821516
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0634701   0.0487191   0.0782211
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0589557   0.0395929   0.0783186
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1338890   0.1257163   0.1420617
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2558109   0.2330573   0.2785646
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4206704   0.3851699   0.4561708
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3271025   0.2668759   0.3873292
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1587575   0.1490199   0.1684950
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1680538   0.1475832   0.1885243
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1960350   0.1794767   0.2125933
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1786095   0.1442560   0.2129630
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                0.3672727   0.3343586   0.4001869
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.4285714   0.1691919   0.6879509
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1793408   0.1716006   0.1870809
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1966000   0.1753217   0.2178783
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2104167   0.1958864   0.2249470
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2584859   0.2121711   0.3048007
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4437041   0.3677365   0.5196717
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4265481   0.2902632   0.5628330
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.4496884   0.3784283   0.5209485
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2282388   0.1119401   0.3445375
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1959799   0.1407050   0.2512548
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2692308   0.0983547   0.4401068
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7284236   0.6753447   0.7815025
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6871337   0.5976113   0.7766560
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3621145   0.3039763   0.4202527
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4621288   0.3812429   0.5430148
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5426612   0.4857525   0.5995700
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5008522   0.4118658   0.5898386
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3311730   0.2879949   0.3743511
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3145506   0.2378475   0.3912537
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2422309   0.1985072   0.2859546
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2626517   0.1917740   0.3335294
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3302239   0.3074276   0.3530202
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2962005   0.1954871   0.3969138
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4611367   0.4136371   0.5086363
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3538264   0.2466245   0.4610284
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6728111   0.6102503   0.7353718
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6000000   0.3515459   0.8484541
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3306901   0.2904773   0.3709028
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.5022626   0.2952918   0.7092335
24 months   ki1114097-CMIN             PERU                           0                    NA                0.3140097   0.2692502   0.3587692
24 months   ki1114097-CMIN             PERU                           1                    NA                0.4666667   0.2139046   0.7194288
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0810006   0.0489792   0.1130220
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0987740   0.0623062   0.1352419
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6096629   0.5584012   0.6609246
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6619081   0.5499265   0.7738898
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7951418   0.7684965   0.8217870
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7477353   0.6858397   0.8096309
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4461854   0.4314160   0.4609548
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4547137   0.4240037   0.4854237
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6075351   0.5862551   0.6288150
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5967751   0.5493426   0.6442076
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4388143   0.4240767   0.4535520
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4122237   0.3773942   0.4470532
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3593496   0.3407128   0.3779864
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4113960   0.3573140   0.4654779


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1477833   0.0988437   0.1967228
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0530095   0.0491714   0.0568475
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0617878   0.0558091   0.0677665
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0295533   0.0233992   0.0357074
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1568752   0.1505743   0.1631761
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1581259   0.1278797   0.1883722
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1659389   0.1176493   0.2142285
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1845494   0.1346311   0.2344676
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3030303   0.2556886   0.3503720
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2273902   0.1855763   0.2692041
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4570552   0.4028965   0.5112140
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3539823   0.2914982   0.4164664
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2407255   0.2138448   0.2676061
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2431907   0.2060665   0.2803148
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1527778   0.1233713   0.1821843
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1930836   0.1636957   0.2224715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0960396   0.0831873   0.1088919
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1385948   0.1237352   0.1534544
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2085561   0.1749069   0.2422054
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3534483   0.2918020   0.4150945
6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0675039   0.0480051   0.0870027
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0625873   0.0488338   0.0763408
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1497769   0.1418798   0.1576740
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4062153   0.3741290   0.4383016
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1611862   0.1522521   0.1701204
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1932125   0.1780130   0.2084119
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1811658   0.1735678   0.1887638
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2150987   0.2013243   0.2288732
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4378109   0.3690538   0.5065681
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4107143   0.3461446   0.4752839
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2044444   0.1516307   0.2572582
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7178082   0.6715729   0.7640435
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4046392   0.3557383   0.4535401
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5330073   0.4845968   0.5814178
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3251318   0.2866094   0.3636542
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2480000   0.2101093   0.2858907
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3333333   0.3110228   0.3556439
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4446680   0.4009358   0.4884002
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6681034   0.6073788   0.7288281
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3357664   0.2961903   0.3753426
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3193473   0.2751780   0.3635166
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0850694   0.0559313   0.1142076
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6140351   0.5662077   0.6618625
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7920311   0.7672214   0.8168408
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4466575   0.4329730   0.4603419
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6075841   0.5878253   0.6273430
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4379026   0.4237391   0.4520661
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3641880   0.3463720   0.3820040


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 1.2878788   0.5699441   2.9101656
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.7676969   0.6254051   0.9423628
Birth       ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 0.7438365   0.5664914   0.9767009
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.7716976   0.4132920   1.4409112
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9391484   0.8266983   1.0668942
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4018598   0.6965956   2.8211648
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.0354052   0.4895738   2.1897902
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 0.9381944   0.4493659   1.9587797
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.3295187   0.9632548   1.8350493
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 1.2894579   0.8917149   1.8646112
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.1127086   0.8106141   1.5273857
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.1506394   0.7478405   1.7703921
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.2489491   0.8442829   1.8475723
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.3377128   1.0695620   1.6730919
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.2211850   0.9060668   1.6458972
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2508253   0.8246145   1.8973276
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2213925   0.9274817   1.6084410
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6870877   0.3469776   1.3605763
6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 2.8482390   2.0915839   3.8786231
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9336459   0.5971096   1.4598571
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.2293233   0.6528619   2.3147865
6 months    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 2.4876645   1.0499049   5.8943191
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.9288742   0.6775424   1.2734366
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.9106195   1.7158135   2.1275430
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.7775745   0.6359435   0.9507482
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.0585567   0.9242597   1.2123674
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9111103   0.7388709   1.1235007
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 1.1669024   0.6328859   2.1515115
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.0962370   0.9802777   1.2259133
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2284475   1.0115686   1.4918249
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9613346   0.6690210   1.3813681
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.5075487   0.2987594   0.8622513
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.3737673   0.6859352   2.7513335
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9433160   0.8133556   1.0940418
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.2761954   1.0073908   1.6167257
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.9229556   0.7509379   1.1343775
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9498075   0.7203553   1.2523462
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0843029   0.7865304   1.4948091
24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.8969685   0.6341988   1.2686126
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.7672919   0.5576801   1.0556893
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8917808   0.5833684   1.3632433
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.5188318   0.9880096   2.3348459
24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 1.4861538   0.8488405   2.6019651
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.2194239   0.7978415   1.8637722
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0856952   0.8987114   1.3115825
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9403799   0.8600471   1.0282161
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.0191138   0.9464788   1.0973229
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9822892   0.9011837   1.0706940
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9394035   0.8602869   1.0257960
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1448350   0.9949343   1.3173203


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0066068   -0.0165648    0.0297784
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0024739   -0.0040468   -0.0009010
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0020237   -0.0046822    0.0006348
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0011724   -0.0036384    0.0012935
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0016322   -0.0035729    0.0003084
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0037657   -0.0043685    0.0118998
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0010452   -0.0217092    0.0237997
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0019791   -0.0243421    0.0203838
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0245615   -0.0050555    0.0541786
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0200628   -0.0106786    0.0508042
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0048871   -0.0131089    0.0228831
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0125659   -0.0184831    0.0436150
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0157861   -0.0015752    0.0331474
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0057585   -0.0176829    0.0292000
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0063044   -0.0174600    0.0300688
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0067164   -0.0085718    0.0220046
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0079559   -0.0250891    0.0091774
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018036   -0.0045870    0.0009797
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0090382    0.0045504    0.0135261
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0021063   -0.0166111    0.0123984
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0048244   -0.0114980    0.0211468
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0046940   -0.0018986    0.0112867
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0008828   -0.0045005    0.0027348
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0158879    0.0119184    0.0198575
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0144550   -0.0295280    0.0006179
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0024288   -0.0017643    0.0066218
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0028225   -0.0090644    0.0034194
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0010229   -0.0033723    0.0054180
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0018250   -0.0006195    0.0042695
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0046820    0.0000620    0.0093020
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0058932   -0.0390307    0.0272443
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0389741   -0.0673691   -0.0105791
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0084645   -0.0125139    0.0294430
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0106154   -0.0386940    0.0174632
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0425247    0.0074362    0.0776132
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0096539   -0.0400960    0.0207882
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0060412   -0.0254171    0.0133347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0057691   -0.0171475    0.0286857
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0031094   -0.0019815    0.0082004
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0164687   -0.0346738    0.0017364
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0047076   -0.0214330    0.0120178
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0050764   -0.0036257    0.0137784
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0053377   -0.0040226    0.0146979
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0040689   -0.0050780    0.0132158
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0043721   -0.0139443    0.0226886
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0031107   -0.0137756    0.0075543
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0004721   -0.0052383    0.0061824
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0000491   -0.0082020    0.0083002
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0009117   -0.0053311    0.0035076
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0048384   -0.0001857    0.0098625


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0447059   -0.1251384    0.1889115
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0466682   -0.0766070   -0.0175620
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0327525   -0.0765872    0.0092973
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0396719   -0.1261695    0.0401822
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0104047   -0.0228544    0.0018934
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0238143   -0.0289478    0.0738708
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0062990   -0.1407298    0.1343772
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0107242   -0.1394422    0.1034531
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0810530   -0.0218787    0.1736167
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0882306   -0.0568687    0.2134090
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0106926   -0.0294794    0.0492970
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0354988   -0.0563320    0.1193464
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0655771   -0.0056421    0.1317526
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0134248   -0.0427381    0.0665627
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0259237   -0.0767113    0.1187752
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0439619   -0.0613564    0.1388295
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0412044   -0.1341856    0.0441542
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0187801   -0.0480893    0.0097095
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0652134    0.0328111    0.0965302
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0100996   -0.0820903    0.0571016
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0136496   -0.0336341    0.0587702
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0695368   -0.0314343    0.1606235
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0141053   -0.0731664    0.0417053
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1060773    0.0796140    0.1317798
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0355847   -0.0734627    0.0009568
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0150680   -0.0112766    0.0407264
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0146083   -0.0474288    0.0171838
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0027773   -0.0092285    0.0146403
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0100738   -0.0034745    0.0234392
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0217668    0.0000040    0.0430560
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0134605   -0.0921067    0.0595221
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0948935   -0.1675188   -0.0267859
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0414027   -0.0665873    0.1384589
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0147887   -0.0547230    0.0236337
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.1050928    0.0140008    0.1877693
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0181121   -0.0769021    0.0374684
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0185807   -0.0799879    0.0393349
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0232625   -0.0736200    0.1114024
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0093282   -0.0060647    0.0244857
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0370359   -0.0789347    0.0032359
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0070462   -0.0324198    0.0177037
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0151187   -0.0111391    0.0406946
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0167143   -0.0130303    0.0455855
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0478299   -0.0705104    0.1530882
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0071204   -0.0231689    0.0365129
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0039274   -0.0174886    0.0094529
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0010569   -0.0118096    0.0137597
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0000808   -0.0135920    0.0135691
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0020821   -0.0122269    0.0079611
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0132854   -0.0006394    0.0270165
