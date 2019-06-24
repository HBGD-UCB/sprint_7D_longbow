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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        enstunt    ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      193     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       24     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       31     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       15     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      207     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       24     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                0      173     251
0-24 months   ki0047075b-MAL-ED          INDIA                          0                1       36     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                0       24     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                1       18     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                0      202     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                1       10     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                1       11     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                0      260     302
0-24 months   ki0047075b-MAL-ED          PERU                           0                1        6     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                0       30     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                1        6     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      263     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       16     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       27     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        6     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      203     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       16     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       35     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        7     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      249     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       49     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       38     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       37     373
0-24 months   ki1000108-IRC              INDIA                          0                0      307     410
0-24 months   ki1000108-IRC              INDIA                          0                1       55     410
0-24 months   ki1000108-IRC              INDIA                          1                0       27     410
0-24 months   ki1000108-IRC              INDIA                          1                1       21     410
0-24 months   ki1000109-EE               PAKISTAN                       0                0      168     379
0-24 months   ki1000109-EE               PAKISTAN                       0                1       81     379
0-24 months   ki1000109-EE               PAKISTAN                       1                0       67     379
0-24 months   ki1000109-EE               PAKISTAN                       1                1       63     379
0-24 months   ki1000109-ResPak           PAKISTAN                       0                0      187     278
0-24 months   ki1000109-ResPak           PAKISTAN                       0                1       15     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                0       51     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                1       25     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                0      912    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                1      177    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0      250    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1      174    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                0      189     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                1       68     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       74     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1       87     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      435     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1       93     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       52     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       44     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      571     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       63     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       39     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       27     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      612     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       41     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       75     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       30     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2143    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       90    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      134    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       29    2396
0-24 months   ki1101329-Keneba           GAMBIA                         0                0     2256    2912
0-24 months   ki1101329-Keneba           GAMBIA                         0                1      326    2912
0-24 months   ki1101329-Keneba           GAMBIA                         1                0      224    2912
0-24 months   ki1101329-Keneba           GAMBIA                         1                1      106    2912
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                0      230     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                1        9     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       62     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1       14     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                0     2431    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                1      102    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      427    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1      305    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      382     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                1      153     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       27     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       40     602
0-24 months   ki1114097-CMIN             BANGLADESH                     0                0      125     271
0-24 months   ki1114097-CMIN             BANGLADESH                     0                1       43     271
0-24 months   ki1114097-CMIN             BANGLADESH                     1                0       54     271
0-24 months   ki1114097-CMIN             BANGLADESH                     1                1       49     271
0-24 months   ki1114097-CMIN             BRAZIL                         0                0      113     119
0-24 months   ki1114097-CMIN             BRAZIL                         0                1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                0     1184    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                1       61    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0      201    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1       61    1507
0-24 months   ki1114097-CMIN             PERU                           0                0      785     929
0-24 months   ki1114097-CMIN             PERU                           0                1       18     929
0-24 months   ki1114097-CMIN             PERU                           1                0      113     929
0-24 months   ki1114097-CMIN             PERU                           1                1       13     929
0-24 months   ki1114097-CONTENT          PERU                           0                0      195     215
0-24 months   ki1114097-CONTENT          PERU                           0                1        2     215
0-24 months   ki1114097-CONTENT          PERU                           1                0       16     215
0-24 months   ki1114097-CONTENT          PERU                           1                1        2     215
0-24 months   ki1119695-PROBIT           BELARUS                        0                0    16715   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0                1       27   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                0      155   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                1        0   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12124   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      393   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1229   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      189   13935
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                0      934    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                1       91    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                0      266    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                1       58    1349
0-24 months   ki1135781-COHORTS          INDIA                          0                0     6095    7402
0-24 months   ki1135781-COHORTS          INDIA                          0                1      393    7402
0-24 months   ki1135781-COHORTS          INDIA                          1                0      645    7402
0-24 months   ki1135781-COHORTS          INDIA                          1                1      269    7402
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     2382    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                1      485    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      103    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       75    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         0                0      523     840
0-24 months   ki1148112-LCNI-5           MALAWI                         0                1        8     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                0      274     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                1       35     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0    17706   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      757   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     6837   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1627   26927
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3508    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      378    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     1056    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      500    5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      216     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       38     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        8     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      208     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       25     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                0      203     251
0-6 months    ki0047075b-MAL-ED          INDIA                          0                1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                0       30     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                1       12     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                0      212     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                1        7     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                0      266     302
0-6 months    ki0047075b-MAL-ED          PERU                           0                1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                0       34     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                1        2     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      279     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       28     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        5     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      217     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        2     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       40     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        2     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      285     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       52     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       22     368
0-6 months    ki1000108-IRC              INDIA                          0                0      348     409
0-6 months    ki1000108-IRC              INDIA                          0                1       14     409
0-6 months    ki1000108-IRC              INDIA                          1                0       36     409
0-6 months    ki1000108-IRC              INDIA                          1                1       11     409
0-6 months    ki1000109-EE               PAKISTAN                       0                0      225     379
0-6 months    ki1000109-EE               PAKISTAN                       0                1       24     379
0-6 months    ki1000109-EE               PAKISTAN                       1                0      101     379
0-6 months    ki1000109-EE               PAKISTAN                       1                1       29     379
0-6 months    ki1000109-ResPak           PAKISTAN                       0                0      200     278
0-6 months    ki1000109-ResPak           PAKISTAN                       0                1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                0       61     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                1       15     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0     1053    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1       35    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      345    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       71    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      257     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      127     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       32     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      515     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1       13     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       62     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       32     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      623     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       11     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       47     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       19     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      652     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0       89     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       16     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2224    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        9    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      153    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       10    2396
0-6 months    ki1101329-Keneba           GAMBIA                         0                0     2155    2433
0-6 months    ki1101329-Keneba           GAMBIA                         0                1       40    2433
0-6 months    ki1101329-Keneba           GAMBIA                         1                0      208    2433
0-6 months    ki1101329-Keneba           GAMBIA                         1                1       30    2433
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      221     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1        2     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0       66     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        6     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      528     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                1        7     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       50     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       17     602
0-6 months    ki1114097-CMIN             BANGLADESH                     0                0      165     271
0-6 months    ki1114097-CMIN             BANGLADESH                     0                1        3     271
0-6 months    ki1114097-CMIN             BANGLADESH                     1                0       91     271
0-6 months    ki1114097-CMIN             BANGLADESH                     1                1       12     271
0-6 months    ki1114097-CMIN             BRAZIL                         0                0      114     119
0-6 months    ki1114097-CMIN             BRAZIL                         0                1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                1        0     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                0      840     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                1        1     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0      118     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1        5     964
0-6 months    ki1114097-CMIN             PERU                           0                0      652     699
0-6 months    ki1114097-CMIN             PERU                           0                1        6     699
0-6 months    ki1114097-CMIN             PERU                           1                0       36     699
0-6 months    ki1114097-CMIN             PERU                           1                1        5     699
0-6 months    ki1114097-CONTENT          PERU                           0                0      197     215
0-6 months    ki1114097-CONTENT          PERU                           0                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           1                0       18     215
0-6 months    ki1114097-CONTENT          PERU                           1                1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        0                0    16721   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0                1       19   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                0      153   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                1        0   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12429   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1       59   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1244   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      108   13840
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                0      906    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                1       17    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                0      136    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                1        4    1063
0-6 months    ki1135781-COHORTS          INDIA                          0                0     6237    7127
0-6 months    ki1135781-COHORTS          INDIA                          0                1       48    7127
0-6 months    ki1135781-COHORTS          INDIA                          1                0      705    7127
0-6 months    ki1135781-COHORTS          INDIA                          1                1      137    7127
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2815    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                1       52    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      157    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                1       20    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         0                0      175     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                0       97     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    18284   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      134   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     7480   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      922   26820
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3640    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       15    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     1317    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      120    5092
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      177     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       24     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       27     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       11     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      185     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       20     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          0                0      162     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                1       34     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                0       26     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                1       13     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                0      198     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                1       10     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       21     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        6     235
6-24 months   ki0047075b-MAL-ED          PERU                           0                0      230     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                1        6     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                0       29     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                1        5     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      217     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       16     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       23     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        3     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      190     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       16     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       34     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        5     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      254     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       44     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       49     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       26     373
6-24 months   ki1000108-IRC              INDIA                          0                0      316     410
6-24 months   ki1000108-IRC              INDIA                          0                1       46     410
6-24 months   ki1000108-IRC              INDIA                          1                0       30     410
6-24 months   ki1000108-IRC              INDIA                          1                1       18     410
6-24 months   ki1000109-EE               PAKISTAN                       0                0      169     373
6-24 months   ki1000109-EE               PAKISTAN                       0                1       76     373
6-24 months   ki1000109-EE               PAKISTAN                       1                0       72     373
6-24 months   ki1000109-EE               PAKISTAN                       1                1       56     373
6-24 months   ki1000109-ResPak           PAKISTAN                       0                0      155     230
6-24 months   ki1000109-ResPak           PAKISTAN                       0                1       14     230
6-24 months   ki1000109-ResPak           PAKISTAN                       1                0       46     230
6-24 months   ki1000109-ResPak           PAKISTAN                       1                1       15     230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                0      841    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                1      165    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0      234    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1      149    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                0      176     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                1       68     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       80     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1       77     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      371     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1       85     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       57     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       29     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      496     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       57     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       43     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       18     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      586     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       41     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       81     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       22     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1791    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       88    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      113    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       25    2017
6-24 months   ki1101329-Keneba           GAMBIA                         0                0     2115    2735
6-24 months   ki1101329-Keneba           GAMBIA                         0                1      314    2735
6-24 months   ki1101329-Keneba           GAMBIA                         1                0      218    2735
6-24 months   ki1101329-Keneba           GAMBIA                         1                1       88    2735
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                0      203     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                1        8     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       56     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1       10     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                0     2431    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                1      102    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      427    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1      305    3265
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      373     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                1      152     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       27     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       38     590
6-24 months   ki1114097-CMIN             BANGLADESH                     0                0      115     251
6-24 months   ki1114097-CMIN             BANGLADESH                     0                1       43     251
6-24 months   ki1114097-CMIN             BANGLADESH                     1                0       50     251
6-24 months   ki1114097-CMIN             BANGLADESH                     1                1       43     251
6-24 months   ki1114097-CMIN             BRAZIL                         0                0      113     119
6-24 months   ki1114097-CMIN             BRAZIL                         0                1        1     119
6-24 months   ki1114097-CMIN             BRAZIL                         1                0        5     119
6-24 months   ki1114097-CMIN             BRAZIL                         1                1        0     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                0     1164    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                1       61    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0      198    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1       58    1481
6-24 months   ki1114097-CMIN             PERU                           0                0      744     878
6-24 months   ki1114097-CMIN             PERU                           0                1       15     878
6-24 months   ki1114097-CMIN             PERU                           1                0      110     878
6-24 months   ki1114097-CMIN             PERU                           1                1        9     878
6-24 months   ki1114097-CONTENT          PERU                           0                0      195     215
6-24 months   ki1114097-CONTENT          PERU                           0                1        2     215
6-24 months   ki1114097-CONTENT          PERU                           1                0       16     215
6-24 months   ki1114097-CONTENT          PERU                           1                1        2     215
6-24 months   ki1119695-PROBIT           BELARUS                        0                0    16449   16598
6-24 months   ki1119695-PROBIT           BELARUS                        0                1        9   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                0      140   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                1        0   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0     9213   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      346   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1045   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       89   10693
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                0      828    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                1       81    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                0      254    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                1       55    1218
6-24 months   ki1135781-COHORTS          INDIA                          0                0     5720    6938
6-24 months   ki1135781-COHORTS          INDIA                          0                1      381    6938
6-24 months   ki1135781-COHORTS          INDIA                          1                0      641    6938
6-24 months   ki1135781-COHORTS          INDIA                          1                1      196    6938
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     2173    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                1      472    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                0       99    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       64    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         0                0      510     826
6-24 months   ki1148112-LCNI-5           MALAWI                         0                1        8     826
6-24 months   ki1148112-LCNI-5           MALAWI                         1                0      273     826
6-24 months   ki1148112-LCNI-5           MALAWI                         1                1       35     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0    11399   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      646   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4379   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      856   17280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3506    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      370    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     1121    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      432    5429


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/e6aedd05-e447-429f-8d0e-9ed9c9b786e5/91c39097-9864-482c-a6e7-410e2d5404ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e6aedd05-e447-429f-8d0e-9ed9c9b786e5/91c39097-9864-482c-a6e7-410e2d5404ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e6aedd05-e447-429f-8d0e-9ed9c9b786e5/91c39097-9864-482c-a6e7-410e2d5404ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e6aedd05-e447-429f-8d0e-9ed9c9b786e5/91c39097-9864-482c-a6e7-410e2d5404ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1115035   0.0695609   0.1534461
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3389372   0.2034777   0.4743968
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1752658   0.1233623   0.2271694
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4347124   0.2804894   0.5889354
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0469060   0.0183778   0.0754342
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.4335224   0.2327984   0.6342465
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0225564   0.0046830   0.0404298
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1666667   0.0447254   0.2886080
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0573477   0.0300216   0.0846737
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1818182   0.0500132   0.3136232
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0730594   0.0385272   0.1075915
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1666667   0.0537415   0.2795918
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1659758   0.1237221   0.2082295
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4862993   0.3710600   0.6015387
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1540899   0.1167788   0.1914010
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3846612   0.2534834   0.5158390
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3305148   0.2719247   0.3891050
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.4868573   0.4019837   0.5717310
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0727895   0.0370770   0.1085021
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3269676   0.2191580   0.4347772
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1618190   0.1317969   0.1918411
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4112776   0.3282340   0.4943213
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2681742   0.2143494   0.3219991
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5461507   0.4685573   0.6237441
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1767218   0.1441648   0.2092787
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4411560   0.3426776   0.5396344
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0992437   0.0759468   0.1225407
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4332995   0.3117636   0.5548354
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0627083   0.0440856   0.0813310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2785963   0.1903869   0.3668058
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0404202   0.0322624   0.0485779
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1706246   0.1113045   0.2299448
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1255876   0.1127986   0.1383767
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3387233   0.2877409   0.3897056
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0376569   0.0134841   0.0618297
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1842105   0.0969178   0.2715032
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0411721   0.0304873   0.0518568
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4040761   0.2978647   0.5102874
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2862977   0.2478696   0.3247257
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6009602   0.4772811   0.7246393
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2510770   0.1845095   0.3176445
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4665971   0.3692813   0.5639130
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0491796   0.0371620   0.0611972
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2332910   0.1816285   0.2849534
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.0225030   0.0122347   0.0327712
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.1030524   0.0494441   0.1566608
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0314740   0.0284121   0.0345359
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1319456   0.1138473   0.1500439
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0881185   0.0707835   0.1054535
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1854933   0.1430171   0.2279695
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0606255   0.0548250   0.0664260
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2937601   0.2643417   0.3231785
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1693675   0.1556376   0.1830974
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4202085   0.3476710   0.4927459
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0150659   0.0046987   0.0254331
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1132686   0.0779114   0.1486258
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0411667   0.0380687   0.0442647
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1908887   0.1818245   0.1999529
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0974086   0.0867313   0.1080858
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3202911   0.2936769   0.3469054
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0287081   0.0060242   0.0513921
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.2857143   0.1488178   0.4226108
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0306122   0.0108943   0.0503302
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2972973   0.1930165   0.4015781
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.0403678   0.0200138   0.0607217
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1885808   0.0779924   0.2991693
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0971336   0.0602488   0.1340183
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.2114766   0.1396134   0.2833397
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0326563   0.0169856   0.0483270
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1758553   0.1027526   0.2489581
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0248453   0.0115330   0.0381575
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3291686   0.2327100   0.4256273
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0172932   0.0071278   0.0274586
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2510954   0.1459217   0.3562691
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0040305   0.0014020   0.0066589
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0613497   0.0245026   0.0981968
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0181314   0.0125312   0.0237315
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1429907   0.0947478   0.1912337
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0130841   0.0034471   0.0227212
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2537313   0.1494501   0.3580126
0-6 months    ki1114097-CMIN             PERU                           0                    NA                0.0091185   0.0018505   0.0163866
0-6 months    ki1114097-CMIN             PERU                           1                    NA                0.1219512   0.0217162   0.2221862
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0047136   0.0035127   0.0059146
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0806194   0.0657052   0.0955337
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0076253   0.0054735   0.0097771
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1631372   0.1380232   0.1882512
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0181301   0.0132466   0.0230135
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1163878   0.0665176   0.1662579
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0073094   0.0060340   0.0085849
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1083620   0.1012916   0.1154324
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0041042   0.0018413   0.0063670
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0832832   0.0662779   0.1002884
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1186199   0.0736865   0.1635533
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2854362   0.1357159   0.4351565
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1742555   0.1205801   0.2279309
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3400739   0.1840256   0.4961222
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0480769   0.0189421   0.0772117
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2222222   0.0650725   0.3793720
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0254237   0.0053038   0.0455436
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1470588   0.0277921   0.2663256
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0776699   0.0410454   0.1142944
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1282051   0.0230661   0.2333441
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1493704   0.1086358   0.1901049
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3447725   0.2356280   0.4539170
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1289729   0.0943582   0.1635876
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3589990   0.2163120   0.5016860
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3100419   0.2516004   0.3684835
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.4211830   0.3362353   0.5061307
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0815094   0.0403918   0.1226270
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2486579   0.1379509   0.3593649
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1624756   0.1357631   0.1891880
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3904794   0.3158898   0.4650689
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2798435   0.2233235   0.3363635
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4815288   0.4030072   0.5600505
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1868274   0.1510293   0.2226256
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3318773   0.2304247   0.4333298
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1029721   0.0775977   0.1283464
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2912124   0.1762656   0.4061593
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0654018   0.0460220   0.0847815
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2067534   0.1264898   0.2870170
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0469557   0.0374003   0.0565110
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1594245   0.0935328   0.2253162
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1287390   0.1154190   0.1420591
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2945381   0.2424004   0.3466758
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0379147   0.0120979   0.0637315
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1515152   0.0648566   0.2381737
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0411662   0.0304276   0.0519048
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4054807   0.2995241   0.5114373
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2902442   0.2513025   0.3291858
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5888352   0.4628687   0.7148017
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2707090   0.2006970   0.3407210
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4622602   0.3597163   0.5648041
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0499410   0.0377331   0.0621489
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2239457   0.1722809   0.2756106
6-24 months   ki1114097-CMIN             PERU                           0                    NA                0.0197628   0.0098553   0.0296704
6-24 months   ki1114097-CMIN             PERU                           1                    NA                0.0756303   0.0280975   0.1231630
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0362282   0.0324800   0.0399763
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0777289   0.0617182   0.0937396
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0882960   0.0698643   0.1067277
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1833046   0.1394130   0.2271962
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0624628   0.0563943   0.0685312
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2345129   0.2059023   0.2631235
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1786614   0.1640492   0.1932735
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3943397   0.3194800   0.4691993
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0154440   0.0048186   0.0260694
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1136364   0.0781713   0.1491014
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0536230   0.0492369   0.0580091
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1637403   0.1530116   0.1744689
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0956457   0.0850289   0.1062625
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2772655   0.2527636   0.3017675


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2151394   0.1642023   0.2660766
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0875000   0.0516764   0.1233236
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0397351   0.0176679   0.0618023
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0705128   0.0420601   0.0989655
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0881226   0.0536659   0.1225793
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1438849   0.1025533   0.1852165
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0496661   0.0409652   0.0583670
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1483516   0.1354394   0.1612639
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0730159   0.0442400   0.1017917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3205980   0.2832855   0.3579105
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3394834   0.2830004   0.3959663
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0809555   0.0671794   0.0947317
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0333692   0.0218140   0.0449244
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417653   0.0384437   0.0450870
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1104522   0.0937191   0.1271852
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0894353   0.0829338   0.0959368
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0511905   0.0362780   0.0661030
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0885357   0.0846606   0.0924107
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1613377   0.1500063   0.1726692
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0717131   0.0397302   0.1036961
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1398417   0.1048786   0.1748048
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0079299   0.0043777   0.0114821
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0287711   0.0221274   0.0354147
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0398671   0.0242254   0.0555088
0-6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0157368   0.0065040   0.0249696
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120665   0.0102474   0.0138855
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0259576   0.0222658   0.0296495
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393736   0.0368903   0.0418569
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0265122   0.0211694   0.0318550
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0680851   0.0358110   0.1003592
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0407407   0.0171167   0.0643648
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0857143   0.0505889   0.1208396
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1260870   0.0830938   0.1690801
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0560238   0.0459853   0.0660623
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1469835   0.1337108   0.1602563
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0649819   0.0359016   0.0940623
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3220339   0.2842988   0.3597690
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3426295   0.2837999   0.4014590
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0803511   0.0665019   0.0942003
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0273349   0.0165432   0.0381265
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406808   0.0369363   0.0444253
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1116585   0.0939639   0.1293530
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0831652   0.0766672   0.0896632
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0520581   0.0368996   0.0672166
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0869213   0.0822621   0.0915805
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1477252   0.1371297   0.1583206


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  3.039700    1.7572065    5.258217
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  2.480303    1.5593613    3.945143
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  9.242375    4.3018552   19.856895
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  7.388889    2.5129690   21.725568
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  3.170454    1.3315812    7.548756
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  2.281250    0.9986000    5.211397
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.929941    2.0707874    4.145551
0-24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                  2.496343    1.6476888    3.782101
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                  1.473027    1.1492206    1.888070
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                  4.491958    2.4858038    8.117168
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  2.541590    2.1798108    2.963414
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  2.036552    1.5913971    2.606228
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.496331    1.8680305    3.335956
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  4.366013    3.0273572    6.296604
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.442734    2.8777008    6.858909
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  4.221274    2.8241640    6.309532
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.697107    2.2493478    3.233998
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  4.891813    2.2026861   10.863933
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  9.814326    6.7752182   14.216662
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.099075    1.6422114    2.683038
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.858383    1.3251099    2.606264
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  4.743650    3.4114200    6.596144
0-24 months   ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1114097-CMIN             PERU                           1                    0                  4.579500    2.2923466    9.148627
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.192204    3.5434373    4.959754
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  2.105044    1.5595865    2.841274
0-24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          1                    0                  4.845486    4.2200530    5.563612
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.481045    2.0511563    3.001031
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  7.518204    3.5314685   16.005633
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.636970    4.2613794    5.045665
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.288121    2.8709961    3.765850
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  9.952381    3.9500653   25.075506
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  9.711712    4.6641201   20.221895
0-6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                  4.671571    2.1613415   10.097237
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                  2.177173    1.3065730    3.627872
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  5.385040    3.2149346    9.019984
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 13.248748    7.1920500   24.406023
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 14.519905    7.0648541   29.841752
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 15.221541    6.2722592   36.939688
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                  7.886376    4.9930133   12.456390
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 19.392324    8.3430058   45.075149
0-6 months    ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1114097-CMIN             PERU                           1                    0                 13.373984    4.2561946   42.024263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 17.103435   12.4835583   23.433023
0-6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          1                    0                 21.394145   15.5127823   29.505310
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  6.419602    3.8696381   10.649907
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 14.824923   12.3223527   17.835746
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 20.292420   11.3069503   36.418512
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  2.406309    1.2616361    4.589536
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  1.951582    1.1192317    3.402934
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  4.622222    1.8213307   11.730400
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  5.784314    1.8626489   17.962743
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  1.650641    0.6409384    4.250979
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.308172    1.5232830    3.497484
6-24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                  2.783523    1.7260916    4.488752
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                  1.358471    1.0306012    1.790648
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                  3.050666    1.5531288    5.992138
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  2.403311    2.0363769    2.836363
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  1.720708    1.3274566    2.230457
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.776384    1.2383603    2.548160
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  2.828072    1.7756825    4.504178
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  3.161281    1.9398217    5.151866
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  3.395211    2.1422112    5.381104
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.287869    1.8641444    2.807908
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  3.996212    1.6422918    9.724040
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  9.849840    6.8150432   14.236057
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.028758    1.5773706    2.609317
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.707591    1.2137802    2.402302
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  4.484205    3.2036604    6.276601
6-24 months   ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1114097-CMIN             PERU                           1                    0                  3.826891    1.7127710    8.550526
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.145539    1.7040550    2.701402
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  2.076024    1.5140345    2.846617
6-24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          1                    0                  3.754443    3.2135319    4.386402
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.207191    1.7959186    2.712645
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  7.357954    3.4566776   15.662292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.053544    2.7580933    3.380643
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.898881    2.5176777    3.337802


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0367854    0.0100375   0.0635334
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0398736    0.0106445   0.0691027
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0405940    0.0149954   0.0661927
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0171787    0.0015689   0.0327885
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0131652   -0.0016943   0.0280246
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0150632   -0.0043938   0.0345203
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0645872    0.0369699   0.0922045
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.0312759    0.0122020   0.0503499
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0494324    0.0134566   0.0854082
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0710953    0.0375517   0.1046390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0701704    0.0521567   0.0881841
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1026392    0.0641495   0.1411289
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0428295    0.0248499   0.0608092
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0293277    0.0160832   0.0425722
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0309592    0.0175115   0.0444070
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0092459    0.0049901   0.0135018
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0227640    0.0164465   0.0290816
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0353590    0.0124312   0.0582868
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0834834    0.0647566   0.1022102
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0343003    0.0182260   0.0503747
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0884064    0.0413178   0.1354950
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0317759    0.0219781   0.0415738
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.0108662    0.0033100   0.0184225
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0102913    0.0083934   0.0121892
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0223337    0.0113770   0.0332904
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0288098    0.0247173   0.0329023
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0145405    0.0097983   0.0192827
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0361246    0.0221970   0.0500522
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0473690    0.0442772   0.0504607
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0639292    0.0554224   0.0724360
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0430050    0.0169176   0.0690924
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0536269    0.0296470   0.0776068
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.0207569    0.0056001   0.0359137
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0427081    0.0144201   0.0709961
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0378225    0.0208005   0.0548444
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0475020    0.0304040   0.0646000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0255640    0.0136703   0.0374577
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0038994    0.0013207   0.0064781
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0106397    0.0062849   0.0149945
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0267830    0.0136505   0.0399155
0-6 months    ki1114097-CMIN             PERU                           0                    NA                0.0066182    0.0004040   0.0128325
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0073528    0.0058882   0.0088175
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0183323    0.0151551   0.0215095
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0055230    0.0026809   0.0083651
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0320642    0.0297239   0.0344044
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0224080    0.0173102   0.0275059
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0278236    0.0025462   0.0531010
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0257445   -0.0021309   0.0536198
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0200082    0.0003147   0.0397017
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0153170   -0.0006592   0.0312932
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080444   -0.0098296   0.0259183
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0382972    0.0139755   0.0626189
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.0271247    0.0090762   0.0451731
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0438455    0.0076990   0.0799919
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0445776    0.0121542   0.0770009
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0635863    0.0463623   0.0808104
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0817525    0.0426521   0.1208529
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0235047    0.0060753   0.0409340
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0191778    0.0066864   0.0316691
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0208996    0.0088106   0.0329886
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0090681    0.0043910   0.0137452
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0182445    0.0120761   0.0244129
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0270673    0.0047788   0.0493557
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0834892    0.0648136   0.1021648
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0317897    0.0159291   0.0476504
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0719205    0.0245116   0.1193294
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0304101    0.0206743   0.0401459
6-24 months   ki1114097-CMIN             PERU                           0                    NA                0.0075720    0.0008706   0.0142734
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0044527    0.0027298   0.0061755
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0233625    0.0114615   0.0352634
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0207024    0.0169498   0.0244550
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0122218    0.0074867   0.0169570
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0366141    0.0224339   0.0507942
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0332983    0.0298127   0.0367838
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0520795    0.0442893   0.0598696


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2480660    0.0584157   0.3995176
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1853384    0.0423245   0.3069954
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.4639319    0.1746715   0.6518126
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4323308    0.0107995   0.6742336
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1867058   -0.0382149   0.3628992
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1709351   -0.0708039   0.3581004
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2801282    0.1576814   0.3847751
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1687255    0.0633205   0.2622692
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1301033    0.0297756   0.2200564
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.4941127    0.2589085   0.6546688
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3024725    0.2463262   0.3544360
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2767946    0.1667397   0.3723138
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1950775    0.1120354   0.2703536
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2281042    0.1264350   0.3179406
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3305226    0.1912964   0.4457797
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1861619    0.1024552   0.2620619
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1534464    0.1113030   0.1935913
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.4842641    0.1540456   0.6855818
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.6697130    0.5794075   0.7406291
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1069887    0.0556903   0.1555003
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2604145    0.1092839   0.3859023
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3925106    0.2800679   0.4873913
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.3256363    0.0959196   0.4969845
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2464077    0.2039516   0.2865994
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2022026    0.1007008   0.2922481
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.3221298    0.2806555   0.3612128
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0790641    0.0533089   0.1041185
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7056891    0.4538749   0.8413937
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5350271    0.5069046   0.5615457
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3962445    0.3470821   0.4417051
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.5996810    0.2423344   0.7884881
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6366030    0.3786204   0.7874771
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.3395836    0.0867411   0.5224247
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3054033    0.0858085   0.4722499
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5366506    0.3349567   0.6771750
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6565833    0.4632211   0.7802912
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.5964924    0.3580810   0.7463568
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4917388    0.1849308   0.6830582
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.3698057    0.2296180   0.4844832
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6718069    0.3920910   0.8228177
0-6 months    ki1114097-CMIN             PERU                           0                    NA                0.4205582    0.0104116   0.6607147
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6093607    0.5207233   0.6816055
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.7062397    0.6257769   0.7694020
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2335014    0.1173634   0.3343579
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.8143567    0.7816196   0.8421862
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8451975    0.7387088   0.9082869
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1899955    0.0058133   0.3400562
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1287224   -0.0199054   0.2556911
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2938702   -0.0167239   0.5095824
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3759630   -0.0586014   0.6321353
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0938511   -0.1368976   0.2777663
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2040693    0.0682620   0.3200817
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1737674    0.0550734   0.2775520
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1238967    0.0153445   0.2204817
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.3535462    0.0746146   0.5484017
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2812785    0.2223041   0.3357806
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2260880    0.1104974   0.3266576
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1117503    0.0260716   0.1898916
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1570020    0.0529289   0.2496385
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2421700    0.1006132   0.3614468
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1618617    0.0793432   0.2369840
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1241262    0.0822227   0.1641166
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.4165350    0.0363123   0.6467410
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.6697599    0.5793828   0.7407179
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0987155    0.0482823   0.1464761
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2099075    0.0593039   0.3363998
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3784653    0.2649343   0.4744614
6-24 months   ki1114097-CMIN             PERU                           0                    NA                0.2770092    0.0191606   0.4670731
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1094534    0.0672451   0.1497518
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2092315    0.0996631   0.3054658
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.2489313    0.2063780   0.2892029
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0640278    0.0391360   0.0882748
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7033312    0.4495815   0.8400992
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3830853    0.3461260   0.4179556
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3525428    0.3011350   0.4001691
