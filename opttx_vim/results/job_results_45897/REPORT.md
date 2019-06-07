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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        birthwt                       ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ---------------------------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0      164     255
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       39     255
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       35     255
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1       17     255
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0      206     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1       11     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0       11     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        1     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0      133     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       65     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       16     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight                        1       20     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0      175     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       35     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0       15     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        6     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0      263     296
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       15     296
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight                        0       13     296
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight                        1        5     296
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0      235     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       39     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0       15     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        5     294
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
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      143     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1      101     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight                        0       69     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight                        1       64     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       10      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        8      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        2      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        1      21
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      247     457
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      114     457
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0       50     457
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1       46     457
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       91     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       44     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       49     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1       27     211
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
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        1       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0      103     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        4     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Low birth weight                        0        8     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Low birth weight                        1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Normal or high birthweight              0       14      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Normal or high birthweight              1        1      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Low birth weight                        0        0      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Low birth weight                        1        1      16
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight              0        2       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight              1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birth weight                        0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birth weight                        1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0     7616    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1      497    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0    8113
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0     9677   12416
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1117   12416
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0     1385   12416
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1      237   12416
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      327     435
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       59     435
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       35     435
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1       14     435
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4342    6504
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      953    6504
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight                        0      909    6504
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight                        1      300    6504
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     1847    2895
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      781    2895
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0      144    2895
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1      123    2895
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     6625   12962
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     1210   12962
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     4073   12962
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1     1054   12962
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0      679    1177
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      214    1177
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0      167    1177
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1      117    1177
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0      187     254
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       16     254
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       48     254
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1        3     254
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0      210     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1        7     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0       12     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0      164     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       33     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       32     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birth weight                        1        4     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0      196     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       12     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0       20     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0      275     296
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1        3     296
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birth weight                        0       16     296
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birth weight                        1        2     296
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0      263     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       10     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0       18     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        2     293
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
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      193     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       49     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight                        0      108     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight                        1       23     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       13      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        5      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        3      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        0      21
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      304     449
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1       56     449
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0       75     449
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1       14     449
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0      118     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       15     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       63     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1        7     203
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
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0     1534    1930
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      220    1930
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight                        0      143    1930
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight                        1       33    1930
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        1       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0       90      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        1      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Low birth weight                        0        6      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Low birth weight                        1        0      97
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Normal or high birthweight              0       14      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Normal or high birthweight              1        1      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Low birth weight                        0        1      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Low birth weight                        1        0      16
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight              0        2       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight              1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birth weight                        0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birth weight                        1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0     7540    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1      439    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0    7979
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0     9561   11405
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1      382   11405
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0     1417   11405
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1       45   11405
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      343     397
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       11     397
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       43     397
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1        0     397
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4422    5885
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      464    5885
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight                        0      930    5885
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight                        1       69    5885
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     2333    2851
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      259    2851
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0      236    2851
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1       23    2851
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     7174   12810
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1      612   12810
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     4670   12810
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1      354   12810
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0      849    1127
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1       25    1127
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0      247    1127
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1        6    1127
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
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      171     375
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       71     375
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight                        0       80     375
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight                        1       53     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       11      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        3      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        1      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        1      16
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      265     431
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1       77     431
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0       49     431
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1       40     431
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
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0     7909    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1       66    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0    7975
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0     8479   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1      796   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0     1180   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1      204   10659
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      304     401
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       51     401
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       32     401
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1       14     401
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4494    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      540    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight                        0     1022    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight                        1      243    6299
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     1886    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      626    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0      142    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1      112    2766
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     4549    8513
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1      668    8513
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     2554    8513
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1      742    8513
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0      695    1185
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      199    1185
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0      176    1185
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1      115    1185


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
![](/tmp/537ebc0a-f89e-40d3-9e5c-40da1079534e/2f2bf5d2-2d0f-4055-a42c-d7056720ccf5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/537ebc0a-f89e-40d3-9e5c-40da1079534e/2f2bf5d2-2d0f-4055-a42c-d7056720ccf5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1936243   0.1390404   0.2482082
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3329700   0.2673808   0.3985592
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1664487   0.1159285   0.2169689
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0540602   0.0274256   0.0806947
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1421794   0.1007362   0.1836226
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4353966   0.3816294   0.4891639
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                0.4811233   0.4277658   0.5344808
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                0.4169480   0.3524274   0.4814685
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3165421   0.2332195   0.3998646
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3015009   0.2136984   0.3893034
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1530158   0.1188269   0.1872047
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1149498   0.0888707   0.1410288
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1930604   0.1768525   0.2092683
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3628515   0.3412743   0.3844287
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1037332   0.0965300   0.1109365
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1494014   0.1138387   0.1849641
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                0.1732092   0.1619687   0.1844496
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2965285   0.2790360   0.3140210
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1549756   0.1449986   0.1649527
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2390338   0.2032892   0.2747784
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2948069   0.1646119   0.4250020
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                0.3477186   0.2847688   0.4106684
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                0.1780370   0.1123880   0.2436860
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1332192   0.1105390   0.1558994
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1146086   0.0412650   0.1879523
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.0649379   0.0388661   0.0910096
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0690658   0.0586365   0.0794952
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1250992   0.1095864   0.1406119
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0322692   0.0241719   0.0403665
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0693221   0.0546178   0.0840264
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.0763291   0.0493062   0.1033519
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0728857   0.0659180   0.0798534
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0294975   0.0080470   0.0509480
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1435888   0.0923372   0.1948404
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2212652   0.1626661   0.2798644
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1261180   0.0807498   0.1714861
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1275596   0.0855223   0.1695969
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2423125   0.1959943   0.2886307
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                0.2839314   0.2321638   0.3356991
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                0.2983450   0.2404769   0.3562132
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2253786   0.1865236   0.2642336
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3087693   0.2193012   0.3982373
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1271155   0.0968664   0.1573646
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0972141   0.0725045   0.1219236
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1485380   0.1326558   0.1644202
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3253414   0.3031122   0.3475706
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0870844   0.0805104   0.0936585
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1423355   0.1060321   0.1786390
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                0.1062857   0.0977608   0.1148106
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2482211   0.2313144   0.2651277
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1279046   0.1171465   0.1386627
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2227418   0.1877468   0.2577369


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2196078   0.1686968   0.2705188
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          observed             NA                0.3632479   0.3014950   0.4250007
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1774892   0.1281103   0.2268680
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           observed             NA                0.0675676   0.0389248   0.0962103
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1496599   0.1088126   0.1905072
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             NA                0.5208845   0.4722913   0.5694778
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             NA                0.4376658   0.3875214   0.4878102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.3501094   0.2551408   0.4450780
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3364929   0.2725858   0.4004000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1979652   0.1818822   0.2140482
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         observed             NA                0.3733967   0.3527283   0.3940651
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1090528   0.1035698   0.1145358
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1678161   0.1326576   0.2029745
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             NA                0.1926507   0.1830653   0.2022360
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.3122625   0.2953787   0.3291463
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1746644   0.1668151   0.1825137
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.2812234   0.2509377   0.3115092
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             NA                0.3402062   0.2930034   0.3874090
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       observed             NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.1559020   0.0942472   0.2175568
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.1083744   0.0655070   0.1512418
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.0850702   0.0737905   0.0963499
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         observed             NA                0.1310881   0.1160272   0.1461490
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0374397   0.0339555   0.0409239
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             NA                0.0905692   0.0832362   0.0979023
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.0989127   0.0879520   0.1098733
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.0754098   0.0700851   0.0807345
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0275067   0.0175352   0.0374781
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.1787234   0.1296354   0.2278114
6-24 months                   ki0047075b-MAL-ED          INDIA                          observed             NA                0.2631579   0.2058743   0.3204415
6-24 months                   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1403509   0.0951649   0.1855368
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1389961   0.0967835   0.1812087
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA                          observed             NA                0.3112745   0.2662918   0.3562572
6-24 months                   ki1000109-EE               PAKISTAN                       observed             NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2714617   0.2180647   0.3248587
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3388889   0.2695483   0.4082295
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1596597   0.1435945   0.1757248
6-24 months                   ki1101329-Keneba           GAMBIA                         observed             NA                0.3284314   0.3080465   0.3488162
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0938174   0.0882819   0.0993530
6-24 months                   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1620948   0.1259787   0.1982108
6-24 months                   ki1135781-COHORTS          INDIA                          observed             NA                0.1243054   0.1161571   0.1324538
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2668113   0.2503255   0.2832971
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1656290   0.1564175   0.1748406
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.2649789   0.2355568   0.2944011


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1341956   0.9763555   1.317552
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0909327   0.9994305   1.190812
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.0663296   0.9536132   1.192369
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           observed             optimal           1.2498590   0.9821777   1.590494
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0526131   0.9571837   1.157557
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0360368   0.9932893   1.080624
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             optimal           1.0826426   1.0335636   1.134052
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             optimal           1.0496892   0.9545307   1.154334
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1060439   1.0900004   1.122323
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1160592   0.9010541   1.382368
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1605580   0.9996149   1.347414
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2460754   1.0873294   1.427998
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0254058   1.0058791   1.045311
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0290621   1.0098197   1.048671
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0512816   1.0027961   1.102111
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1232565   1.0115672   1.247278
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             optimal           1.1122430   1.0687486   1.157507
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0530608   1.0319768   1.074575
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1270445   1.0834708   1.172370
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1765009   1.0846236   1.276161
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0466899   0.6903550   1.586951
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             optimal           0.9783951   0.8785675   1.089566
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       observed             optimal           1.0842101   0.8011627   1.467257
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1702666   0.9310203   1.470993
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9456041   0.5722934   1.562428
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.8116781   0.6171346   1.067549
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2317258   1.1470744   1.322624
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0478734   1.0028792   1.094886
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1602310   0.9189497   1.464864
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             optimal           1.3064989   1.0747653   1.588197
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2958711   0.9243558   1.816705
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0346317   0.9591850   1.116013
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.9325080   0.4980759   1.745861
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.2446891   1.0127923   1.529683
6-24 months                   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1893323   1.0402832   1.359737
6-24 months                   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.1128538   0.9577410   1.293088
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0896565   0.9686728   1.225750
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0953440   1.0129291   1.184464
6-24 months                   ki1000108-IRC              INDIA                          observed             optimal           1.0963018   0.9920860   1.211465
6-24 months                   ki1000109-EE               PAKISTAN                       observed             optimal           1.1083364   0.9832416   1.249346
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2044699   1.1715941   1.238268
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0975473   0.9115365   1.321516
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2663728   1.0950893   1.464447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.3527553   1.1503924   1.590715
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0748742   1.0385293   1.112491
6-24 months                   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0094977   0.9828069   1.036913
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0773156   1.0281433   1.128840
6-24 months                   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1388216   1.0162515   1.276175
6-24 months                   ki1135781-COHORTS          INDIA                          observed             optimal           1.1695402   1.1196668   1.221635
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0748936   1.0485880   1.101859
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.2949418   1.2273855   1.366216
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1896235   1.0906697   1.297555


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0259835   -0.0033711   0.0553382
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0302779    0.0010396   0.0595161
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0110405   -0.0076974   0.0297784
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0135074   -0.0005970   0.0276118
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0074805   -0.0061289   0.0210899
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0156903   -0.0026037   0.0339843
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0397613    0.0177536   0.0617689
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0207178   -0.0187805   0.0602161
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0335673    0.0212324   0.0459023
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0349919   -0.0296288   0.0996127
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0245679    0.0015232   0.0476127
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0282863    0.0120987   0.0444739
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0049048    0.0011816   0.0086281
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0105452    0.0037035   0.0173869
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0053196    0.0004179   0.0102213
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0184147    0.0024534   0.0343760
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0194415    0.0124998   0.0263833
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0157340    0.0097338   0.0217343
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0196888    0.0136571   0.0257205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0421897    0.0233075   0.0610719
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0137645   -0.1089948   0.1365238
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                -0.0075124   -0.0450164   0.0299915
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0149925   -0.0389300   0.0689150
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0226828   -0.0167107   0.0620762
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0062342   -0.0638459   0.0513774
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0122292   -0.0301110   0.0056525
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0160043    0.0106642   0.0213445
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0059889    0.0004727   0.0115052
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0051705   -0.0023687   0.0127098
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0212471    0.0076202   0.0348740
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0225836   -0.0033605   0.0485277
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0025242   -0.0030237   0.0080720
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0019908   -0.0205101   0.0165284
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0351346    0.0047728   0.0654964
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0418927    0.0116239   0.0721614
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0142329   -0.0050958   0.0335616
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0114365   -0.0038528   0.0267259
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0231030    0.0040185   0.0421876
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0273431   -0.0009676   0.0556537
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0323216   -0.0033765   0.0680197
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0460831    0.0311771   0.0609892
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0301196   -0.0269328   0.0871720
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0338601    0.0147254   0.0529949
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0342928    0.0176422   0.0509434
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0111217    0.0059109   0.0163324
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0030900   -0.0056241   0.0118041
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0067330    0.0026477   0.0108182
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0197592    0.0031696   0.0363489
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0180197    0.0132873   0.0227521
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0185902    0.0124106   0.0247698
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0377244    0.0309416   0.0445073
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0422371    0.0235046   0.0609696


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1183179   -0.0242171   0.2410169
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0833531   -0.0005698   0.1602371
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0622036   -0.0486432   0.1613334
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1999097   -0.0181456   0.3712644
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0499833   -0.0447315   0.1361113
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0347833   -0.0067561   0.0746088
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0763341    0.0324736   0.1182063
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0473370   -0.0476352   0.1336997
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0958767    0.0825692   0.1089912
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1039902   -0.1098113   0.2766035
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1383455   -0.0003853   0.2578375
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1974803    0.0803155   0.2997187
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0247763    0.0058448   0.0433474
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0282413    0.0097242   0.0464122
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0487801    0.0027883   0.0926508
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1097314    0.0114350   0.1982539
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1009159    0.0643263   0.1360747
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0503872    0.0309859   0.0694000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1127236    0.0770402   0.1470273
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1500219    0.0780212   0.2163998
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0446072   -0.4485302   0.3698609
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                -0.0220820   -0.1382165   0.0822031
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0776695   -0.2481859   0.3184561
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1454939   -0.0740905   0.3201869
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0575250   -0.7473555   0.3599704
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.2320155   -0.6203920   0.0632747
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1881310    0.1282170   0.2439273
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0456863    0.0028709   0.0866632
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1381027   -0.0881989   0.3173426
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.2345956    0.0695643   0.3703553
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.2283183   -0.0818346   0.4495529
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0334725   -0.0425518   0.1039529
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0723768   -1.0077262   0.4272167
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1965865    0.0126307   0.3462697
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1591921    0.0387233   0.2645636
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1014094   -0.0441236   0.2266575
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0822796   -0.0323403   0.1841733
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0870448    0.0127640   0.1557366
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0878424   -0.0079772   0.1745532
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0977468   -0.0170440   0.1995815
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1697592    0.1464621   0.1924205
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0888776   -0.0970487   0.2432933
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2103431    0.0868325   0.3171483
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2607680    0.1307314   0.3713521
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0696585    0.0370999   0.1011163
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0094083   -0.0174939   0.0355992
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0717669    0.0273730   0.1141346
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1218994    0.0159916   0.2164084
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1449631    0.1068772   0.1814250
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0696754    0.0463366   0.0924430
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2277645    0.1852601   0.2680516
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1593979    0.0831321   0.2293198
