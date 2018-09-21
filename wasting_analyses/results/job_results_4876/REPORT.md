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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** birthwt

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

agecat                        studyid                    country                        birthwt                       ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ---------------------------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0      165     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       39     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       36     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1       17     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0      209     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1       11     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0       11     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0      137     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       65     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       16     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight                        1       20     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0      176     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       35     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0       15     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        6     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0      266     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       15     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight                        0       13     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight                        1        5     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0      248     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       39     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0       16     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        5     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      115     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       13     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        6     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        1     135
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      185     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      143     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       17     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       23     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight              0      175     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight              1      164     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight                        0       20     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight                        1       48     407
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      286     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1      202     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight                        0      138     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight                        1      128     754
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       11      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        8      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        2      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        1      22
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      762    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      370    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0      189    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1      171    1492
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       94     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       44     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       50     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1       27     215
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0      451     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       77     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0      114     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       45     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0      512     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       67     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0      134     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1       41     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     1839    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      440    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0       53    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1       27    2359
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0     1211    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      697    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight                        0      108    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight                        1       89    2105
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        4       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        2       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0      103     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        4     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Low birth weight                        0        8     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Low birth weight                        1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Normal or high birthweight              0       15      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Normal or high birthweight              1        1      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Low birth weight                        0        0      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Low birth weight                        1        1      17
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight              0        2       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight              1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birth weight                        0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birth weight                        1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0    15667   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     1210   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0    10786   13580
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1117   13580
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0     1440   13580
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1      237   13580
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      740     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       98     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       62     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1       17     917
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4360    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      953    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight                        0      911    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight                        1      300    6524
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     1923    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      781    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0      148    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1      123    2975
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0    28251   52856
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     5050   52856
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0    15627   52856
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1     3928   52856
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0     5128    8968
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1     1511    8968
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0     1441    8968
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1      888    8968
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0      188     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       16     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       49     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1        3     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0      213     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1        7     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0       12     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0      168     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       33     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       32     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birth weight                        1        4     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0      197     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       12     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0       20     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        1     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0      278     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1        3     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birth weight                        0       16     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birth weight                        1        2     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0      276     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       10     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0       19     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        2     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      123     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1        5     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        7     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        0     135
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      217     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       98     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       25     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       10     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight              0      218     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight              1      110     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight                        0       38     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight                        1       22     388
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      386     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       98     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight                        0      216     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight                        1       46     746
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       14      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        5      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        3      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        0      22
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      984    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      142    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0      296    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1       43    1465
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0      121     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       15     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       64     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1        7     207
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0      503     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       25     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0      144     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       11     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0      560     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       17     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0      169     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1        3     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     2085    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      187    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0       66    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1       13    2351
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0     1535    1932
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      220    1932
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight                        0      144    1932
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight                        1       33    1932
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        4       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        2       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0      105     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        1     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Low birth weight                        0        7     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Low birth weight                        1        0     113
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Normal or high birthweight              0       15      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Normal or high birthweight              1        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Low birth weight                        0        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Low birth weight                        1        0      17
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight              0        2       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight              1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birth weight                        0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birth weight                        1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0    15595   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     1062   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0    11385   13322
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1      382   13322
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0     1510   13322
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1       45   13322
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      775     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       17     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       75     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1        0     867
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4576    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      464    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight                        0      944    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight                        1       69    6053
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     2432    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      259    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0      240    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1       23    2954
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0    30632   52372
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     2528   52372
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0    17980   52372
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1     1232   52372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0     6376    8744
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      196    8744
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0     2116    8744
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1       56    8744
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0      159     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       27     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       34     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1       15     235
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0      192     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1        5     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0        9     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0      150     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       42     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       18     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight                        1       18     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0      181     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       26     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0       15     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        6     228
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0      237     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       13     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birth weight                        0       13     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birth weight                        1        4     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0      212     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       31     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0       11     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        5     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      107     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       11     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        4     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        1     123
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      250     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       80     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       24     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       19     373
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight              0      246     408
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight              1       93     408
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight                        0       35     408
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight                        1       34     408
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      342     750
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1      142     750
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight                        0      160     750
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight                        1      106     750
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       11      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        3      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        1      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        1      16
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      768    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      278    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0      188    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1      145    1379
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       80     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       37     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       39     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1       24     180
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0      407     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       60     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0      109     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       39     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0      504     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       55     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0      130     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1       41     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     1633    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      300    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0       46    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1       19    1998
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0     1259    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      598    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight                        0      111    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight                        1       72    2040
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        1       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0       1
6-24 months                   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0      103     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        4     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Low birth weight                        0        8     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Low birth weight                        1        0     115
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        0       2
6-24 months                   ki1114097-CMIN             PERU                           Normal or high birthweight              0       13      14
6-24 months                   ki1114097-CMIN             PERU                           Normal or high birthweight              1        0      14
6-24 months                   ki1114097-CMIN             PERU                           Low birth weight                        0        0      14
6-24 months                   ki1114097-CMIN             PERU                           Low birth weight                        1        1      14
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight              0        2       2
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight              1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birth weight                        0        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birth weight                        1        0       2
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0    16431   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1      167   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0     8479   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1      796   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0     1180   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1      204   10659
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      669     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       85     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       56     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1       17     827
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4494    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      540    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight                        0     1022    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight                        1      243    6299
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     1886    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      626    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0      142    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1      112    2766
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0    19069   34423
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     2812   34423
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     9695   34423
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1     2847   34423
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0     5236    8992
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1     1401    8992
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0     1489    8992
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1      866    8992


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/fce4500a-e0c1-49cf-8dbd-29ac31d4003d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fce4500a-e0c1-49cf-8dbd-29ac31d4003d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fce4500a-e0c1-49cf-8dbd-29ac31d4003d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fce4500a-e0c1-49cf-8dbd-29ac31d4003d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1908578   0.1367863   0.2449292
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.3224888   0.1970895   0.4478881
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.3285829   0.2640757   0.3930902
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.6545307   0.5029383   0.8061232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1658768   0.1155785   0.2161750
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.2857143   0.0920817   0.4793469
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0533808   0.0270537   0.0797079
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                0.2777778   0.0705140   0.4850416
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1358885   0.0961794   0.1755976
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.2380952   0.0556341   0.4205563
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.4359709   0.3822328   0.4897090
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.5750385   0.4216395   0.7284375
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.4828656   0.4296565   0.5360746
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight             NA                0.7094656   0.6016320   0.8172991
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.4015262   0.3400795   0.4629728
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.4481503   0.3674768   0.5288238
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3269961   0.2812746   0.3727177
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4889550   0.4216963   0.5562137
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3123901   0.2361037   0.3886766
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.3366975   0.2405426   0.4328525
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1452910   0.1156653   0.1749167
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2788956   0.2166675   0.3411238
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1157654   0.0897728   0.1417581
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.2411474   0.1802603   0.3020345
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1930784   0.1768713   0.2092855
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.3368920   0.2335153   0.4402688
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3627612   0.3413276   0.3841948
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.4871322   0.4355233   0.5387411
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0933985   0.0881813   0.0986157
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.1365909   0.1210252   0.1521566
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1169827   0.0952356   0.1387297
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.2360430   0.1555806   0.3165055
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1794854   0.1692217   0.1897491
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2654042   0.2422538   0.2885547
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2877564   0.2707190   0.3047937
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4341564   0.3835008   0.4848119
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1514864   0.1448665   0.1581063
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.2017446   0.1934631   0.2100261
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2270695   0.2101252   0.2440137
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.3853403   0.3538904   0.4167902
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.3111111   0.2599139   0.3623083
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.2857143   0.1358365   0.4355921
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3346562   0.2835497   0.3857628
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight             NA                0.3706926   0.2500461   0.4913391
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1951227   0.1453686   0.2448769
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.1682197   0.1055355   0.2309040
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1263206   0.0937984   0.1588429
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.1335557   0.1079104   0.1592010
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1102941   0.0575190   0.1630693
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.0985916   0.0290809   0.1681022
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0465267   0.0286016   0.0644519
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0739529   0.0328481   0.1150576
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0823154   0.0710136   0.0936172
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.1692862   0.0890593   0.2495132
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1249313   0.1094813   0.1403813
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.2030812   0.1548728   0.2512896
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0323126   0.0291219   0.0355033
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0267487   0.0189894   0.0345079
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0918760   0.0839225   0.0998295
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.0649750   0.0505667   0.0793832
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0961257   0.0849838   0.1072677
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.0743977   0.0440159   0.1047795
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0762688   0.0715034   0.0810342
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.0642720   0.0591740   0.0693701
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0296123   0.0234556   0.0357690
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.0251433   0.0141505   0.0361361
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1452316   0.0945317   0.1959315
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.3262943   0.2029316   0.4496569
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.2243292   0.1656193   0.2830392
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.6052738   0.4504898   0.7600578
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1256039   0.0803586   0.1708491
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.2857143   0.0920744   0.4793542
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1275720   0.0855451   0.1695989
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.3125000   0.0849434   0.5400566
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2423381   0.1960602   0.2886160
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.4434824   0.2969013   0.5900635
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2723344   0.2250947   0.3195740
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight             NA                0.4689941   0.3615683   0.5764200
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2837504   0.2270210   0.3404798
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.3563873   0.2796549   0.4331197
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2646659   0.2291727   0.3001591
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4311584   0.3723900   0.4899268
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3025668   0.2192326   0.3859010
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.3353264   0.2240553   0.4465975
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1249390   0.0948720   0.1550061
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2193355   0.1554028   0.2832682
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0987116   0.0741235   0.1232997
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.2546417   0.1935297   0.3157536
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1551861   0.1390420   0.1713301
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.2958907   0.1909744   0.4008070
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3205672   0.2994232   0.3417112
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.4413519   0.3853934   0.4973103
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0854842   0.0797963   0.0911721
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.1455920   0.1277391   0.1634449
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1124935   0.0899499   0.1350372
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.2372614   0.1491751   0.3253476
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1073568   0.0988608   0.1158528
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2077094   0.1869621   0.2284567
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2482730   0.2313985   0.2651474
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4145148   0.3627645   0.4662651
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1283585   0.1212385   0.1354784
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.2293468   0.2184452   0.2402485
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2108677   0.1942344   0.2275009
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.3712227   0.3396437   0.4028017


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2178988   0.1673295   0.2684681
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3571429   0.2961397   0.4181460
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1767241   0.1275357   0.2259125
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0668896   0.0385244   0.0952548
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1428571   0.1037139   0.1820004
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5208845   0.4722913   0.5694778
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3626005   0.3118807   0.4133204
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3302326   0.2672220   0.3932431
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1979652   0.1818822   0.2140482
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3733967   0.3527283   0.3940651
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0997054   0.0946662   0.1047447
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1254089   0.1039619   0.1468560
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1920601   0.1825006   0.2016195
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3038655   0.2873358   0.3203952
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1698577   0.1645287   0.1751867
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2675067   0.2524577   0.2825557
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3402062   0.2930034   0.3874090
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1262799   0.0958566   0.1567031
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1062802   0.0641938   0.1483666
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0850702   0.0737905   0.0963499
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1309524   0.1159059   0.1459989
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0320522   0.0290611   0.0350434
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0880555   0.0809161   0.0951949
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0954638   0.0848652   0.1060624
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0717941   0.0681270   0.0754612
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0288198   0.0235259   0.0341136
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1787234   0.1296354   0.2278114
6-24 months                   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2631579   0.2058743   0.3204415
6-24 months                   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1403509   0.0951649   0.1855368
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3112745   0.2662918   0.3562572
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3067440   0.2633529   0.3501352
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3388889   0.2695483   0.4082295
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1596597   0.1435945   0.1757248
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3284314   0.3080465   0.3488162
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0938174   0.0882819   0.0993530
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1233374   0.1009129   0.1457618
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1243054   0.1161571   0.1324538
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2668113   0.2503255   0.2832971
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1643959   0.1582458   0.1705459
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2521130   0.2372863   0.2669397


