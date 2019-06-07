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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
0-24 months   ki1000109-EE               PAKISTAN                       Female               0       16     379
0-24 months   ki1000109-EE               PAKISTAN                       Female               1      169     379
0-24 months   ki1000109-EE               PAKISTAN                       Male                 0       17     379
0-24 months   ki1000109-EE               PAKISTAN                       Male                 1      177     379
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               0       93     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               1      195     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 0      103     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 1      211     602
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               0     7114   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               1     6268   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 0     6673   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 1     7181   27236
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               0     1203    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               1     1521    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     1076    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 1     1642    5442
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
0-6 months    ki1000109-EE               PAKISTAN                       Female               0       57     379
0-6 months    ki1000109-EE               PAKISTAN                       Female               1      128     379
0-6 months    ki1000109-EE               PAKISTAN                       Male                 0       42     379
0-6 months    ki1000109-EE               PAKISTAN                       Male                 1      152     379
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               0      215     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               1       73     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 0      220     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 1       94     602
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               0     8113   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               1     5245   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 0     7896   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 1     5916   27170
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               0     1730    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               1      853    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     1616    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 1      931    5130
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
6-24 months   ki1000109-EE               PAKISTAN                       Female               0       15      97
6-24 months   ki1000109-EE               PAKISTAN                       Female               1       41      97
6-24 months   ki1000109-EE               PAKISTAN                       Male                 0       16      97
6-24 months   ki1000109-EE               PAKISTAN                       Male                 1       25      97
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               0       91     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               1      122     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 0       96     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 1      117     426
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               0     4321   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               1     1023   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 0     3917   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 1     1265   10526
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               0     1200    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               1      668    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     1070    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 1      711    3649


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
![](/tmp/c7c36069-77f3-421e-a414-d421c5e59954/ec0f2cb8-2807-4671-9864-e760947b3b1a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c7c36069-77f3-421e-a414-d421c5e59954/ec0f2cb8-2807-4671-9864-e760947b3b1a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.5599195   0.4758966   0.6439425
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2600636   0.1752713   0.3448560
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5516600   0.4681519   0.6351682
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.4064932   0.3192408   0.4937456
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5313294   0.4490368   0.6136220
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4784229   0.4004152   0.5564306
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8108918   0.7435956   0.8781881
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.9191272   0.8796500   0.9586043
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6092302   0.5384196   0.6800407
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.9458494   0.9123790   0.9793198
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.6200847   0.5367290   0.7034404
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6656012   0.6218546   0.7093477
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.8465385   0.7979666   0.8951104
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6234379   0.5681766   0.6786992
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4008096   0.3478646   0.4537546
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4517251   0.4016204   0.5018298
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2947096   0.2687177   0.3207016
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4773548   0.4512288   0.5034808
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.4986158   0.4208694   0.5763623
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3029765   0.2665560   0.3393970
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6928109   0.6408345   0.7447873
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.9004130   0.8488652   0.9519609
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                0.3103608   0.1922998   0.4284219
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3942577   0.3594132   0.4291022
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.3603192   0.3155351   0.4051033
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                0.0936343   0.0375005   0.1497681
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0543956   0.0427108   0.0660804
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3654309   0.3540119   0.3768500
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7546549   0.7213852   0.7879246
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3469304   0.3312759   0.3625849
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6605572   0.6360591   0.6850552
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5660999   0.5185890   0.6136108
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4683874   0.4584838   0.4782909
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.5583689   0.5369403   0.5797976
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2729836   0.1976268   0.3483405
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2575744   0.1742907   0.3408581
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2616769   0.1876991   0.3356547
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1466364   0.0798312   0.2134416
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.3564151   0.2773708   0.4354593
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2951002   0.2238850   0.3663153
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4343618   0.3457659   0.5229578
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4495162   0.3774629   0.5215696
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.3999440   0.3291219   0.4707661
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                0.6933477   0.6262946   0.7604008
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.6219296   0.5341913   0.7096680
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4015247   0.3639807   0.4390687
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3640072   0.3003243   0.4276901
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2686862   0.2180604   0.3193119
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2019335   0.1586073   0.2452598
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2783539   0.2332669   0.3234410
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1544992   0.1338894   0.1751091
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2819819   0.2563334   0.3076305
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2941495   0.2216425   0.3666565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2532434   0.2027364   0.3037505
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.5158603   0.4252871   0.6064335
0-6 months    ki1114097-CMIN             BRAZIL                         optimal              NA                0.0804804   0.0113142   0.1496466
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1396821   0.1083703   0.1709940
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                0.1076786   0.0738430   0.1415143
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                0.0672925   0.0188203   0.1157647
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0268683   0.0211059   0.0326307
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2368366   0.2267503   0.2469229
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3400824   0.2989675   0.3811972
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1664605   0.1540775   0.1788435
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1991044   0.1784448   0.2197641
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2482806   0.1727711   0.3237902
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3926504   0.3832426   0.4020582
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3301396   0.3092774   0.3510019
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4695494   0.3486574   0.5904415
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5280992   0.4151476   0.6410508
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2283636   0.1434673   0.3132599
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.3230365   0.2168104   0.4292626
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3202436   0.2224327   0.4180545
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7281346   0.6220378   0.8342315
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8158155   0.7300600   0.9015711
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.3516139   0.2616290   0.4415987
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.6076785   0.4527498   0.7626071
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.1361497   0.0324310   0.2398684
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5189207   0.4648461   0.5729953
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7340391   0.6502293   0.8178489
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5448473   0.4694852   0.6202095
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2884061   0.2295568   0.3472555
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2508521   0.1982129   0.3034913
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1994623   0.1722840   0.2266407
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3338538   0.3047806   0.3629271
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3528222   0.2588005   0.4468439
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3027891   0.2665921   0.3389862
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5733136   0.5054502   0.6411769
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.6621407   0.5383282   0.7859531
6-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                0.2964627   0.1670559   0.4258694
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3406348   0.3050817   0.3761879
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.3236592   0.2768551   0.3704633
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0288954   0.0203098   0.0374810
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2164620   0.2037980   0.2291259
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7431252   0.7020327   0.7842177
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2349933   0.2192303   0.2507562
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6286343   0.5994169   0.6578516
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5343433   0.4843644   0.5843222
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1914238   0.1792314   0.2036163
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3575385   0.3331178   0.3819591


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6075472   0.5486452   0.6664491
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2317597   0.1774632   0.2860561
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5976096   0.5368226   0.6583966
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3458333   0.2855320   0.4061346
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6204620   0.5657315   0.6751926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5445860   0.4894148   0.5997572
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8435115   0.7994342   0.8875887
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.9249330   0.8981563   0.9517096
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000109-EE               PAKISTAN                       observed             NA                0.9129288   0.8845065   0.9413510
0-24 months   ki1000109-ResPak           PAKISTAN                       observed             NA                0.6510791   0.5949500   0.7072083
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3459933   0.3269422   0.3650444
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.5125214   0.4943731   0.5306698
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.5301587   0.4749558   0.5853616
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3623277   0.3130786   0.4115769
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1114097-CMIN             BANGLADESH                     observed             NA                0.8519856   0.8100906   0.8938805
0-24 months   ki1114097-CMIN             BRAZIL                         observed             NA                0.3361345   0.2509023   0.4213666
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.4286662   0.4036720   0.4536605
0-24 months   ki1114097-CMIN             PERU                           observed             NA                0.3928956   0.3614728   0.4243183
0-24 months   ki1114097-CONTENT          PERU                           observed             NA                0.2930233   0.2320422   0.3540043
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3966461   0.3885633   0.4047288
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7638889   0.7413757   0.7864021
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3707699   0.3597768   0.3817630
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6369048   0.6043650   0.6694445
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4937950   0.4859633   0.5016266
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.5812201   0.5652281   0.5972122
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3547170   0.2970055   0.4124285
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1931330   0.1423366   0.2439295
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3426295   0.2837999   0.4014590
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1750000   0.1268279   0.2231721
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4257426   0.3699763   0.4815088
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3598726   0.3067005   0.4130447
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4122137   0.3524966   0.4719309
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000109-EE               PAKISTAN                       observed             NA                0.7387863   0.6945010   0.7830716
0-6 months    ki1000109-ResPak           PAKISTAN                       observed             NA                0.5899281   0.5320068   0.6478493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1949082   0.1790434   0.2107729
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.3123732   0.2940736   0.3306728
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3152542   0.2621451   0.3683634
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1114097-CMIN             BANGLADESH                     observed             NA                0.5667870   0.5083276   0.6252464
0-6 months    ki1114097-CMIN             BRAZIL                         observed             NA                0.1260504   0.0661648   0.1859360
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.1512953   0.1286749   0.1739158
0-6 months    ki1114097-CMIN             PERU                           observed             NA                0.1287554   0.1039084   0.1536023
0-6 months    ki1114097-CONTENT          PERU                           observed             NA                0.2232558   0.1674626   0.2790491
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2579888   0.2507541   0.2652234
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3260073   0.2981925   0.3538222
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1864548   0.1774430   0.1954667
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3566176   0.2995882   0.4136471
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4107840   0.4033446   0.4182233
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3477583   0.3325749   0.3629416
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4213836   0.3443902   0.4983771
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4129032   0.3351414   0.4906651
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2102564   0.1529155   0.2675974
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3647799   0.2897219   0.4398379
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7793103   0.7115754   0.8470453
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.8486486   0.7968646   0.9004327
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1000109-EE               PAKISTAN                       observed             NA                0.6804124   0.5871313   0.7736934
6-24 months   ki1000109-ResPak           PAKISTAN                       observed             NA                0.1789474   0.1014597   0.2564350
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2259675   0.2054816   0.2464534
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3589489   0.3380095   0.3798884
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3794872   0.3112028   0.4477715
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3623277   0.3130786   0.4115769
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1114097-CMIN             BANGLADESH                     observed             NA                0.7117117   0.6270636   0.7963598
6-24 months   ki1114097-CMIN             BRAZIL                         observed             NA                0.2403846   0.1578607   0.3229085
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3714710   0.3456477   0.3972943
6-24 months   ki1114097-CMIN             PERU                           observed             NA                0.3450439   0.3120195   0.3780683
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2459470   0.2364841   0.2554098
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7638581   0.7361263   0.7915899
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2474588   0.2362609   0.2586567
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6000000   0.5644377   0.6355623
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2173665   0.2079947   0.2267384
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3779118   0.3593176   0.3965059


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0850616   0.9780342   1.2038012
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.8911652   0.7188180   1.1048351
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0832932   0.9796273   1.1979292
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.8507726   0.7261249   0.9968176
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.1677541   1.0443047   1.3057966
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1382942   1.0144914   1.2772051
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0402269   0.9849009   1.0986607
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0063167   0.9770379   1.0364728
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0529082   0.9668567   1.1466183
0-24 months   ki1000109-EE               PAKISTAN                       observed             optimal           0.9651947   0.9362202   0.9950658
0-24 months   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.0499841   0.9536142   1.1560929
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0388423   1.0095832   1.0689494
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.9778069   0.9380083   1.0192941
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0659392   1.0006254   1.1355162
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0835212   0.9834313   1.1937978
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0572195   0.9773051   1.1436686
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1740142   1.0997770   1.2532626
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0736699   1.0321067   1.1169068
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.0632610   0.9536143   1.1855148
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1958937   1.0600973   1.3490854
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9734527   0.9231828   1.0264599
0-24 months   ki1114097-CMIN             BANGLADESH                     observed             optimal           0.9462164   0.9014319   0.9932258
0-24 months   ki1114097-CMIN             BRAZIL                         observed             optimal           1.0830440   0.8251124   1.4216054
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0872743   1.0206916   1.1582004
0-24 months   ki1114097-CMIN             PERU                           observed             optimal           1.0904098   0.9952757   1.1946373
0-24 months   ki1114097-CONTENT          PERU                           observed             optimal           3.1294428   1.8256497   5.3643438
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           3.0790233   2.7130085   3.4944176
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0854200   1.0609914   1.1104111
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0122360   0.9806352   1.0448552
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0687154   1.0340066   1.1045892
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0391172   1.0118704   1.0670977
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.1250748   1.0613896   1.1925813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0542449   1.0397990   1.0688915
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0409249   1.0136287   1.0689563
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.2994075   1.0565927   1.5980234
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.7498146   0.6157647   0.9130467
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.3093606   1.0648783   1.6099729
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.1934280   0.8368867   1.7018675
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           1.1945135   1.0112268   1.4110212
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.2194931   1.0200531   1.4579276
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9490100   0.8244508   1.0923879
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.1364875   1.0135122   1.2743841
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.0611241   0.9295934   1.2112656
0-6 months    ki1000109-EE               PAKISTAN                       observed             optimal           1.0655350   0.9968412   1.1389627
0-6 months    ki1000109-ResPak           PAKISTAN                       observed             optimal           0.9485447   0.8591969   1.0471838
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0596862   0.9942700   1.1294064
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0698224   0.9474152   1.2080447
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.3017473   1.1253248   1.5058284
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1814354   1.0033161   1.3911762
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0853478   0.9654677   1.2201132
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2615479   1.1387312   1.3976108
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1077775   1.0356604   1.1849163
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.0717484   0.9000909   1.2761429
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0954229   0.9449313   1.2698821
0-6 months    ki1114097-CMIN             BANGLADESH                     observed             optimal           1.0987219   0.9626197   1.2540673
0-6 months    ki1114097-CMIN             BRAZIL                         observed             optimal           1.5662251   0.7826292   3.1343845
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0831402   0.9183069   1.2775606
0-6 months    ki1114097-CMIN             PERU                           observed             optimal           1.1957374   0.9369421   1.5260151
0-6 months    ki1114097-CONTENT          PERU                           observed             optimal           3.3176932   1.7213612   6.3944092
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           3.7035686   3.1969148   4.2905180
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0893112   1.0556994   1.1239930
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9586128   0.8804205   1.0437496
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.1201144   1.0596245   1.1840575
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2006018   1.1086863   1.3001376
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.4363489   1.1294836   1.8265854
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0461825   1.0294484   1.0631886
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0533673   1.0080188   1.1007560
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.8974212   0.7474350   1.0775049
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.7818668   0.6576812   0.9295016
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9207089   0.7213841   1.1751090
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.2257845   0.9640082   1.5586462
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1390700   0.9239868   1.4042197
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0702833   0.9687329   1.1824790
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0402458   0.9649403   1.1214281
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0725363   0.8877380   1.2958035
6-24 months   ki1000109-EE               PAKISTAN                       observed             optimal           1.1196914   0.9249929   1.3553713
6-24 months   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.3143430   0.7163252   2.4116107
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9694642   0.8957044   1.0492979
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0315549   0.9494275   1.1207866
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0533465   0.9548240   1.1620350
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0394411   0.8983705   1.2026640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0478120   0.9037405   1.2148509
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1328832   1.0262555   1.2505894
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0751680   1.0099998   1.1445411
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.0755762   0.8914884   1.2976772
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1966338   1.0603930   1.3503790
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9785794   0.9005014   1.0634272
6-24 months   ki1114097-CMIN             BANGLADESH                     observed             optimal           1.0748648   0.9498614   1.2163189
6-24 months   ki1114097-CMIN             BRAZIL                         observed             optimal           0.8108428   0.5949581   1.1050626
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0905257   1.0120155   1.1751264
6-24 months   ki1114097-CMIN             PERU                           observed             optimal           1.0660717   0.9593540   1.1846606
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           2.6596293   2.2678571   3.1190800
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1362134   1.0886818   1.1858201
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0278995   0.9887914   1.0685545
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0530464   1.0028875   1.1057141
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0260001   0.9929987   1.0600981
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.1228737   1.0535198   1.1967932
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1355248   1.0874188   1.1857590
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0569821   1.0048703   1.1117962


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0476276   -0.0101654    0.1054206
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0283040   -0.0849300    0.0283220
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0459495   -0.0091773    0.1010763
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0606599   -0.1241145    0.0027947
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0891327    0.0307392    0.1475262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0661631    0.0115506    0.1207756
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0326196   -0.0113806    0.0766199
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0058058   -0.0213202    0.0329318
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0322332   -0.0195755    0.0840419
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0329206   -0.0614166   -0.0044246
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0309944   -0.0285409    0.0905297
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0258535    0.0068180    0.0448890
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0187873   -0.0538939    0.0163194
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0411090    0.0018732    0.0803448
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0334761   -0.0053203    0.0722724
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0258475   -0.0096154    0.0613104
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0512837    0.0320140    0.0705533
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0351667    0.0163608    0.0539725
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0315429   -0.0225885    0.0856743
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0593512    0.0177300    0.1009724
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0183923   -0.0550940    0.0183095
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0484275   -0.0914003   -0.0054547
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                 0.0257736   -0.0585969    0.1101441
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0344086    0.0095270    0.0592901
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0325764   -0.0002919    0.0654447
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                 0.1993889    0.1378328    0.2609451
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1130897    0.1032063    0.1229732
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0312151    0.0229019    0.0395283
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0092340   -0.0146926    0.0331605
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0238395    0.0123875    0.0352914
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0258392    0.0083230    0.0433554
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0708048    0.0382530    0.1033567
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0254076    0.0189373    0.0318779
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0228512    0.0080045    0.0376980
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0817333    0.0250702    0.1383965
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0644414   -0.1173962   -0.0114865
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0809525    0.0265972    0.1353079
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0283636   -0.0240286    0.0807558
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0693275    0.0101543    0.1285008
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0647725    0.0120233    0.1175216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0221481   -0.0834121    0.0391159
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0613534    0.0101938    0.1125129
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0244462   -0.0284509    0.0773434
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0454386   -0.0003960    0.0912732
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0320016   -0.0936864    0.0296832
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0239655   -0.0015876    0.0495186
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0254159   -0.0187818    0.0696135
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0810753    0.0418030    0.1203477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0366379    0.0034822    0.0697936
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0237569   -0.0088413    0.0563551
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0404090    0.0243778    0.0564401
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0303913    0.0113958    0.0493868
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0211047   -0.0302468    0.0724563
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0241652   -0.0132846    0.0616151
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0509267   -0.0169744    0.1188279
0-6 months    ki1114097-CMIN             BRAZIL                         optimal              NA                 0.0455700   -0.0133402    0.1044802
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0116132   -0.0114894    0.0347158
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                 0.0210767   -0.0054127    0.0475662
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                 0.1559633    0.0994192    0.2125075
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0726404    0.0630328    0.0822479
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0211522    0.0137207    0.0285836
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0140751   -0.0430447    0.0148946
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0199943    0.0107234    0.0292652
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0399407    0.0239877    0.0558937
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1083370    0.0482145    0.1684595
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0181336    0.0117859    0.0244813
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0176187    0.0031006    0.0321367
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0481658   -0.1344149    0.0380833
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1151959   -0.2024848   -0.0279071
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0181072   -0.0741990    0.0379846
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0729366   -0.0043816    0.1502549
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0445363   -0.0223462    0.1114187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0511757   -0.0205837    0.1229351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0328331   -0.0281372    0.0938034
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0255048   -0.0409347    0.0919443
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0727339   -0.0419160    0.1873838
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0427977   -0.0410472    0.1266426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0158457   -0.0566185    0.0249272
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0231625   -0.0376097    0.0839348
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0290657   -0.0243266    0.0824581
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0113751   -0.0306942    0.0534443
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0119937   -0.0251197    0.0491072
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0265052    0.0067195    0.0462909
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0250951    0.0042233    0.0459669
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0266650   -0.0394990    0.0928290
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0595386    0.0177798    0.1012974
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0122807   -0.0599649    0.0354035
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0495711   -0.0313901    0.1305323
6-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                -0.0560781   -0.1477792    0.0356231
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0308362    0.0053939    0.0562785
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0213847   -0.0127514    0.0555208
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0479556    0.0404888    0.0554225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0294850    0.0202054    0.0387646
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0207328   -0.0080395    0.0495051
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0124656    0.0009920    0.0239391
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0163445   -0.0041909    0.0368799
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0656567    0.0319728    0.0993407
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0259427    0.0176779    0.0342074
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0203733    0.0022060    0.0385406


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0783933   -0.0224592    0.1692980
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.1221265   -0.3911728    0.0948876
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0768889   -0.0207964    0.1652261
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.1754021   -0.3771735   -0.0031925
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1436553    0.0424251    0.2341839
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1214925    0.0142844    0.2170404
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0386712   -0.0153306    0.0898009
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0062770   -0.0235018    0.0351894
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0502496   -0.0342794    0.1278702
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0360604   -0.0681248   -0.0049586
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0476047   -0.0486421    0.1350176
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0373900    0.0094922    0.0645021
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0226968   -0.0660886    0.0189289
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0618602    0.0006250    0.1193433
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0770831   -0.0168478    0.1623372
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0541227   -0.0232220    0.1256208
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1482216    0.0907248    0.2020827
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0686150    0.0311079    0.1046702
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0594971   -0.0486420    0.1564846
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1638053    0.0566904    0.2587571
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0272713   -0.0832091    0.0257778
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0568407   -0.1093461   -0.0068204
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                 0.0766765   -0.2119560    0.2965699
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0802689    0.0202721    0.1365915
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0829136   -0.0047467    0.1629259
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                 0.6804543    0.4522498    0.8135839
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.6752217    0.6314055    0.7138293
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0786977    0.0574853    0.0994327
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0120881   -0.0197472    0.0429296
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0642972    0.0328882    0.0946861
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0376447    0.0117312    0.0628787
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1111702    0.0578389    0.1614827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0514538    0.0382756    0.0644514
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0393159    0.0134454    0.0645081
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2304185    0.0535615    0.3742269
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.3336630   -0.6239968   -0.0952343
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2362684    0.0609255    0.3788715
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1620776   -0.1949049    0.4124102
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1628391    0.0111021    0.2912934
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1799872    0.0196589    0.3140949
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0537297   -0.2129287    0.0845743
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1200959    0.0133321    0.2153072
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0576032   -0.0757392    0.1744172
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0615044   -0.0031688    0.1220081
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0542466   -0.1638776    0.0450578
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0563244   -0.0057630    0.1145791
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0652654   -0.0555034    0.1722161
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2318018    0.1113677    0.3359137
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1535720    0.0033052    0.2811838
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0786364   -0.0357674    0.1804039
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2073230    0.1218297    0.2844932
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0972916    0.0344325    0.1560585
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0669452   -0.1109989    0.2163887
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0871106   -0.0582779    0.2125253
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0898516   -0.0388318    0.2025946
0-6 months    ki1114097-CMIN             BRAZIL                         optimal              NA                 0.3615222   -0.2777442    0.6809581
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0767585   -0.0889606    0.2172582
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                 0.1636959   -0.0673018    0.3446985
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                 0.6985857    0.4190644    0.8436134
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.7299902    0.6871984    0.7669279
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0819887    0.0527607    0.1103148
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0431740   -0.1358209    0.0419158
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.1072341    0.0562694    0.1554464
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1670844    0.0980316    0.2308507
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.3037903    0.1146397    0.4525304
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0441438    0.0286060    0.0594331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0506635    0.0079550    0.0915334
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.1143039   -0.3379089    0.0719300
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.2789902   -0.5204934   -0.0758454
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0861196   -0.3862241    0.1490151
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1841959   -0.0373356    0.3584176
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1220908   -0.0822666    0.2878607
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0656679   -0.0322762    0.1543190
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0386887   -0.0363335    0.1082799
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0676306   -0.1264584    0.2282780
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                 0.1068968   -0.0810894    0.2621948
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.2391636   -0.3960139    0.5853394
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0314977   -0.1164398    0.0469818
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0305897   -0.0532664    0.1077695
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0506448   -0.0473134    0.1394407
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0379445   -0.1131265    0.1685126
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0456303   -0.1065123    0.1768537
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1172965    0.0255838    0.2003771
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0699128    0.0099008    0.1262874
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0702658   -0.1217195    0.2293923
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1643225    0.0569534    0.2594672
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0218894   -0.1104924    0.0596442
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0696505   -0.0527852    0.1778472
6-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                -0.2332847   -0.6807905    0.0950739
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0830110    0.0118729    0.1490277
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0619768   -0.0423681    0.1558764
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.6240077    0.5590551    0.6793926
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1198836    0.0814580    0.1567018
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0271423   -0.0113357    0.0641563
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0503743    0.0028792    0.0956071
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0253412   -0.0070506    0.0566911
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1094279    0.0508010    0.1644337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1193499    0.0803911    0.1566583
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0539101    0.0048467    0.1005546
