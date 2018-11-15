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

unadjusted

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
Birth       ki1000109-EE               PAKISTAN                       0               0        0       2
Birth       ki1000109-EE               PAKISTAN                       0               1        1       2
Birth       ki1000109-EE               PAKISTAN                       1               0        1       2
Birth       ki1000109-EE               PAKISTAN                       1               1        0       2
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0    11956   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1     2247   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     1319   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      223   15745
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0      547     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1      100     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0       28     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        8     683
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
6 months    ki1000109-EE               PAKISTAN                       0               0      161     326
6 months    ki1000109-EE               PAKISTAN                       0               1      133     326
6 months    ki1000109-EE               PAKISTAN                       1               0       16     326
6 months    ki1000109-EE               PAKISTAN                       1               1       16     326
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
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      371     561
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1       99     561
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       73     561
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       18     561
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0    10427   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1     2284   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     1229   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      296   14236
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     3164    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1      846    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0      295    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      105    4410
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
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      227     497
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1      194     497
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       49     497
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       27     497
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0     3591    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1     2822    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      476    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      348    7237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     2528    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1     1415    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0      216    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      156    4315


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
```




# Results Detail

## Results Plots
![](/tmp/f7ea1e82-af73-48e1-9e1d-8d580f65ccda/c5ad283b-c90d-4967-a77a-5f23a6c6d740/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f7ea1e82-af73-48e1-9e1d-8d580f65ccda/c5ad283b-c90d-4967-a77a-5f23a6c6d740/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f7ea1e82-af73-48e1-9e1d-8d580f65ccda/c5ad283b-c90d-4967-a77a-5f23a6c6d740/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f7ea1e82-af73-48e1-9e1d-8d580f65ccda/c5ad283b-c90d-4967-a77a-5f23a6c6d740/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                0.1411765   0.0887043   0.1936486
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                0.1818182   0.0498993   0.3137371
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0556374   0.0513254   0.0599495
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0402505   0.0321035   0.0483974
Birth       ki1135781-COHORTS          INDIA                          0                    NA                0.0637630   0.0570548   0.0704711
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.0529101   0.0398802   0.0659400
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0306373   0.0238094   0.0374651
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0238095   0.0099054   0.0377137
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1582060   0.1515864   0.1648256
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1446174   0.1256148   0.1636201
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1545595   0.1236384   0.1854806
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2222222   0.0728779   0.3715666
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1648936   0.1117327   0.2180545
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1707317   0.0553037   0.2861597
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1865285   0.1314544   0.2416026
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1750000   0.0569956   0.2930044
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2781955   0.2242704   0.3321206
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3711340   0.2748608   0.4674073
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2070313   0.1573336   0.2567289
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2671756   0.1913051   0.3430460
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4523810   0.3953996   0.5093623
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5000000   0.3264957   0.6735043
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.3442623   0.2752708   0.4132538
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3953488   0.2488887   0.5418090
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2262570   0.2027031   0.2498109
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3525180   0.2244576   0.4805784
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4180064   0.3631168   0.4728961
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4782609   0.3602411   0.5962807
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2336957   0.1904171   0.2769742
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2671233   0.1952834   0.3389632
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1466083   0.1141504   0.1790662
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1764706   0.1079174   0.2450238
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1937984   0.1596687   0.2279282
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1910112   0.1332213   0.2488011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0978432   0.0844843   0.1112021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0672269   0.0222239   0.1122299
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1295000   0.1147817   0.1442183
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.3717949   0.2645176   0.4790722
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2106383   0.1737411   0.2475355
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1978022   0.1158858   0.2797186
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3486239   0.2852292   0.4120185
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4285714   0.1687861   0.6883568
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0628099   0.0434618   0.0821581
6 months    ki1114097-CMIN             PERU                           1                    NA                0.1562500   0.0303484   0.2821516
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0632026   0.0484813   0.0779238
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0600066   0.0390389   0.0809743
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1340985   0.1258906   0.1423063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2346688   0.2109160   0.2584217
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4206897   0.3847349   0.4566444
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3465909   0.2762458   0.4169360
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1580910   0.1483271   0.1678549
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1756993   0.1536449   0.1977538
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1967138   0.1800658   0.2133619
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1741294   0.1370518   0.2112069
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                0.3672727   0.3343586   0.4001869
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.4285714   0.1691919   0.6879509
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1796869   0.1719309   0.1874429
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1940984   0.1713003   0.2168964
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2109726   0.1964468   0.2254983
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2625000   0.2145095   0.3104905
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4451220   0.3688706   0.5213733
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4054054   0.2468119   0.5639989
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.4456522   0.3736741   0.5176302
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2500000   0.1155099   0.3844901
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1959799   0.1407050   0.2512548
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2692308   0.0983547   0.4401068
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7265918   0.6730566   0.7801269
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6938776   0.6025041   0.7852510
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3671875   0.3080627   0.4263123
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4772727   0.3919544   0.5625911
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5426621   0.4855499   0.5997744
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5086207   0.4175337   0.5997076
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3303769   0.2869297   0.3738241
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3050847   0.2219342   0.3882353
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2424242   0.1982946   0.2865539
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2627737   0.1889979   0.3365495
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3306846   0.3078809   0.3534883
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3875000   0.2807130   0.4942870
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4608076   0.4131452   0.5084700
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3552632   0.2475559   0.4629704
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6728111   0.6102503   0.7353718
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6000000   0.3515459   0.8484541
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3301708   0.2899833   0.3703583
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4761905   0.2623883   0.6899926
24 months   ki1114097-CMIN             PERU                           0                    NA                0.3140097   0.2692502   0.3587692
24 months   ki1114097-CMIN             PERU                           1                    NA                0.4666667   0.2139046   0.7194288
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0807434   0.0484155   0.1130712
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0998902   0.0559430   0.1438375
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6080692   0.5566400   0.6594983
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6538462   0.5243778   0.7833145
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7956621   0.7689477   0.8223765
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7712418   0.7046537   0.8378300
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4459078   0.4309658   0.4608498
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4505495   0.4164706   0.4846283
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6118653   0.5904441   0.6332864
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5837989   0.5327269   0.6348708
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4400437   0.4252377   0.4548497
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4223301   0.3838540   0.4608062
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3588638   0.3404816   0.3772460
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4193548   0.3640274   0.4746823


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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1812307   0.1736272   0.1888342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2156463   0.2019366   0.2293559
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4380268   0.4238665   0.4521871
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3640788   0.3464603   0.3816973


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 1.2878788   0.5699441   2.9101656
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.7234419   0.5824737   0.8985268
Birth       ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 0.8297924   0.6348444   1.0846051
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.7771429   0.4159519   1.4519732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9141082   0.7971048   1.0482859
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4377778   0.7114932   2.9054456
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.0354052   0.4895738   2.1897902
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 0.9381944   0.4493659   1.9587797
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.3340763   0.9650387   1.8442366
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 1.2905084   0.8897613   1.8717515
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.1052632   0.7640832   1.5987874
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.1483942   0.7536516   1.7498926
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.5580425   1.0796091   2.2484957
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1441472   0.8651330   1.5131462
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.1430392   0.8246112   1.5844298
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2036874   0.7697138   1.8823406
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.9856180   0.6945043   1.3987571
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6870877   0.3469776   1.3605763
6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 2.8710029   2.1054836   3.9148523
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9390609   0.5989779   1.4722337
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.2293233   0.6528619   2.3147865
6 months    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 2.4876645   1.0499049   5.8943191
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.9494327   0.6718312   1.3417396
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.7499742   1.5547509   1.9697108
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.8238636   0.6610182   1.0268270
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.1113810   0.9662894   1.2782586
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8851912   0.7039241   1.1131363
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 1.1669024   0.6328859   2.1515115
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.0802033   0.9576376   1.2184558
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2442376   1.0204557   1.5170939
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9107738   0.5942108   1.3959842
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.5609756   0.3198956   0.9837385
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.3737673   0.6859352   2.7513335
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9549758   0.8212189   1.1105186
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.2998066   1.0218608   1.6533535
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.9372696   0.7614689   1.1536575
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9234444   0.6823162   1.2497866
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0839416   0.7756897   1.5146900
24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.1718115   0.8820332   1.5567919
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.7709577   0.5596432   1.0620620
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8917808   0.5833684   1.3632433
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.4422551   0.9057585   2.2965280
24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 1.4861538   0.8488405   2.6019651
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.2371326   0.7363289   2.0785508
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0752825   0.8669848   1.3336250
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9693082   0.8835477   1.0633931
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.0104094   0.9301839   1.0975542
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9541298   0.8683305   1.0484069
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9597459   0.8732154   1.0548510
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1685626   1.0159493   1.3441012


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0066068   -0.0165648    0.0297784
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0026280   -0.0042054   -0.0010505
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0019752   -0.0046444    0.0006940
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0010840   -0.0035449    0.0013769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0013308   -0.0032900    0.0006283
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0035664   -0.0045137    0.0116465
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0010452   -0.0217092    0.0237997
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0019791   -0.0243421    0.0203838
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0248348   -0.0049546    0.0546243
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0203589   -0.0104736    0.0511914
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0046743   -0.0133178    0.0226664
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0097200   -0.0211945    0.0406345
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0144685   -0.0023016    0.0312386
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0109409   -0.0128087    0.0346906
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0094950   -0.0143634    0.0333534
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0061695   -0.0095318    0.0218708
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0007149   -0.0179292    0.0164995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018036   -0.0045870    0.0009797
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0090948    0.0045734    0.0136162
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0020821   -0.0166608    0.0124965
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0048244   -0.0114980    0.0211468
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0046940   -0.0018986    0.0112867
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0006153   -0.0046438    0.0034132
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0156785    0.0116783    0.0196786
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0144743   -0.0300252    0.0010765
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0030953   -0.0011476    0.0073381
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0035013   -0.0098103    0.0028076
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0010229   -0.0033723    0.0054180
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0015438   -0.0009457    0.0040333
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0046737    0.0000987    0.0092487
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0073110   -0.0397740    0.0251520
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0349379   -0.0638983   -0.0059775
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0084645   -0.0125139    0.0294430
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0087835   -0.0372563    0.0196893
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0374517    0.0017572    0.0731462
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0096548   -0.0401833    0.0208737
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0052451   -0.0247193    0.0142291
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0055758   -0.0179926    0.0291441
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0026487   -0.0024734    0.0077709
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0161396   -0.0344581    0.0021789
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0047076   -0.0214330    0.0120178
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0055956   -0.0030656    0.0142569
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0053377   -0.0040226    0.0146979
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0043261   -0.0064812    0.0151334
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0059659   -0.0122527    0.0241845
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0036310   -0.0143122    0.0070501
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0007497   -0.0052603    0.0067596
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0042811   -0.0127387    0.0041765
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0020169   -0.0065692    0.0025355
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0052150    0.0002679    0.0101621


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0447059   -0.1251384    0.1889115
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0495754   -0.0795614   -0.0204222
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0319669   -0.0759832    0.0102489
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0366792   -0.1230298    0.0430318
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0084832   -0.0210503    0.0039291
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0225542   -0.0298726    0.0723122
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0062990   -0.1407298    0.1343772
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0107242   -0.1394422    0.1034531
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0819549   -0.0216193    0.1750285
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0895330   -0.0561379    0.2151119
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0102269   -0.0299446    0.0488316
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0274590   -0.0639254    0.1109941
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0601037   -0.0088883    0.1243777
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0255065   -0.0315029    0.0793650
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0390435   -0.0641683    0.1322450
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0403819   -0.0678812    0.1376693
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0037024   -0.0969358    0.0816067
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0187801   -0.0480893    0.0097095
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0656215    0.0329762    0.0971648
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0099836   -0.0823531    0.0575470
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0136496   -0.0336341    0.0587702
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0695368   -0.0314343    0.1606235
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0098311   -0.0760957    0.0523531
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1046788    0.0779744    0.1306098
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0356322   -0.0746756    0.0019928
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0192030   -0.0074625    0.0451627
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0181217   -0.0512873    0.0139977
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0027773   -0.0092285    0.0146403
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0085184   -0.0052815    0.0221289
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0216729    0.0001564    0.0427264
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0166990   -0.0936474    0.0548354
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0850662   -0.1586106   -0.0161901
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0414027   -0.0665873    0.1384589
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0122366   -0.0527241    0.0266938
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0925557   -0.0002698    0.1767670
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0181138   -0.0770645    0.0376104
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0161323   -0.0778285    0.0420323
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0224829   -0.0772995    0.1130232
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0079462   -0.0075397    0.0231941
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0362958   -0.0784276    0.0041899
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0070462   -0.0324198    0.0177037
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0166653   -0.0094711    0.0421250
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0167143   -0.0130303    0.0455855
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0508537   -0.0889096    0.1726781
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0097159   -0.0204247    0.0389663
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0045844   -0.0181663    0.0088163
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0016784   -0.0118681    0.0150435
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0070461   -0.0210669    0.0067821
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0046044   -0.0150547    0.0057383
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0143238    0.0006117    0.0278478