### Parameter: RR


agecat                        studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.6896815   1.0447468    2.7327421
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    1.9919802   1.4649531    2.7086090
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    1.7224490   0.8197876    3.6190234
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    5.2037037   2.1275156   12.7277716
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    1.7521368   0.7715727    3.9788646
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    1.3189837   0.9831431    1.7695472
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.4692818   1.2182015    1.7721116
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.1161173   0.8825544    1.4114913
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.4952929   1.3658600    1.6369913
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.0778110   0.7432586    1.5629505
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.9195657   1.4247241    2.5862779
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    2.0830689   1.4870753    2.9179260
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.7448460   1.2694190    2.3983315
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.3428454   1.1909936    1.5140583
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.4624532   1.2883191    1.6601239
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    2.0177607   1.3694169    2.9730597
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.4786954   1.3327262    1.6406520
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.5087638   1.3241209    1.7191542
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3317671   1.2557446    1.4123921
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.6970151   1.5180540    1.8970736
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.9183673   0.5299690    1.5914112
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.1076818   0.7739840    1.5852512
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    0.8621226   0.5499087    1.3515978
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.0572752   0.9054214    1.2345972
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.8938967   0.3812725    2.0957488
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.5894706   0.8093304    3.1216136
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.0565558   1.2556319    3.3683613
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.6255429   1.2448417    2.1226712
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.8278088   0.6094186    1.1244608
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    0.7072029   0.5574070    0.8972544
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.7739624   0.5062269    1.1832989
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    0.8427039   0.7640338    0.9294743
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    0.8490836   0.5189532    1.3892255
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    2.2467167   1.3444760    3.7544261
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    2.6981493   1.8631677    3.9073294
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    2.2747253   1.0558401    4.9007187
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    2.4495968   1.1015172    5.4475085
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    1.8300150   1.2496416    2.6799323
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.7221262   1.2954206    2.2893868
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.2559887   0.9376390    1.6824254
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.6290666   1.4929817    1.7775557
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.1082721   0.7209560    1.7036646
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.7555402   1.2041373    2.5594436
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    2.5796529   1.8275943    3.6411849
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.9066837   1.3176328    2.7590712
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.3767842   1.1950032    1.5862173
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.7031451   1.4816646    1.9577326
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    2.1091110   1.3838430    3.2144898
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.9347575   1.7045089    2.1961085
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.6695929   1.4489438    1.9238431
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.7867684   1.6620713    1.9208210
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.7604533   1.5660344    1.9790088


