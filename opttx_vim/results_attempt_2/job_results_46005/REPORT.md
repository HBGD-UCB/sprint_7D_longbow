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
![](/tmp/5291b0e4-14cf-4030-a7a6-f2e5606a4cd6/9fa8389b-7d5d-44fb-aa79-482f4af797b9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5291b0e4-14cf-4030-a7a6-f2e5606a4cd6/9fa8389b-7d5d-44fb-aa79-482f4af797b9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.5588464   0.4749510   0.6427418
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2154749   0.1388254   0.2921244
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5525781   0.4690770   0.6360792
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3606203   0.2688498   0.4523908
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5294266   0.4468883   0.6119650
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4794188   0.4012584   0.5575793
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8109002   0.7436406   0.8781598
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.9404194   0.9064955   0.9743432
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6103083   0.5396849   0.6809318
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.9336973   0.8986312   0.9687633
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.6200932   0.5365467   0.7036397
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6656012   0.6218546   0.7093477
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.8482097   0.8022443   0.8941752
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6223304   0.5667114   0.6779493
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4005249   0.3475981   0.4534516
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4523508   0.4022305   0.5024710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2945324   0.2685387   0.3205261
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4772278   0.4510958   0.5033597
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.4997241   0.4223007   0.5771475
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3029799   0.2667558   0.3392040
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.7345351   0.6850664   0.7840037
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.8930140   0.8378075   0.9482204
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                0.3091056   0.1919926   0.4262186
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3941372   0.3592943   0.4289802
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.3600638   0.3153230   0.4048047
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                0.0937058   0.0374114   0.1500003
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0544985   0.0427959   0.0662011
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3653247   0.3539049   0.3767445
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7550662   0.7217707   0.7883617
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3469226   0.3312666   0.3625786
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6602209   0.6357108   0.6847310
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5651287   0.5176221   0.6126354
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4684026   0.4584998   0.4783054
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.5583642   0.5369228   0.5798056
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2724616   0.1969271   0.3479962
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2293269   0.1523812   0.3062727
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2613894   0.1876081   0.3351707
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1422460   0.0762349   0.2082570
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.3588065   0.2793077   0.4383053
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2945739   0.2232638   0.3658841
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4303917   0.3415122   0.5192712
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4514978   0.3791579   0.5238377
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.4001976   0.3290867   0.4713086
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                0.6916441   0.6247606   0.7585276
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.6080311   0.5227349   0.6933274
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4015247   0.3639807   0.4390687
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3644544   0.3006703   0.4282384
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2698527   0.2191899   0.3205155
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2017087   0.1583234   0.2450939
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2785844   0.2334791   0.3236897
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1545001   0.1338942   0.1751060
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2819466   0.2563086   0.3075846
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2909970   0.2188122   0.3631818
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2537902   0.2032783   0.3043021
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.5148736   0.4244485   0.6052988
0-6 months    ki1114097-CMIN             BRAZIL                         optimal              NA                0.0809603   0.0121093   0.1498113
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1394546   0.1081963   0.1707129
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                0.1077180   0.0739284   0.1415076
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                0.0669309   0.0186242   0.1152375
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0268430   0.0210943   0.0325918
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2368530   0.2267660   0.2469401
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3109205   0.2711221   0.3507189
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1663809   0.1540020   0.1787598
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1990685   0.1784043   0.2197327
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2441871   0.1691576   0.3192165
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3926590   0.3832502   0.4020677
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3303089   0.3094075   0.3512104
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4289251   0.3086154   0.5492348
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4778102   0.3612352   0.5943852
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2286462   0.1429941   0.3142984
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.3237210   0.2180975   0.4293445
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3209374   0.2234230   0.4184519
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7331247   0.6278045   0.8384449
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8138348   0.7276081   0.9000615
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.3524467   0.2627455   0.4421479
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.6153714   0.4612054   0.7695375
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.1383858   0.0338059   0.2429658
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5189207   0.4648461   0.5729953
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7380155   0.6545333   0.8214977
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5473384   0.4715888   0.6230879
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3118149   0.2495200   0.3741099
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2750677   0.2203809   0.3297546
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1992266   0.1720521   0.2264011
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3337607   0.3046914   0.3628300
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3527251   0.2593554   0.4460948
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3029130   0.2666087   0.3392173
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5840937   0.5157278   0.6524597
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.6553779   0.5309080   0.7798478
6-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                0.3433662   0.2078776   0.4788548
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3408192   0.3052388   0.3763997
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.3229420   0.2762411   0.3696429
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0289148   0.0203099   0.0375196
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2165274   0.2038621   0.2291927
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7433157   0.7022153   0.7844161
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2350445   0.2192806   0.2508084
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6296328   0.6004197   0.6588459
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5344133   0.4844168   0.5844098
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1914581   0.1792657   0.2036506
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3577287   0.3332895   0.3821678


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0871452   0.9800054   1.2059982
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.0755760   0.8268973   1.3990415
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0814934   0.9780087   1.1959279
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9589957   0.7996062   1.1501572
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.1719510   1.0473029   1.3114344
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1359295   1.0123513   1.2745929
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0402161   0.9848855   1.0986550
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9835325   0.9556930   1.0121829
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0510481   0.9655722   1.1440906
0-24 months   ki1000109-EE               PAKISTAN                       observed             optimal           0.9777567   0.9479829   1.0084657
0-24 months   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.0499698   0.9534031   1.1563173
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0388423   1.0095832   1.0689494
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.9758803   0.9362920   1.0171426
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0678362   1.0018397   1.1381802
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0842915   0.9840940   1.1946908
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0557571   0.9759863   1.1420479
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1747208   1.1003827   1.2540811
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0739556   1.0323612   1.1172259
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.0609028   0.9521943   1.1820222
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1958804   1.0583552   1.3512759
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9181571   0.8721211   0.9666232
0-24 months   ki1114097-CMIN             BANGLADESH                     observed             optimal           0.9540563   0.9085218   1.0018729
0-24 months   ki1114097-CMIN             BRAZIL                         observed             optimal           1.0874421   0.8297586   1.4251499
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0876065   1.0209731   1.1585886
0-24 months   ki1114097-CMIN             PERU                           observed             optimal           1.0911832   0.9959933   1.1954708
0-24 months   ki1114097-CONTENT          PERU                           observed             optimal           3.1270541   1.8220117   5.3668521
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           3.0732095   2.7085205   3.4870021
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0857357   1.0612909   1.1107435
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0116847   0.9800941   1.0442935
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0687394   1.0340262   1.1046180
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0396465   1.0123525   1.0676763
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.1270083   1.0630809   1.1947799
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0542106   1.0397669   1.0688548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0409338   1.0136140   1.0689899
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3018970   1.0574969   1.6027810
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.8421734   0.6720852   1.0553067
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.3108010   1.0660698   1.6117137
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.2302635   0.8566550   1.7668119
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           1.1865521   1.0046929   1.4013294
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.2216716   1.0214269   1.4611731
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9577642   0.8309456   1.1039379
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.1314996   1.0091821   1.2686425
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.0604517   0.9286634   1.2109423
0-6 months    ki1000109-EE               PAKISTAN                       observed             optimal           1.0681596   0.9993231   1.1417377
0-6 months    ki1000109-ResPak           PAKISTAN                       observed             optimal           0.9702267   0.8775425   1.0727001
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0596862   0.9942700   1.1294064
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0685098   0.9462740   1.2065356
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.2961202   1.1210845   1.4984843
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1827525   1.0039689   1.3933734
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0844498   0.9647095   1.2190523
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2615407   1.1387326   1.3975932
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1079162   1.0357922   1.1850622
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.0833590   0.9088421   1.2913869
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0930629   0.9431707   1.2667764
0-6 months    ki1114097-CMIN             BANGLADESH                     observed             optimal           1.1008275   0.9643990   1.2565558
0-6 months    ki1114097-CMIN             BRAZIL                         observed             optimal           1.5569413   0.7826900   3.0970962
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0849076   0.9198587   1.2795711
0-6 months    ki1114097-CMIN             PERU                           observed             optimal           1.1953003   0.9370942   1.5246524
0-6 months    ki1114097-CONTENT          PERU                           observed             optimal           3.3356175   1.7278015   6.4395965
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           3.7070582   3.2003993   4.2939268
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0892356   1.0556272   1.1239141
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0485231   0.9548297   1.1514102
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.1206506   1.0601251   1.1846317
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2008184   1.1088442   1.3004216
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.4604280   1.1454328   1.8620473
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0461596   1.0294273   1.0631639
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0528273   1.0074524   1.1002459
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9824178   0.8008006   1.2052249
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.8641574   0.7235859   1.0320378
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9195709   0.7189655   1.1761490
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.2231926   0.9641508   1.5518322
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1366074   0.9227635   1.4000082
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0629983   0.9634919   1.1727813
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0427775   0.9669979   1.1244958
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0700018   0.8867686   1.2910966
6-24 months   ki1000109-EE               PAKISTAN                       observed             optimal           1.1056938   0.9168747   1.3333979
6-24 months   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.2931047   0.7090400   2.3582868
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9694642   0.8957044   1.0492979
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0259970   0.9449944   1.1139429
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0485526   0.9504909   1.1567312
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9614074   0.8391577   1.1014667
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9555677   0.8339971   1.0948594
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1342236   1.0273687   1.2521924
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0754678   1.0102637   1.1448804
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.0758723   0.8931709   1.2959461
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1961445   1.0577969   1.3525863
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9605185   0.8851285   1.0423299
6-24 months   ki1114097-CMIN             BANGLADESH                     observed             optimal           1.0859562   0.9571348   1.2321157
6-24 months   ki1114097-CMIN             BRAZIL                         observed             optimal           0.7000823   0.5412165   0.9055807
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0899356   1.0114266   1.1745387
6-24 months   ki1114097-CMIN             PERU                           observed             optimal           1.0684392   0.9615966   1.1871530
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           2.6578487   2.2656965   3.1178754
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1358699   1.0883644   1.1854490
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0276361   0.9885293   1.0682901
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0528170   1.0026754   1.1054661
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0243729   0.9914764   1.0583608
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.1227265   1.0533493   1.1966732
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1353215   1.0872524   1.1855158
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0564200   1.0043283   1.1112136


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0487008   -0.0089151    0.1063166
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0162847   -0.0404207    0.0729902
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0450315   -0.0102033    0.1002662
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0147870   -0.0804402    0.0508662
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0910354    0.0325381    0.1495327
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0651671    0.0104201    0.1199142
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0326112   -0.0113963    0.0766187
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0154864   -0.0423956    0.0114228
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0311551   -0.0204879    0.0827981
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0207685   -0.0494764    0.0079394
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0309859   -0.0286725    0.0906444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0258535    0.0068180    0.0448890
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0204585   -0.0554244    0.0145074
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0422165    0.0027199    0.0817132
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0337608   -0.0050223    0.0725440
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0252218   -0.0102780    0.0607216
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0514609    0.0321884    0.0707335
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0352937    0.0164841    0.0541033
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0304346   -0.0234740    0.0843432
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0593478    0.0171737    0.1015219
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0601165   -0.0973456   -0.0228873
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0410284   -0.0843308    0.0022740
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                 0.0270289   -0.0565440    0.1106017
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0345290    0.0096433    0.0594147
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0328318   -0.0000107    0.0656743
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                 0.1993174    0.1376739    0.2609609
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1129868    0.1031312    0.1228425
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0313214    0.0230076    0.0396351
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0088227   -0.0151225    0.0327679
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0238472    0.0123944    0.0353001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0261754    0.0086472    0.0437036
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0717760    0.0392174    0.1043346
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0253924    0.0189226    0.0318621
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0228560    0.0079968    0.0377152
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0822554    0.0254408    0.1390699
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0361939   -0.0882043    0.0158165
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0812401    0.0268927    0.1355875
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0327540   -0.0191316    0.0846397
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0669361    0.0074539    0.1264182
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0652987    0.0125431    0.1180543
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0181779   -0.0794611    0.0431053
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0593718    0.0080424    0.1107011
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0241926   -0.0288737    0.0772590
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0471422    0.0014510    0.0928333
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0181031   -0.0791742    0.0429680
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0239655   -0.0015876    0.0495186
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0249687   -0.0192709    0.0692083
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0799088    0.0406104    0.1192072
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0368628    0.0036557    0.0700698
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0235264   -0.0090871    0.0561399
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0404081    0.0243768    0.0564393
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0304266    0.0114329    0.0494203
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0242572   -0.0268610    0.0753754
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0236184   -0.0138407    0.0610776
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0519134   -0.0158908    0.1197176
0-6 months    ki1114097-CMIN             BRAZIL                         optimal              NA                 0.0450901   -0.0138131    0.1039934
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0118408   -0.0112181    0.0348996
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                 0.0210374   -0.0054078    0.0474825
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                 0.1563249    0.0997980    0.2128519
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0726656    0.0630486    0.0822827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0211357    0.0137040    0.0285674
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0150868   -0.0140177    0.0441913
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0200740    0.0108063    0.0293416
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0399766    0.0240193    0.0559339
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1124306    0.0526539    0.1722073
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0181250    0.0117778    0.0244722
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0174493    0.0029089    0.0319897
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0075414   -0.0952913    0.0802084
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0649070   -0.1492507    0.0194367
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0183898   -0.0750816    0.0383019
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0722521   -0.0045720    0.1490763
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0438424   -0.0229712    0.1106560
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0461856   -0.0251734    0.1175446
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0348138   -0.0262054    0.0958331
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0246719   -0.0414890    0.0908328
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0650409   -0.0489846    0.1790665
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0405615   -0.0436805    0.1248036
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0158457   -0.0566185    0.0249272
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0191862   -0.0414145    0.0797868
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0265747   -0.0270560    0.0802054
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0120337   -0.0545509    0.0304834
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0122219   -0.0496799    0.0252361
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0267409    0.0069594    0.0465224
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0251882    0.0043162    0.0460602
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0267621   -0.0388402    0.0923643
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0594147    0.0170191    0.1018103
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0230609   -0.0708367    0.0247150
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0563338   -0.0253525    0.1380201
6-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                -0.1029816   -0.1927361   -0.0132270
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0306518    0.0051820    0.0561215
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0221019   -0.0119205    0.0561242
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0479363    0.0404847    0.0553879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0294196    0.0201396    0.0386995
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0205424   -0.0082445    0.0493293
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0124143    0.0009398    0.0238889
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0153460   -0.0051903    0.0358822
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0655867    0.0318814    0.0992919
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0259084    0.0176475    0.0341693
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0201831    0.0020048    0.0383613


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0801597   -0.0204026    0.1708113
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0702656   -0.2093400    0.2852249
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0753526   -0.0224858    0.1638292
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0427575   -0.2506157    0.1305537
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1467220    0.0451664    0.2374761
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1196636    0.0122006    0.2154358
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0386613   -0.0153464    0.0897962
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0167433   -0.0463611    0.0120362
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0485688   -0.0356553    0.1259434
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0227493   -0.0548714    0.0083946
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0475916   -0.0488742    0.1351855
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0373900    0.0094922    0.0645021
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0247158   -0.0680429    0.0168537
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0635268    0.0018364    0.1214045
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0777388   -0.0161631    0.1629633
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0528125   -0.0246045    0.1243800
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1487339    0.0912252    0.2026034
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0688628    0.0313468    0.1049259
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0574066   -0.0502058    0.1539922
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1637960    0.0551376    0.2599587
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0891382   -0.1466297   -0.0345293
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0481562   -0.1006890    0.0018694
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                 0.0804108   -0.2051698    0.2983194
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0805498    0.0205423    0.1368809
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0835636   -0.0040229    0.1635095
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                 0.6802102    0.4511561    0.8136710
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.6746073    0.6307947    0.7132207
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0789655    0.0577513    0.0997021
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0115497   -0.0203102    0.0424148
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0643182    0.0329065    0.0947096
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0381346    0.0122018    0.0633865
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1126951    0.0593378    0.1630257
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0514229    0.0382460    0.0644193
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0393241    0.0134311    0.0645375
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2318901    0.0543707    0.3760844
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.1874040   -0.4879067    0.0524082
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2371077    0.0619751    0.3795424
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1871660   -0.1673311    0.4340088
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1572220    0.0046710    0.2863919
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1814494    0.0209774    0.3156184
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0440983   -0.2034482    0.0941519
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1162171    0.0090986    0.2117559
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0570056   -0.0768164    0.1741968
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0638103   -0.0006774    0.1241421
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0306869   -0.1395460    0.0677730
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0563244   -0.0057630    0.1145791
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0641171   -0.0567764    0.1711807
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2284666    0.1080066    0.3326590
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1545146    0.0039532    0.2823173
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0778734   -0.0365815    0.1796906
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2073185    0.1218307    0.2844842
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0974046    0.0345554    0.1561625
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0769450   -0.1003011    0.2256387
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0851395   -0.0602534    0.2105947
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0915924   -0.0369152    0.2041738
0-6 months    ki1114097-CMIN             BRAZIL                         optimal              NA                 0.3577150   -0.2776451    0.6771169
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0782625   -0.0871235    0.2184881
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                 0.1633902   -0.0671286    0.3441128
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                 0.7002054    0.4212298    0.8447108
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.7302443    0.6875390    0.7671129
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0819250    0.0526959    0.1102523
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0462775   -0.0473072    0.1314998
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.1076612    0.0567151    0.1558558
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1672346    0.0981600    0.2310186
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.3152692    0.1269676    0.4629567
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0441229    0.0285861    0.0594112
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0501766    0.0073973    0.0911123
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0178968   -0.2487503    0.1702793
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1571966   -0.3820059    0.0310432
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0874638   -0.3908873    0.1497676
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1824673   -0.0371822    0.3556004
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1201887   -0.0837013    0.2857185
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0592647   -0.0378914    0.1473261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0410227   -0.0341285    0.1107125
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0654222   -0.1276899    0.2254646
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0955905   -0.0906616    0.2500363
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.2266674   -0.4103577    0.5759634
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0314977   -0.1164398    0.0469818
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0253382   -0.0582074    0.1022879
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0463044   -0.0520879    0.1354949
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0401418   -0.1916712    0.0921196
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0464983   -0.1990449    0.0866407
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1183396    0.0266396    0.2014007
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0701721    0.0101594    0.1265463
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0705217   -0.1196066    0.2283630
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1639806    0.0546389    0.2606757
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0411043   -0.1297794    0.0406108
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0791526   -0.0447849    0.1883879
6-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                -0.4284034   -0.8476893   -0.1042638
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0825146    0.0112975    0.1486019
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0640553   -0.0399371    0.1576486
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.6237559    0.5586346    0.6792688
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1196175    0.0811901    0.1564378
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0268929   -0.0116038    0.0639246
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0501673    0.0026683    0.0954042
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0237930   -0.0085968    0.0551426
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1093112    0.0506473    0.1643500
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1191922    0.0802504    0.1564853
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0534068    0.0043097    0.1000830
