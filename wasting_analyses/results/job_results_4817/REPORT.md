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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        sex       swasted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female          0      116     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female          1        3     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male            0      117     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male            1        5     241
Birth       ki0047075b-MAL-ED          BRAZIL                         Female          0       86     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Female          1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Male            0       97     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Male            1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          Female          0      104     203
Birth       ki0047075b-MAL-ED          INDIA                          Female          1        4     203
Birth       ki0047075b-MAL-ED          INDIA                          Male            0       92     203
Birth       ki0047075b-MAL-ED          INDIA                          Male            1        3     203
Birth       ki0047075b-MAL-ED          NEPAL                          Female          0       79     168
Birth       ki0047075b-MAL-ED          NEPAL                          Female          1        3     168
Birth       ki0047075b-MAL-ED          NEPAL                          Male            0       85     168
Birth       ki0047075b-MAL-ED          NEPAL                          Male            1        1     168
Birth       ki0047075b-MAL-ED          PERU                           Female          0      127     279
Birth       ki0047075b-MAL-ED          PERU                           Female          1        0     279
Birth       ki0047075b-MAL-ED          PERU                           Male            0      152     279
Birth       ki0047075b-MAL-ED          PERU                           Male            1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0      128     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0      128     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1        2     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0       58     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0       59     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female          0       42      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female          1        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male            0       41      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male            1        1      88
Birth       ki1000108-IRC              INDIA                          Female          0      121     343
Birth       ki1000108-IRC              INDIA                          Female          1       27     343
Birth       ki1000108-IRC              INDIA                          Male            0      168     343
Birth       ki1000108-IRC              INDIA                          Male            1       27     343
Birth       ki1000109-EE               PAKISTAN                       Female          0        0       2
Birth       ki1000109-EE               PAKISTAN                       Female          1        0       2
Birth       ki1000109-EE               PAKISTAN                       Male            0        2       2
Birth       ki1000109-EE               PAKISTAN                       Male            1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       Female          0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       Female          1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       Male            0        4       6
Birth       ki1000109-ResPak           PAKISTAN                       Male            1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female          0       69     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female          1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male            0       92     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male            1        3     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female          0       12      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female          1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male            0       14      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male            1        2      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female          0        9      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female          1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male            0       13      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male            1        1      23
Birth       ki1101329-Keneba           GAMBIA                         Female          0      690    1423
Birth       ki1101329-Keneba           GAMBIA                         Female          1        6    1423
Birth       ki1101329-Keneba           GAMBIA                         Male            0      722    1423
Birth       ki1101329-Keneba           GAMBIA                         Male            1        5    1423
Birth       ki1114097-CMIN             BANGLADESH                     Female          0        5       8
Birth       ki1114097-CMIN             BANGLADESH                     Female          1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     Male            0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     Male            1        1       8
Birth       ki1114097-CMIN             BRAZIL                         Female          0       56     111
Birth       ki1114097-CMIN             BRAZIL                         Female          1        1     111
Birth       ki1114097-CMIN             BRAZIL                         Male            0       54     111
Birth       ki1114097-CMIN             BRAZIL                         Male            1        0     111
Birth       ki1114097-CMIN             PERU                           Female          0        7      10
Birth       ki1114097-CMIN             PERU                           Female          1        0      10
Birth       ki1114097-CMIN             PERU                           Male            0        3      10
Birth       ki1114097-CMIN             PERU                           Male            1        0      10
Birth       ki1114097-CONTENT          PERU                           Female          0        2       2
Birth       ki1114097-CONTENT          PERU                           Female          1        0       2
Birth       ki1114097-CONTENT          PERU                           Male            0        0       2
Birth       ki1114097-CONTENT          PERU                           Male            1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Female          0     6687   13824
Birth       ki1119695-PROBIT           BELARUS                        Female          1      455   13824
Birth       ki1119695-PROBIT           BELARUS                        Male            0     6226   13824
Birth       ki1119695-PROBIT           BELARUS                        Male            1      456   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female          0     5835   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female          1      386   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male            0     6290   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male            1      405   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Female          0      335     756
Birth       ki1135781-COHORTS          GUATEMALA                      Female          1       25     756
Birth       ki1135781-COHORTS          GUATEMALA                      Male            0      361     756
Birth       ki1135781-COHORTS          GUATEMALA                      Male            1       35     756
Birth       ki1135781-COHORTS          INDIA                          Female          0     2802    6193
Birth       ki1135781-COHORTS          INDIA                          Female          1      150    6193
Birth       ki1135781-COHORTS          INDIA                          Male            0     3071    6193
Birth       ki1135781-COHORTS          INDIA                          Male            1      170    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Female          0     1306    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Female          1       54    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Male            0     1472    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Male            1       67    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female          0    14538   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female          1      286   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male            0    16372   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male            1      222   31418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female          0      622    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female          1        6    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male            0      734    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male            1        4    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female          0      122     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female          1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male            0      117     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male            1        1     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Female          0      103     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Female          1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male            0      106     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male            1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Female          0      127     236
6 months    ki0047075b-MAL-ED          INDIA                          Female          1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          Male            0      104     236
6 months    ki0047075b-MAL-ED          INDIA                          Male            1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female          0      110     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female          1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male            0      126     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male            1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Female          0      126     273
6 months    ki0047075b-MAL-ED          PERU                           Female          1        0     273
6 months    ki0047075b-MAL-ED          PERU                           Male            0      147     273
6 months    ki0047075b-MAL-ED          PERU                           Male            1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0      126     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0      125     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1        3     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0      126     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0      121     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female          0      181     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female          1        5     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male            0      175     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male            1        7     368
6 months    ki1000108-IRC              INDIA                          Female          0      177     408
6 months    ki1000108-IRC              INDIA                          Female          1        7     408
6 months    ki1000108-IRC              INDIA                          Male            0      209     408
6 months    ki1000108-IRC              INDIA                          Male            1       15     408
6 months    ki1000109-EE               PAKISTAN                       Female          0      356     752
6 months    ki1000109-EE               PAKISTAN                       Female          1        8     752
6 months    ki1000109-EE               PAKISTAN                       Male            0      378     752
6 months    ki1000109-EE               PAKISTAN                       Male            1       10     752
6 months    ki1000109-ResPak           PAKISTAN                       Female          0      106     235
6 months    ki1000109-ResPak           PAKISTAN                       Female          1        5     235
6 months    ki1000109-ResPak           PAKISTAN                       Male            0      120     235
6 months    ki1000109-ResPak           PAKISTAN                       Male            1        4     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female          0      592    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female          1       18    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male            0      699    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male            1       25    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female          0      194     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female          1        8     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male            0      167     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male            1       11     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female          0      243     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female          1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male            0      288     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male            1        3     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female          0      274     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female          1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male            0      303     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male            1        3     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      362     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female          1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      353     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male            1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0      999    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1        4    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0     1017    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1        8    2028
6 months    ki1101329-Keneba           GAMBIA                         Female          0     1000    2089
6 months    ki1101329-Keneba           GAMBIA                         Female          1       11    2089
6 months    ki1101329-Keneba           GAMBIA                         Male            0     1055    2089
6 months    ki1101329-Keneba           GAMBIA                         Male            1       23    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female          0      153     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female          1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male            0      146     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male            1        0     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female          0      542    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Female          1        4    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Male            0      570    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Male            1       10    1126
6 months    ki1114097-CMIN             BANGLADESH                     Female          0      105     243
6 months    ki1114097-CMIN             BANGLADESH                     Female          1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     Male            0      133     243
6 months    ki1114097-CMIN             BANGLADESH                     Male            1        5     243
6 months    ki1114097-CMIN             BRAZIL                         Female          0       55     108
6 months    ki1114097-CMIN             BRAZIL                         Female          1        0     108
6 months    ki1114097-CMIN             BRAZIL                         Male            0       53     108
6 months    ki1114097-CMIN             BRAZIL                         Male            1        0     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female          0      419     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female          1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male            0      420     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male            1        9     849
6 months    ki1114097-CMIN             PERU                           Female          0      292     636
6 months    ki1114097-CMIN             PERU                           Female          1        0     636
6 months    ki1114097-CMIN             PERU                           Male            0      341     636
6 months    ki1114097-CMIN             PERU                           Male            1        3     636
6 months    ki1114097-CONTENT          PERU                           Female          0      106     215
6 months    ki1114097-CONTENT          PERU                           Female          1        0     215
6 months    ki1114097-CONTENT          PERU                           Male            0      109     215
6 months    ki1114097-CONTENT          PERU                           Male            1        0     215
6 months    ki1119695-PROBIT           BELARUS                        Female          0     8136   15757
6 months    ki1119695-PROBIT           BELARUS                        Female          1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        Male            0     7605   15757
6 months    ki1119695-PROBIT           BELARUS                        Male            1       14   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female          0     3986    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female          1       34    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male            0     4199    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male            1       45    8264
6 months    ki1135781-COHORTS          GUATEMALA                      Female          0      455     963
6 months    ki1135781-COHORTS          GUATEMALA                      Female          1        1     963
6 months    ki1135781-COHORTS          GUATEMALA                      Male            0      502     963
6 months    ki1135781-COHORTS          GUATEMALA                      Male            1        5     963
6 months    ki1135781-COHORTS          INDIA                          Female          0     3180    6850
6 months    ki1135781-COHORTS          INDIA                          Female          1      104    6850
6 months    ki1135781-COHORTS          INDIA                          Male            0     3453    6850
6 months    ki1135781-COHORTS          INDIA                          Male            1      113    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    Female          0     1264    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Female          1       11    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Male            0     1407    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Male            1       24    2706
6 months    ki1148112-LCNI-5           MALAWI                         Female          0      420     839
6 months    ki1148112-LCNI-5           MALAWI                         Female          1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         Male            0      419     839
6 months    ki1148112-LCNI-5           MALAWI                         Male            1        0     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female          0    16257   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female          1      192   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male            0    16806   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male            1      268   33523
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female          0     4692    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female          1       31    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male            0     4699    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male            1       34    9456
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          0      104     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            0      108     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Female          0       78     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Female          1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male            0       90     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male            1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Female          0      121     227
24 months   ki0047075b-MAL-ED          INDIA                          Female          1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          Male            0      104     227
24 months   ki0047075b-MAL-ED          INDIA                          Male            1        1     227
24 months   ki0047075b-MAL-ED          NEPAL                          Female          0      106     228
24 months   ki0047075b-MAL-ED          NEPAL                          Female          1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male            0      122     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male            1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Female          0       91     201
24 months   ki0047075b-MAL-ED          PERU                           Female          1        0     201
24 months   ki0047075b-MAL-ED          PERU                           Male            0      109     201
24 months   ki0047075b-MAL-ED          PERU                           Male            1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0      118     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0      120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0      106     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0      108     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          0      186     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            0      183     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            1        3     372
24 months   ki1000108-IRC              INDIA                          Female          0      183     409
24 months   ki1000108-IRC              INDIA                          Female          1        2     409
24 months   ki1000108-IRC              INDIA                          Male            0      221     409
24 months   ki1000108-IRC              INDIA                          Male            1        3     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          0      191     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          1        4     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            0      227     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            1        6     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          0      274     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          1        4     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            0      295     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            1        5     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      259     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      251     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            1        3     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Female          0      808    1726
24 months   ki1101329-Keneba           GAMBIA                         Female          1       15    1726
24 months   ki1101329-Keneba           GAMBIA                         Male            0      888    1726
24 months   ki1101329-Keneba           GAMBIA                         Male            1       15    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          Female          0      456     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Female          1        8     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Male            0      510     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Male            1       22     996
24 months   ki1114097-CMIN             BANGLADESH                     Female          0      103     243
24 months   ki1114097-CMIN             BANGLADESH                     Female          1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     Male            0      138     243
24 months   ki1114097-CMIN             BANGLADESH                     Male            1        1     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female          0      270     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female          1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male            0      276     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male            1        3     551
24 months   ki1114097-CMIN             PERU                           Female          0      199     429
24 months   ki1114097-CMIN             PERU                           Female          1        0     429
24 months   ki1114097-CMIN             PERU                           Male            0      229     429
24 months   ki1114097-CMIN             PERU                           Male            1        1     429
24 months   ki1114097-CONTENT          PERU                           Female          0       83     164
24 months   ki1114097-CONTENT          PERU                           Female          1        0     164
24 months   ki1114097-CONTENT          PERU                           Male            0       81     164
24 months   ki1114097-CONTENT          PERU                           Male            1        0     164
24 months   ki1119695-PROBIT           BELARUS                        Female          0     2044    3971
24 months   ki1119695-PROBIT           BELARUS                        Female          1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        Male            0     1923    3971
24 months   ki1119695-PROBIT           BELARUS                        Male            1        1    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          0      243     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          1       13     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            0      150     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            1       17     423
24 months   ki1135781-COHORTS          GUATEMALA                      Female          0      514    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Female          1        2    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Male            0      564    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Male            1        2    1082
24 months   ki1135781-COHORTS          INDIA                          Female          0     2503    5291
24 months   ki1135781-COHORTS          INDIA                          Female          1       18    5291
24 months   ki1135781-COHORTS          INDIA                          Male            0     2732    5291
24 months   ki1135781-COHORTS          INDIA                          Male            1       38    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    Female          0     1151    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Female          1        7    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Male            0     1273    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Male            1       18    2449
24 months   ki1148112-LCNI-5           MALAWI                         Female          0      286     563
24 months   ki1148112-LCNI-5           MALAWI                         Female          1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         Male            0      276     563
24 months   ki1148112-LCNI-5           MALAWI                         Male            1        1     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          0     8037   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          1      252   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            0     8462   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            1      417   17168
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          0     4541    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          1       94    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            0     4453    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            1      158    9246


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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
![](/tmp/0287aef9-7854-4dd3-b1cb-ebdd4f93afd5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0287aef9-7854-4dd3-b1cb-ebdd4f93afd5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0287aef9-7854-4dd3-b1cb-ebdd4f93afd5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0287aef9-7854-4dd3-b1cb-ebdd4f93afd5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         Female               NA                0.1824324   0.1201215   0.2447433
Birth       ki1000108-IRC              INDIA         Male                 NA                0.1384615   0.0899141   0.1870090
Birth       ki1101329-Keneba           GAMBIA        Female               NA                0.0086207   0.0017502   0.0154912
Birth       ki1101329-Keneba           GAMBIA        Male                 NA                0.0068776   0.0008679   0.0128873
Birth       ki1119695-PROBIT           BELARUS       Female               NA                0.0637076   0.0327032   0.0947120
Birth       ki1119695-PROBIT           BELARUS       Male                 NA                0.0682430   0.0325319   0.1039542
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                0.0620479   0.0560529   0.0680429
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Male                 NA                0.0604929   0.0547822   0.0662036
Birth       ki1135781-COHORTS          GUATEMALA     Female               NA                0.0694444   0.0431675   0.0957213
Birth       ki1135781-COHORTS          GUATEMALA     Male                 NA                0.0883838   0.0604082   0.1163595
Birth       ki1135781-COHORTS          INDIA         Female               NA                0.0508130   0.0428900   0.0587360
Birth       ki1135781-COHORTS          INDIA         Male                 NA                0.0524529   0.0447771   0.0601288
Birth       ki1135781-COHORTS          PHILIPPINES   Female               NA                0.0397059   0.0293262   0.0500855
Birth       ki1135781-COHORTS          PHILIPPINES   Male                 NA                0.0435348   0.0333381   0.0537314
Birth       kiGH5241-JiVitA-3          BANGLADESH    Female               NA                0.0192930   0.0157698   0.0228163
Birth       kiGH5241-JiVitA-3          BANGLADESH    Male                 NA                0.0133783   0.0106587   0.0160979
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Female               NA                0.0268817   0.0036065   0.0501569
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Male                 NA                0.0384615   0.0104846   0.0664385
6 months    ki1000108-IRC              INDIA         Female               NA                0.0380435   0.0103683   0.0657186
6 months    ki1000108-IRC              INDIA         Male                 NA                0.0669643   0.0341904   0.0997382
6 months    ki1000109-EE               PAKISTAN      Female               NA                0.0219780   0.0006496   0.0433065
6 months    ki1000109-EE               PAKISTAN      Male                 NA                0.0257732   0.0034457   0.0481007
6 months    ki1000304b-SAS-CompFeed    INDIA         Female               NA                0.0295082   0.0196810   0.0393354
6 months    ki1000304b-SAS-CompFeed    INDIA         Male                 NA                0.0345304   0.0178765   0.0511843
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Female               NA                0.0396040   0.0126738   0.0665341
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Male                 NA                0.0617978   0.0263781   0.0972175
6 months    ki1101329-Keneba           GAMBIA        Female               NA                0.0108803   0.0044841   0.0172765
6 months    ki1101329-Keneba           GAMBIA        Male                 NA                0.0213358   0.0127077   0.0299639
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                0.0084577   0.0056267   0.0112887
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Male                 NA                0.0106032   0.0075215   0.0136849
6 months    ki1135781-COHORTS          INDIA         Female               NA                0.0316687   0.0256790   0.0376584
6 months    ki1135781-COHORTS          INDIA         Male                 NA                0.0316882   0.0259385   0.0374379
6 months    ki1135781-COHORTS          PHILIPPINES   Female               NA                0.0086275   0.0035501   0.0137048
6 months    ki1135781-COHORTS          PHILIPPINES   Male                 NA                0.0167715   0.0101169   0.0234261
6 months    kiGH5241-JiVitA-3          BANGLADESH    Female               NA                0.0116724   0.0091889   0.0141560
6 months    kiGH5241-JiVitA-3          BANGLADESH    Male                 NA                0.0156964   0.0127433   0.0186495
6 months    kiGH5241-JiVitA-4          BANGLADESH    Female               NA                0.0065636   0.0029950   0.0101323
6 months    kiGH5241-JiVitA-4          BANGLADESH    Male                 NA                0.0071836   0.0016658   0.0127014
24 months   ki1101329-Keneba           GAMBIA        Female               NA                0.0182260   0.0090843   0.0273677
24 months   ki1101329-Keneba           GAMBIA        Male                 NA                0.0166113   0.0082727   0.0249499
24 months   ki1113344-GMS-Nepal        NEPAL         Female               NA                0.0172414   0.0004746   0.0340082
24 months   ki1113344-GMS-Nepal        NEPAL         Male                 NA                0.0413534   0.0174021   0.0653047
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                0.0507813   0.0238549   0.0777076
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Male                 NA                0.1017964   0.0558811   0.1477117
24 months   ki1135781-COHORTS          INDIA         Female               NA                0.0071400   0.0038530   0.0104270
24 months   ki1135781-COHORTS          INDIA         Male                 NA                0.0137184   0.0093863   0.0180505
24 months   ki1135781-COHORTS          PHILIPPINES   Female               NA                0.0060449   0.0015795   0.0105103
24 months   ki1135781-COHORTS          PHILIPPINES   Male                 NA                0.0139427   0.0075454   0.0203400
24 months   kiGH5241-JiVitA-3          BANGLADESH    Female               NA                0.0304017   0.0250014   0.0358021
24 months   kiGH5241-JiVitA-3          BANGLADESH    Male                 NA                0.0469647   0.0406350   0.0532945
24 months   kiGH5241-JiVitA-4          BANGLADESH    Female               NA                0.0202805   0.0130591   0.0275018
24 months   kiGH5241-JiVitA-4          BANGLADESH    Male                 NA                0.0342659   0.0265629   0.0419689


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0077301   0.0031781   0.0122822
Birth       ki1119695-PROBIT           BELARUS       NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0612419   0.0571066   0.0653771
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0516712   0.0461576   0.0571849
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0161691   0.0138058   0.0185324
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0326087   0.0144375   0.0507799
6 months    ki1000108-IRC              INDIA         NA                   NA                0.0539216   0.0319786   0.0758646
6 months    ki1000109-EE               PAKISTAN      NA                   NA                0.0239362   0.0084659   0.0394065
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.0500000   0.0280580   0.0719420
6 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0162757   0.0108484   0.0217031
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0095595   0.0074615   0.0116576
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0316788   0.0275309   0.0358267
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0137219   0.0116409   0.0158029
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0068739   0.0035659   0.0101820
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0173812   0.0112141   0.0235484
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0301205   0.0150939   0.0451470
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0709220   0.0464309   0.0954131
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0105840   0.0078264   0.0133416
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0102082   0.0062264   0.0141901
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0389678   0.0346422   0.0432935
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0272550   0.0219628   0.0325472


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA         Female               Female            1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA         Male                 Female            0.7589744   0.4652073   1.238248
Birth       ki1101329-Keneba           GAMBIA        Female               Female            1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA        Male                 Female            0.7977992   0.2444924   2.603285
Birth       ki1119695-PROBIT           BELARUS       Female               Female            1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS       Male                 Female            1.0711908   0.9451627   1.214023
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Female               Female            1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Male                 Female            0.9749388   0.8517495   1.115945
Birth       ki1135781-COHORTS          GUATEMALA     Female               Female            1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA     Male                 Female            1.2727273   0.7771218   2.084403
Birth       ki1135781-COHORTS          INDIA         Female               Female            1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA         Male                 Female            1.0322740   0.8335385   1.278393
Birth       ki1135781-COHORTS          PHILIPPINES   Female               Female            1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Male                 Female            1.0964311   0.7718761   1.557454
Birth       kiGH5241-JiVitA-3          BANGLADESH    Female               Female            1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Male                 Female            0.6934278   0.5393618   0.891502
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Female               Female            1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Male                 Female            1.4307692   0.4618005   4.432868
6 months    ki1000108-IRC              INDIA         Female               Female            1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA         Male                 Female            1.7602041   0.7324610   4.230012
6 months    ki1000109-EE               PAKISTAN      Female               Female            1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN      Male                 Female            1.1726804   0.3193165   4.306635
6 months    ki1000304b-SAS-CompFeed    INDIA         Female               Female            1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Male                 Female            1.1701964   0.6021138   2.274254
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Female               Female            1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Male                 Female            1.5603933   0.6412208   3.797174
6 months    ki1101329-Keneba           GAMBIA        Female               Female            1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA        Male                 Female            1.9609546   0.9606954   4.002666
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Female               Female            1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Male                 Female            1.2536730   0.8047528   1.953017
6 months    ki1135781-COHORTS          INDIA         Female               Female            1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA         Male                 Female            1.0006148   0.7699087   1.300453
6 months    ki1135781-COHORTS          PHILIPPINES   Female               Female            1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Male                 Female            1.9439680   0.9559607   3.953104
6 months    kiGH5241-JiVitA-3          BANGLADESH    Female               Female            1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Male                 Female            1.3447383   1.0360499   1.745400
6 months    kiGH5241-JiVitA-4          BANGLADESH    Female               Female            1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Male                 Female            1.0944569   0.4296983   2.787620
24 months   ki1101329-Keneba           GAMBIA        Female               Female            1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA        Male                 Female            0.9114064   0.4482567   1.853094
24 months   ki1113344-GMS-Nepal        NEPAL         Female               Female            1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL         Male                 Female            2.3984961   0.7733358   7.438921
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Female               Female            1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Male                 Female            2.0046062   0.9993141   4.021204
24 months   ki1135781-COHORTS          INDIA         Female               Female            1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA         Male                 Female            1.9213397   1.0993985   3.357787
24 months   ki1135781-COHORTS          PHILIPPINES   Female               Female            1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Male                 Female            2.3065173   0.9667024   5.503268
24 months   kiGH5241-JiVitA-3          BANGLADESH    Female               Female            1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Male                 Female            1.5448048   1.2461380   1.915054
24 months   kiGH5241-JiVitA-4          BANGLADESH    Female               Female            1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Male                 Female            1.6895998   1.1105623   2.570542


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         Female               NA                -0.0249980   -0.0699645    0.0199684
Birth       ki1101329-Keneba           GAMBIA        Female               NA                -0.0008905   -0.0055542    0.0037731
Birth       ki1119695-PROBIT           BELARUS       Female               NA                 0.0021922   -0.0022554    0.0066398
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                -0.0008060   -0.0050978    0.0034857
Birth       ki1135781-COHORTS          GUATEMALA     Female               NA                 0.0099206   -0.0101951    0.0300364
Birth       ki1135781-COHORTS          INDIA         Female               NA                 0.0008582   -0.0049149    0.0066314
Birth       ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.0020326   -0.0056920    0.0097573
Birth       kiGH5241-JiVitA-3          BANGLADESH    Female               NA                -0.0031240   -0.0052892   -0.0009587
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Female               NA                 0.0057270   -0.0122814    0.0237354
6 months    ki1000108-IRC              INDIA         Female               NA                 0.0158781   -0.0077139    0.0394701
6 months    ki1000109-EE               PAKISTAN      Female               NA                 0.0019581   -0.0139745    0.0178908
6 months    ki1000304b-SAS-CompFeed    INDIA         Female               NA                 0.0027257   -0.0090250    0.0144763
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Female               NA                 0.0103960   -0.0104761    0.0312682
6 months    ki1101329-Keneba           GAMBIA        Female               NA                 0.0053954   -0.0001515    0.0109424
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                 0.0011018   -0.0010474    0.0032510
6 months    ki1135781-COHORTS          INDIA         Female               NA                 0.0000101   -0.0043121    0.0043324
6 months    ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.0043068   -0.0001223    0.0087359
6 months    kiGH5241-JiVitA-3          BANGLADESH    Female               NA                 0.0020495    0.0002442    0.0038548
6 months    kiGH5241-JiVitA-4          BANGLADESH    Female               NA                 0.0003103   -0.0029586    0.0035792
24 months   ki1101329-Keneba           GAMBIA        Female               NA                -0.0008448   -0.0073184    0.0056288
24 months   ki1113344-GMS-Nepal        NEPAL         Female               NA                 0.0128791   -0.0027731    0.0285313
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                 0.0201407   -0.0010080    0.0412894
24 months   ki1135781-COHORTS          INDIA         Female               NA                 0.0034440    0.0005957    0.0062923
24 months   ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.0041633    0.0000477    0.0082790
24 months   kiGH5241-JiVitA-3          BANGLADESH    Female               NA                 0.0085661    0.0044245    0.0127077
24 months   kiGH5241-JiVitA-4          BANGLADESH    Female               NA                 0.0069746    0.0017368    0.0122123


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         Female               NA                -0.1587838   -0.4807551    0.0931790
Birth       ki1101329-Keneba           GAMBIA        Female               NA                -0.1152037   -0.9091297    0.3485621
Birth       ki1119695-PROBIT           BELARUS       Female               NA                 0.0332662   -0.0292830    0.0920143
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                -0.0131614   -0.0857156    0.0545442
Birth       ki1135781-COHORTS          GUATEMALA     Female               NA                 0.1250000   -0.1669159    0.3438902
Birth       ki1135781-COHORTS          INDIA         Female               NA                 0.0166095   -0.1016995    0.1222135
Birth       ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.0486996   -0.1553838    0.2167343
Birth       kiGH5241-JiVitA-3          BANGLADESH    Female               NA                -0.1932061   -0.3316185   -0.0691807
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Female               NA                 0.1756272   -0.5948362    0.5738807
6 months    ki1000108-IRC              INDIA         Female               NA                 0.2944664   -0.2834635    0.6121606
6 months    ki1000109-EE               PAKISTAN      Female               NA                 0.0818071   -0.8915552    0.5542936
6 months    ki1000304b-SAS-CompFeed    INDIA         Female               NA                 0.0845597   -0.3445988    0.3767427
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Female               NA                 0.2079208   -0.3261206    0.5268986
6 months    ki1101329-Keneba           GAMBIA        Female               NA                 0.3315006   -0.0834585    0.5875324
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                 0.1152591   -0.1388995    0.3126993
6 months    ki1135781-COHORTS          INDIA         Female               NA                 0.0003199   -0.1458700    0.1278590
6 months    ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.3329748   -0.0853646    0.5900708
6 months    kiGH5241-JiVitA-3          BANGLADESH    Female               NA                 0.1493581    0.0098207    0.2692317
6 months    kiGH5241-JiVitA-4          BANGLADESH    Female               NA                 0.0451440   -0.5572552    0.4145148
24 months   ki1101329-Keneba           GAMBIA        Female               NA                -0.0486027   -0.4952249    0.2646139
24 months   ki1113344-GMS-Nepal        NEPAL         Female               NA                 0.4275862   -0.3137652    0.7505965
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                 0.2839844   -0.0637989    0.5180683
24 months   ki1135781-COHORTS          INDIA         Female               NA                 0.3253952    0.0146092    0.5381613
24 months   ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.4078410   -0.1077392    0.6834523
24 months   kiGH5241-JiVitA-3          BANGLADESH    Female               NA                 0.2198251    0.1079962    0.3176342
24 months   kiGH5241-JiVitA-4          BANGLADESH    Female               NA                 0.2558997    0.0321615    0.4279157