### Parameter: PAR


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0270411   -0.0018716    0.0559537
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0285599   -0.0006718    0.0577917
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0108474   -0.0077963    0.0294911
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0135088   -0.0004526    0.0274703
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0069686   -0.0060852    0.0200224
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0151161   -0.0030978    0.0333299
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0380190    0.0163082    0.0597297
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0361396   -0.0005851    0.0728643
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0356044    0.0221386    0.0490702
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0178424   -0.0280246    0.0637094
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0322927    0.0145381    0.0500473
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0274706    0.0114033    0.0435380
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0048869    0.0011748    0.0085989
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0106355    0.0039320    0.0173390
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0063070    0.0041431    0.0084709
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0084263    0.0002309    0.0166216
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0125747    0.0076680    0.0174814
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0161092    0.0102497    0.0219687
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0183713    0.0144582    0.0222845
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0404372    0.0309300    0.0499444
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0025397   -0.0183979    0.0133186
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0055499   -0.0147062    0.0258061
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0020932   -0.0304251    0.0262386
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0000408   -0.0040864    0.0040049
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0040139   -0.0339585    0.0259306
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0061819   -0.0037984    0.0161622
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0027548   -0.0000854    0.0055949
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0060211    0.0005639    0.0114782
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0002604   -0.0012969    0.0007761
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0038205   -0.0067489   -0.0008921
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0006620   -0.0038764    0.0025524
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0044747   -0.0070013   -0.0019482
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0007925   -0.0039802    0.0023952
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0334918    0.0036078    0.0633758
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0388287    0.0078870    0.0697703
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0147470   -0.0045335    0.0340276
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0114241   -0.0038686    0.0267169
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0230774    0.0040299    0.0421250
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0389402    0.0162603    0.0616200
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0469163    0.0110019    0.0828307
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0420781    0.0289025    0.0552537
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0363221   -0.0152179    0.0878621
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0360366    0.0168727    0.0552005
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0327952    0.0162922    0.0492983
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0044736    0.0006830    0.0082642
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0078642    0.0014086    0.0143197
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0083332    0.0057777    0.0108887
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0108438    0.0017764    0.0199112
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0169486    0.0122366    0.0216607
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0185383    0.0123785    0.0246982
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0360374    0.0312404    0.0408345
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0412453    0.0317482    0.0507425


