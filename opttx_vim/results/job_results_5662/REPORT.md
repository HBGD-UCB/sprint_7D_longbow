---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        sex       ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               0       60     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               1       76     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 0       44     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 1       85     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               0       89     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               1       24     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 0       90     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 1       30     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               0       62     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               1       76     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 0       39     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 1       74     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               0       73     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               1       37     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 0       84     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 1       46     240
0-24 months   ki0047075b-MAL-ED          PERU                           Female               0       67     303
0-24 months   ki0047075b-MAL-ED          PERU                           Female               1       76     303
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 0       48     303
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 1      112     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               0       83     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               1       76     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 0       60     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 1       95     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               0       25     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               1      108     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 0       16     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 1      113     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               0       13     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               1      174     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 0       15     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 1      171     373
0-24 months   ki1000108-IRC              INDIA                          Female               0       72     410
0-24 months   ki1000108-IRC              INDIA                          Female               1      113     410
0-24 months   ki1000108-IRC              INDIA                          Male                 0       75     410
0-24 months   ki1000108-IRC              INDIA                          Male                 1      150     410
0-24 months   ki1000109-EE               PAKISTAN                       Female               0       32     758
0-24 months   ki1000109-EE               PAKISTAN                       Female               1      338     758
0-24 months   ki1000109-EE               PAKISTAN                       Male                 0       34     758
0-24 months   ki1000109-EE               PAKISTAN                       Male                 1      354     758
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               0       50     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               1       82     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 0       47     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 1       99     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               0      234    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               1      466    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 0      239    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 1      594    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               0       39     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               1      184     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 0       33     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 1      162     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               0      112     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               1      185     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 0       99     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 1      233     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               0      199     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               1      133     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 0      197     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 1      171     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               0      209     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               1      172     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 0      187     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 1      190     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0      835    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1      349    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0      732    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1      480    2396
0-24 months   ki1101329-Keneba           GAMBIA                         Female               0      735    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Female               1      672    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 0      686    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 1      822    2915
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               0       81     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               1       81     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 0       67     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 1       86     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               0     1133    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               1      492    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 0      949    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 1      691    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               0      186    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               1      390    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 0      206    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 1      422    1204
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               0       18     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               1      102     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 0       23     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 1      134     277
0-24 months   ki1114097-CMIN             BRAZIL                         Female               0       43     119
0-24 months   ki1114097-CMIN             BRAZIL                         Female               1       19     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 0       36     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 1       21     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               0      459    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               1      299    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 0      402    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 1      347    1507
0-24 months   ki1114097-CMIN             PERU                           Female               0      284     929
0-24 months   ki1114097-CMIN             PERU                           Female               1      160     929
0-24 months   ki1114097-CMIN             PERU                           Male                 0      280     929
0-24 months   ki1114097-CMIN             PERU                           Male                 1      205     929
0-24 months   ki1114097-CONTENT          PERU                           Female               0       96     215
0-24 months   ki1114097-CONTENT          PERU                           Female               1       10     215
0-24 months   ki1114097-CONTENT          PERU                           Male                 0       56     215
0-24 months   ki1114097-CONTENT          PERU                           Male                 1       53     215
0-24 months   ki1119695-PROBIT           BELARUS                        Female               0     8266   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Female               1      477   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 0     5801   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 1     2353   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               0     4337   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               1     2497   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 0     4154   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 1     3085   14073
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               0      158    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               1      486    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 0      165    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 1      559    1368
0-24 months   ki1135781-COHORTS          INDIA                          Female               0     2321    7417
0-24 months   ki1135781-COHORTS          INDIA                          Female               1     1233    7417
0-24 months   ki1135781-COHORTS          INDIA                          Male                 0     2346    7417
0-24 months   ki1135781-COHORTS          INDIA                          Male                 1     1517    7417
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               0      488    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               1      949    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 0      471    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 1     1150    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               0      183     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               1      238     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 0      122     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 1      297     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               0    14212   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               1    12529   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 0    13322   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 1    14350   54413
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               0     2332   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               1     2978   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     2068   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 1     3199   10577
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               0       99     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               1       37     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 0       72     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 1       57     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               0       92     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               1       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 0       96     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 1       24     233
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               0      102     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               1       36     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 0       63     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 1       50     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               0       94     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               1       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 0      104     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 1       26     240
0-6 months    ki0047075b-MAL-ED          PERU                           Female               0       92     303
0-6 months    ki0047075b-MAL-ED          PERU                           Female               1       51     303
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 0       82     303
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 1       78     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               0      112     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               1       47     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 0       89     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 1       66     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               0       76     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               1       57     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 0       78     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 1       51     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               0      102     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               1       83     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 0       78     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 1      105     368
0-6 months    ki1000108-IRC              INDIA                          Female               0      111     410
0-6 months    ki1000108-IRC              INDIA                          Female               1       74     410
0-6 months    ki1000108-IRC              INDIA                          Male                 0      125     410
0-6 months    ki1000108-IRC              INDIA                          Male                 1      100     410
0-6 months    ki1000109-EE               PAKISTAN                       Female               0      114     758
0-6 months    ki1000109-EE               PAKISTAN                       Female               1      256     758
0-6 months    ki1000109-EE               PAKISTAN                       Male                 0       84     758
0-6 months    ki1000109-EE               PAKISTAN                       Male                 1      304     758
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               0       56     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               1       76     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 0       58     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 1       88     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               0      419    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               1      281    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 0      460    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 1      370    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               0      141     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               1       81     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 0      113     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 1       81     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               0      217     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               1       80     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 0      192     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 1      140     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               0      265     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               1       67     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 0      268     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 1      100     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               0      275     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               1      106     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 0      254     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 1      123     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0     1001    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1      183    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0      928    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1      284    2396
0-6 months    ki1101329-Keneba           GAMBIA                         Female               0      851    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Female               1      334    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 0      844    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 1      436    2465
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               0      109     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               1       45     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 0       93     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 1       48     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               0      430    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               1      146    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 0      440    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 1      188    1204
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               0       58     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               1       62     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 0       62     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 1       95     277
0-6 months    ki1114097-CMIN             BRAZIL                         Female               0       57     119
0-6 months    ki1114097-CMIN             BRAZIL                         Female               1        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                 0       47     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                 1       10     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               0      407     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               1       66     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 0      412     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 1       80     965
0-6 months    ki1114097-CMIN             PERU                           Female               0      290     699
0-6 months    ki1114097-CMIN             PERU                           Female               1       35     699
0-6 months    ki1114097-CMIN             PERU                           Male                 0      319     699
0-6 months    ki1114097-CMIN             PERU                           Male                 1       55     699
0-6 months    ki1114097-CONTENT          PERU                           Female               0       99     215
0-6 months    ki1114097-CONTENT          PERU                           Female               1        7     215
0-6 months    ki1114097-CONTENT          PERU                           Male                 0       68     215
0-6 months    ki1114097-CONTENT          PERU                           Male                 1       41     215
0-6 months    ki1119695-PROBIT           BELARUS                        Female               0     8506   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Female               1      235   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 0     6706   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 1     1446   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               0     5210   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               1     1617   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 0     5216   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 1     2008   14051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               0      359    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               1      162    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 0      377    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 1      194    1092
0-6 months    ki1135781-COHORTS          INDIA                          Female               0     2901    7176
0-6 months    ki1135781-COHORTS          INDIA                          Female               1      579    7176
0-6 months    ki1135781-COHORTS          INDIA                          Male                 0     2937    7176
0-6 months    ki1135781-COHORTS          INDIA                          Male                 1      759    7176
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               0     1151    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               1      286    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 0     1176    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 1      445    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               0       97     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               1       32     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 0       78     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 1       65     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               0    16226   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               1    10490   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 0    15792   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 1    11832   54340
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               0     3460   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               1     1706   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     3232   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 1     1862   10260
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               0       51     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               1       39     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 0       41     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 1       28     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               0       81     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               1        3     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 0       78     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 1        6     168
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               0       57     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               1       40     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 0       34     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 1       24     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               0       72     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               1       21     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 0       82     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 1       20     195
6-24 months   ki0047075b-MAL-ED          PERU                           Female               0       52     149
6-24 months   ki0047075b-MAL-ED          PERU                           Female               1       25     149
6-24 months   ki0047075b-MAL-ED          PERU                           Male                 0       38     149
6-24 months   ki0047075b-MAL-ED          PERU                           Male                 1       34     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               0       61     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               1       29     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 0       40     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 1       29     159
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               0       19     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               1       51     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 0       13     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 1       62     145
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               0       13     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               1       91     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 0       15     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 1       66     185
6-24 months   ki1000108-IRC              INDIA                          Female               0       72     236
6-24 months   ki1000108-IRC              INDIA                          Female               1       39     236
6-24 months   ki1000108-IRC              INDIA                          Male                 0       75     236
6-24 months   ki1000108-IRC              INDIA                          Male                 1       50     236
6-24 months   ki1000109-EE               PAKISTAN                       Female               0       30     194
6-24 months   ki1000109-EE               PAKISTAN                       Female               1       82     194
6-24 months   ki1000109-EE               PAKISTAN                       Male                 0       32     194
6-24 months   ki1000109-EE               PAKISTAN                       Male                 1       50     194
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               0       38      95
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               1        6      95
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 0       40      95
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 1       11      95
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               0      194     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               1      185     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 0      210     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 1      224     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               0       30     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               1      103     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 0       29     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 1       81     243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               0       70     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               1      105     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 0       77     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 1       93     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               0      163     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               1       66     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 0      157     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 1       71     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               0      197     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               1       66     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 0      176     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 1       67     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0      667    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1      166    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0      573    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1      196    1602
6-24 months   ki1101329-Keneba           GAMBIA                         Female               0      675    2017
6-24 months   ki1101329-Keneba           GAMBIA                         Female               1      338    2017
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 0      618    2017
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 1      386    2017
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               0       66     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               1       36     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 0       55     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 1       38     195
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               0     1133    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               1      492    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 0      949    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 1      691    3265
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               0      182     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               1      244     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 0      192     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 1      234     852
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               0       12     111
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               1       40     111
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 0       20     111
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 1       39     111
6-24 months   ki1114097-CMIN             BRAZIL                         Female               0       43     104
6-24 months   ki1114097-CMIN             BRAZIL                         Female               1       14     104
6-24 months   ki1114097-CMIN             BRAZIL                         Male                 0       36     104
6-24 months   ki1114097-CMIN             BRAZIL                         Male                 1       11     104
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               0      451    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               1      233    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 0      395    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 1      267    1346
6-24 months   ki1114097-CMIN             PERU                           Female               0      262     797
6-24 months   ki1114097-CMIN             PERU                           Female               1      125     797
6-24 months   ki1114097-CMIN             PERU                           Male                 0      260     797
6-24 months   ki1114097-CMIN             PERU                           Male                 1      150     797
6-24 months   ki1114097-CONTENT          PERU                           Female               0       96     167
6-24 months   ki1114097-CONTENT          PERU                           Female               1        3     167
6-24 months   ki1114097-CONTENT          PERU                           Male                 0       56     167
6-24 months   ki1114097-CONTENT          PERU                           Male                 1       12     167
6-24 months   ki1119695-PROBIT           BELARUS                        Female               0     8125   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Female               1      242   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 0     5677   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 1      907   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               0     3185    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               1      880    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 0     2815    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 1     1077    7957
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               0      112     902
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               1      324     902
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 0      101     902
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 1      365     902
6-24 months   ki1135781-COHORTS          INDIA                          Female               0     2128    5706
6-24 months   ki1135781-COHORTS          INDIA                          Female               1      654    5706
6-24 months   ki1135781-COHORTS          INDIA                          Male                 0     2166    5706
6-24 months   ki1135781-COHORTS          INDIA                          Male                 1      758    5706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               0      391    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               1      663    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 0      362    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 1      705    2121
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               0      179     730
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               1      206     730
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 0      113     730
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 1      232     730
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               0     8626   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               1     2039   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 0     7810   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 1     2518   20993
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               0     2326    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               1     1272    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     2056    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 1     1337    6991


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

* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6ea6f197-a088-40da-83e9-6ef4b000153d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6ea6f197-a088-40da-83e9-6ef4b000153d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.5599326   0.4763254   0.6435398
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2125141   0.1369414   0.2880868
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5496136   0.4664565   0.6327707
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3353051   0.2468285   0.4237818
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5264572   0.4445320   0.6083825
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4785726   0.4008063   0.5563388
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8115175   0.7449928   0.8780422
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.9249041   0.8846764   0.9651319
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6110044   0.5406605   0.6813483
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.9133528   0.8767351   0.9499705
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.6174808   0.5345781   0.7003834
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6651678   0.6215042   0.7088314
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.8248713   0.7749538   0.8747887
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6231006   0.5679369   0.6782644
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4008706   0.3481229   0.4536183
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4521806   0.4021789   0.5021824
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2949311   0.2689554   0.3209068
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4777615   0.4516573   0.5038657
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.5007358   0.4236186   0.5778530
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3013996   0.2652546   0.3375445
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6716009   0.6196283   0.7235735
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.8504708   0.7864681   0.9144734
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                0.3061322   0.1908919   0.4213724
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3950265   0.3602223   0.4298306
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.3609799   0.3162985   0.4056613
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                0.0936828   0.0379081   0.1494576
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0540626   0.0423496   0.0657756
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3654004   0.3539833   0.3768174
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7549219   0.7216770   0.7881668
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3468862   0.3312360   0.3625364
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6604309   0.6359416   0.6849202
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5652621   0.5178818   0.6126424
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4685158   0.4586177   0.4784139
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.5609925   0.5395357   0.5824494
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2747698   0.1998351   0.3497046
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1850393   0.1131658   0.2569127
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2625238   0.1891148   0.3359327
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1441639   0.0781415   0.2101863
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.3561931   0.2775535   0.4348326
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2960730   0.2250330   0.3671130
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3956983   0.3111653   0.4802314
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4509012   0.3791345   0.5226678
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.4020705   0.3313899   0.4727511
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                0.6913684   0.6247481   0.7579887
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.5743642   0.4899002   0.6588281
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4011571   0.3635427   0.4387715
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3632242   0.2998234   0.4266249
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2688034   0.2183101   0.3192967
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2021991   0.1589963   0.2454019
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2776545   0.2326281   0.3226808
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1544832   0.1338885   0.1750778
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2820231   0.2564021   0.3076441
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2900843   0.2181351   0.3620335
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2535876   0.2033070   0.3038683
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.5696100   0.4870284   0.6521915
0-6 months    ki1114097-CMIN             BRAZIL                         optimal              NA                0.0808165   0.0127529   0.1488802
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1394051   0.1081623   0.1706480
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                0.1078194   0.0740932   0.1415456
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                0.0685481   0.0211588   0.1159373
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0267638   0.0209984   0.0325293
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2368287   0.2267433   0.2469141
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3112757   0.2715112   0.3510402
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1664014   0.1540270   0.1787758
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1989258   0.1782789   0.2195727
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2465862   0.1719198   0.3212527
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3926477   0.3832404   0.4020551
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3301810   0.3092961   0.3510658
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4244052   0.3125022   0.5363082
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4048332   0.2928396   0.5168267
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2118629   0.1273286   0.2963971
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.3268393   0.2218976   0.4317811
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3210382   0.2241839   0.4178925
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7297485   0.6252124   0.8342846
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8102634   0.7254368   0.8950900
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.3516027   0.2626038   0.4406015
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.6792725   0.5640803   0.7944647
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.1763183   0.0476228   0.3050137
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4878658   0.4255289   0.5502027
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7560295   0.6783984   0.8336605
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5478612   0.4729250   0.6227975
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2881412   0.2294144   0.3468680
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2509710   0.1985206   0.3034215
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1991232   0.1719879   0.2262584
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3336491   0.3046054   0.3626928
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3553960   0.2624159   0.4483762
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3019281   0.2657794   0.3380767
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5448184   0.4779184   0.6117184
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.6560498   0.5347127   0.7773870
6-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                0.2401938   0.1190489   0.3613386
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3404948   0.3049651   0.3760245
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.3228341   0.2762154   0.3694528
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0288990   0.0203023   0.0374956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2165505   0.2038891   0.2292119
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7440025   0.7029687   0.7850362
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2350815   0.2193227   0.2508404
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6290532   0.5998833   0.6582231
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5349970   0.4851413   0.5848527
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1911546   0.1789609   0.2033483
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3535063   0.3291057   0.3779070


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6077950   0.5488930   0.6666970
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2323061   0.1780097   0.2866026
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5974133   0.5366263   0.6582003
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3458126   0.2855113   0.4061139
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6191030   0.5643724   0.6738335
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5448815   0.4897103   0.6000527
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8433049   0.7992276   0.8873821
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.9248316   0.8980550   0.9516083
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6414706   0.5949935   0.6879477
0-24 months   ki1000109-EE               PAKISTAN                       observed             NA                0.9130582   0.8846359   0.9414804
0-24 months   ki1000109-ResPak           PAKISTAN                       observed             NA                0.6512076   0.5950784   0.7073368
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6911314   0.6507277   0.7315352
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8277913   0.7915496   0.8640330
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6646424   0.6277151   0.7015697
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4343650   0.3976202   0.4711098
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4776711   0.4420889   0.5132533
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3460126   0.3269614   0.3650637
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.5125741   0.4944258   0.5307225
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.5302831   0.4750802   0.5854860
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3610147   0.3117655   0.4102638
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6742143   0.6367510   0.7116775
0-24 months   ki1114097-CMIN             BANGLADESH                     observed             NA                0.8518995   0.8100045   0.8937944
0-24 months   ki1114097-CMIN             BRAZIL                         observed             NA                0.3367728   0.2515406   0.4220050
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.4286719   0.4036777   0.4536662
0-24 months   ki1114097-CMIN             PERU                           observed             NA                0.3929179   0.3614952   0.4243407
0-24 months   ki1114097-CONTENT          PERU                           observed             NA                0.2924831   0.2315020   0.3534641
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1669802   0.1482997   0.1856608
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3966543   0.3885716   0.4047370
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7639186   0.7414054   0.7864318
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3707747   0.3597816   0.3817678
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6863994   0.6699527   0.7028461
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6369992   0.6044594   0.6695390
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4939921   0.4861568   0.5018275
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.5840031   0.5680337   0.5999725
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3548388   0.2971273   0.4125503
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1931925   0.1423961   0.2439890
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3426187   0.2837892   0.4014483
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1749676   0.1267956   0.2231397
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4254365   0.3696703   0.4812028
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3598434   0.3066713   0.4130154
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4124658   0.3527487   0.4721829
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5109862   0.4598437   0.5621288
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4248943   0.3769946   0.4727940
0-6 months    ki1000109-EE               PAKISTAN                       observed             NA                0.7387046   0.6944193   0.7829899
0-6 months    ki1000109-ResPak           PAKISTAN                       observed             NA                0.5896463   0.5317251   0.6475676
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4251663   0.3973963   0.4529362
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3895232   0.3426089   0.4364375
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3496087   0.3123103   0.3869072
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2385709   0.2069748   0.2701670
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3022087   0.2694990   0.3349184
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1949236   0.1790588   0.2107883
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.3123895   0.2940900   0.3306891
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3150639   0.2619547   0.3681731
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2775222   0.2417276   0.3133167
0-6 months    ki1114097-CMIN             BANGLADESH                     observed             NA                0.5688915   0.5104321   0.6273509
0-6 months    ki1114097-CMIN             BRAZIL                         observed             NA                0.1259528   0.0660672   0.1858384
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.1512302   0.1286098   0.1738506
0-6 months    ki1114097-CMIN             PERU                           observed             NA                0.1288395   0.1039925   0.1536864
0-6 months    ki1114097-CONTENT          PERU                           observed             NA                0.2244549   0.1686616   0.2802481
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0993955   0.0863509   0.1124401
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2579895   0.2507548   0.2652241
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3261364   0.2983215   0.3539513
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1864594   0.1774475   0.1954713
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2390375   0.2239186   0.2541564
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3563675   0.2993380   0.4133969
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4108006   0.4033613   0.4182399
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3477534   0.3325701   0.3629368
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4223765   0.3453831   0.4993700
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4106294   0.3328675   0.4883912
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2082018   0.1508609   0.2655428
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.3967134   0.3179221   0.4755047
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3645164   0.2894584   0.4395744
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7799223   0.7121873   0.8476573
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.8481114   0.7963273   0.8998955
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3770347   0.3150684   0.4390010
6-24 months   ki1000109-EE               PAKISTAN                       observed             NA                0.6783347   0.5850537   0.7716158
6-24 months   ki1000109-ResPak           PAKISTAN                       observed             NA                0.1583031   0.0808155   0.2357907
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5028857   0.4586598   0.5471116
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7549178   0.7008960   0.8089396
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5736599   0.5214033   0.6259165
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997093   0.2576575   0.3417611
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2624871   0.2240959   0.3008783
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2259650   0.2054791   0.2464509
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3589689   0.3380294   0.3799084
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3788125   0.3105281   0.4470968
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3615855   0.3123364   0.4108347
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5603538   0.5131731   0.6075344
6-24 months   ki1114097-CMIN             BANGLADESH                     observed             NA                0.7108988   0.6262507   0.7955469
6-24 months   ki1114097-CMIN             BRAZIL                         observed             NA                0.2402385   0.1577147   0.3227624
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3713904   0.3455671   0.3972137
6-24 months   ki1114097-CMIN             PERU                           observed             NA                0.3450630   0.3120386   0.3780874
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0769395   0.0629741   0.0909048
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2459600   0.2364972   0.2554229
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7640000   0.7362682   0.7917318
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2474687   0.2362708   0.2586666
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6449973   0.6246278   0.6653668
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6000303   0.5644680   0.6355926
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2171037   0.2077453   0.2264621
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3732178   0.3545148   0.3919207


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.9212525   0.8311218   1.0211574
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.9148019   0.7036375   1.1893375
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.9199889   0.8320583   1.0172118
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.9696151   0.7975746   1.1787655
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.8503549   0.7599631   0.9514981
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.8783058   0.7830913   0.9850972
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9623062   0.9119640   1.0154273
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          1.0000784   0.9715733   1.0294198
0-24 months   ki1000108-IRC              INDIA                          optimal              observed          0.9525057   0.8754799   1.0363083
0-24 months   ki1000109-EE               PAKISTAN                       optimal              observed          1.0003227   0.9799237   1.0211463
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              observed          0.9482088   0.8613434   1.0438344
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9624332   0.9355243   0.9901160
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9964725   0.9563934   1.0382311
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.9374975   0.8801430   0.9985895
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9228888   0.8379910   1.0163876
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.9466360   0.8752941   1.0237927
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8523711   0.7985536   0.9098157
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          0.9320827   0.8960686   0.9695443
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.9442801   0.8481922   1.0512533
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.8348678   0.7393993   0.9426630
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.9961239   0.9443120   1.0507784
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          0.9983229   0.9435573   1.0562673
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              observed          0.9090169   0.6956847   1.1877676
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          0.9215123   0.8652713   0.9814087
0-24 months   ki1114097-CMIN             PERU                           optimal              observed          0.9187158   0.8388958   1.0061306
0-24 months   ki1114097-CONTENT          PERU                           optimal              observed          0.3203017   0.1876049   0.5468575
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.3237664   0.2848919   0.3679454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9212060   0.9004758   0.9424135
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9882229   0.9574099   1.0200276
0-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.9355714   0.9051938   0.9669684
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9621670   0.9369429   0.9880703
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.8873827   0.8372204   0.9405504
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9484276   0.9354298   0.9616060
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9605986   0.9355729   0.9862936
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.7743512   0.6314051   0.9496594
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.9577971   0.7220275   1.2705547
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          0.7662272   0.6246264   0.9399285
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.8239464   0.5767956   1.1769986
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          0.8372414   0.7094941   0.9879901
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.8227830   0.6891212   0.9823699
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9593482   0.8230434   1.1182267
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.8824135   0.7878045   0.9883842
0-6 months    ki1000108-IRC              INDIA                          optimal              observed          0.9462836   0.8299213   1.0789609
0-6 months    ki1000109-EE               PAKISTAN                       optimal              observed          0.9359200   0.8758765   1.0000797
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          0.9740825   0.8759642   1.0831912
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9435299   0.8846675   1.0063087
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9324841   0.8261610   1.0524904
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.7688693   0.6650248   0.8889292
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.8475431   0.7202470   0.9973376
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.9187508   0.8171788   1.0329477
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7925320   0.7154263   0.8779478
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          0.9027930   0.8440878   0.9655811
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.9207157   0.7724921   1.0973801
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.9137563   0.7889257   1.0583388
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          1.0012630   0.9024503   1.1108951
0-6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          0.6416416   0.3253837   1.2652874
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          0.9218072   0.7816238   1.0871323
0-6 months    ki1114097-CMIN             PERU                           optimal              observed          0.8368509   0.6565290   1.0666998
0-6 months    ki1114097-CONTENT          PERU                           optimal              observed          0.3053979   0.1629130   0.5725013
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          0.2692662   0.2322717   0.3121528
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9179781   0.8896553   0.9472025
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9544342   0.8692959   1.0479109
0-6 months    ki1135781-COHORTS          INDIA                          optimal              observed          0.8924269   0.8442534   0.9433493
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8321950   0.7684640   0.9012113
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          0.6919437   0.5447884   0.8788479
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9558110   0.9405230   0.9713476
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9494686   0.9085702   0.9922080
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          1.0048030   0.8369954   1.2062539
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.9858846   0.8010928   1.2133033
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          1.0175842   0.7786999   1.3297516
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.8238677   0.6520653   1.0409354
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.8807236   0.7163218   1.0828571
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9356682   0.8486900   1.0315603
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9553738   0.8869114   1.0291209
6-24 months   ki1000108-IRC              INDIA                          optimal              observed          0.9325472   0.7736875   1.1240252
6-24 months   ki1000109-EE               PAKISTAN                       optimal              observed          1.0013824   0.9044535   1.1086990
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              observed          1.1138017   0.7310272   1.6970015
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9701325   0.8882432   1.0595715
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          1.0014725   0.9313744   1.0768465
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.9550280   0.8667959   1.0522413
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9614022   0.8311262   1.1120985
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.9561272   0.8252830   1.1077160
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8812122   0.7982694   0.9727731
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          0.9294653   0.8731556   0.9894063
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.9381845   0.7807508   1.1273638
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.8350115   0.7397372   0.9425566
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.9722758   0.8915605   1.0602984
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          0.9228456   0.8169155   1.0425118
6-24 months   ki1114097-CMIN             BRAZIL                         optimal              observed          0.9998136   0.7013856   1.4252177
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          0.9168111   0.8508357   0.9879023
6-24 months   ki1114097-CMIN             PERU                           optimal              observed          0.9355800   0.8421607   1.0393622
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.3756066   0.3201898   0.4406147
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8804296   0.8436249   0.9188401
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9738253   0.9368855   1.0122215
6-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.9499446   0.9047255   0.9974238
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9752804   0.9439904   1.0076076
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.8916167   0.8367758   0.9500517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8804760   0.8432338   0.9193631
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9471852   0.9002082   0.9966136