### Parameter: PAF


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1240992   -0.0174151    0.2459300
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0799678   -0.0051409    0.1578700
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0613802   -0.0493457    0.1604224
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.2019573   -0.0157907    0.3730282
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0487805   -0.0463916    0.1352965
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0335103   -0.0078312    0.0731560
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0729892    0.0297843    0.1142703
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0825736   -0.0056315    0.1630421
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0981918    0.0648430    0.1303514
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0540299   -0.0954950    0.1831460
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.1818449    0.0790248    0.2731859
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1917857    0.0757546    0.2932501
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0246855    0.0058112    0.0432014
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0284830    0.0103665    0.0462679
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0632560    0.0414880    0.0845297
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0671903    0.0003194    0.1295880
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0654726    0.0397205    0.0905341
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0530142    0.0335761    0.0720614
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1081572    0.0845548    0.1311511
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1511634    0.1147302    0.1860972
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0082305   -0.0609536    0.0418726
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0163135   -0.0450785    0.0740991
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0108441   -0.1687562    0.1257323
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0003229   -0.0328410    0.0311715
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0377674   -0.3610830    0.2087469
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.1172845   -0.0902142    0.2852903
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0323823   -0.0013468    0.0649752
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0459790    0.0036210    0.0865363
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0081227   -0.0409739    0.0236917
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0433870   -0.0770487   -0.0107775
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0069343   -0.0411667    0.0261727
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0623272   -0.0977440   -0.0280531
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0274997   -0.1444556    0.0775042
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1873946    0.0078616    0.3344401
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.1475489    0.0247105    0.2549157
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.1050725   -0.0399371    0.2298618
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0821902   -0.0324343    0.1840887
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0869483    0.0128426    0.1554909
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.1250991    0.0496309    0.1945744
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.1418838    0.0262506    0.2437856
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1371766    0.1039951    0.1691293
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1071799   -0.0586100    0.2470052
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.2238636    0.1003165    0.3304449
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.2493805    0.1211018    0.3589364
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0280197    0.0040946    0.0513700
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0239446    0.0040909    0.0434026
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0888240    0.0615769    0.1152799
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0879200    0.0127613    0.1573569
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1363468    0.0985012    0.1726036
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0694810    0.0462377    0.0921578
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.2192113    0.1897476    0.2476037
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1635985    0.1249743    0.2005179
