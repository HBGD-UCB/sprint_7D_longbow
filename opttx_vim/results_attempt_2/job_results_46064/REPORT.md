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
![](/tmp/3770a52e-94ad-441f-b201-82d94e717014/83eceace-8c08-460d-a53d-9234bff6cea2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3770a52e-94ad-441f-b201-82d94e717014/83eceace-8c08-460d-a53d-9234bff6cea2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1922582   0.1377763   0.2467402
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3286144   0.2628977   0.3943311
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1668209   0.1162645   0.2173773
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0540059   0.0273733   0.0806385
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1423534   0.1008946   0.1838121
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4357884   0.3820134   0.4895635
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                0.4820318   0.4287043   0.5353593
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                0.4165814   0.3546528   0.4785101
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3165421   0.2332195   0.3998646
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3049241   0.2124077   0.3974405
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1548378   0.1199342   0.1897414
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1150174   0.0889554   0.1410794
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1930785   0.1768700   0.2092870
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3627559   0.3411563   0.3843554
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1038298   0.0969136   0.1107459
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1517180   0.1159153   0.1875207
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                0.1739876   0.1627308   0.1852444
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2964806   0.2789956   0.3139656
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1554945   0.1453610   0.1656279
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2393626   0.2036316   0.2750936
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2860721   0.1583812   0.4137630
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                0.3341918   0.2830295   0.3853542
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                0.2103864   0.1434219   0.2773510
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1332192   0.1105390   0.1558994
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1282857   0.0523699   0.2042015
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.0463238   0.0284133   0.0642343
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0681713   0.0578018   0.0785408
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1251348   0.1096105   0.1406591
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0336368   0.0253677   0.0419059
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0676524   0.0521251   0.0831798
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.0591235   0.0379671   0.0802798
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0730255   0.0661084   0.0799426
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0239072   0.0030263   0.0447881
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1670517   0.1035260   0.2305774
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2226656   0.1635501   0.2817811
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1246470   0.0794915   0.1698026
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1277857   0.0857042   0.1698671
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2427559   0.1964131   0.2890988
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                0.2741931   0.2265845   0.3218018
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                0.2910520   0.2335141   0.3485899
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2253786   0.1865236   0.2642336
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3305469   0.2434573   0.4176365
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1272833   0.0968074   0.1577592
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0971306   0.0724328   0.1218284
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1468038   0.1310183   0.1625892
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3189411   0.2977146   0.3401677
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0843654   0.0782782   0.0904526
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1435174   0.1070197   0.1800151
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                0.1062506   0.0977295   0.1147717
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2485472   0.2316288   0.2654656
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1279294   0.1171054   0.1387534
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2224713   0.1874369   0.2575057


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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1422545   0.9830218   1.327280
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1053923   1.0109500   1.208657
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.0639504   0.9514511   1.189752
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           observed             optimal           1.2511146   0.9826847   1.592869
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0513265   0.9557815   1.156423
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0351055   0.9926049   1.079426
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             optimal           1.0806021   1.0318512   1.131656
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             optimal           1.0506128   0.9578688   1.152337
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1060439   1.0900004   1.122323
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1035299   0.8810440   1.382199
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1469017   0.9878539   1.331557
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2453423   1.0870275   1.426714
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0253096   1.0058276   1.045169
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0293333   1.0099688   1.049069
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0503043   1.0056600   1.096930
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1061056   1.0011262   1.222093
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             optimal           1.1072667   1.0642002   1.152076
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0532310   1.0321649   1.074727
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1232838   1.0794524   1.168895
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1748847   1.0837031   1.273738
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0786491   0.7113014   1.635711
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             optimal           1.0179968   0.9584383   1.081256
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       observed             optimal           0.9174997   0.7168456   1.174319
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1702666   0.9310203   1.470993
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.8447893   0.5580900   1.278771
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1378298   0.9203821   1.406651
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2478893   1.1595674   1.342939
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0475748   1.0026337   1.094530
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1130589   0.8863152   1.397810
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             optimal           1.3387434   1.0810665   1.657839
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.6729852   1.1900673   2.351866
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0326502   0.9603461   1.110398
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1505598   0.5151906   2.569511
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0698690   0.8358573   1.369396
6-24 months                   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1818525   1.0323983   1.352942
6-24 months                   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.1259864   0.9671974   1.310844
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0877287   0.9669448   1.223600
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0933432   1.0113582   1.181974
6-24 months                   ki1000108-IRC              INDIA                          observed             optimal           1.1352381   1.0444572   1.233909
6-24 months                   ki1000109-EE               PAKISTAN                       observed             optimal           1.1361086   0.9933984   1.299320
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2044699   1.1715941   1.238268
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0252368   0.8676915   1.211387
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2647031   1.0918508   1.464920
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.3539176   1.1511839   1.592355
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0875721   1.0491058   1.127449
6-24 months                   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0297554   1.0083265   1.051640
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1120369   1.0681443   1.157733
6-24 months                   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1294431   1.0081728   1.265301
6-24 months                   ki1135781-COHORTS          INDIA                          observed             optimal           1.1699274   1.1200586   1.222017
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0734834   1.0472414   1.100383
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.2946912   1.2268696   1.366262
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1910698   1.0917653   1.299407


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0273496   -0.0018419   0.0565411
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0346334    0.0052985   0.0639684
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0106683   -0.0081173   0.0294539
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0135617   -0.0005584   0.0276817
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0073065   -0.0063551   0.0209681
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0152986   -0.0029203   0.0335174
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0388527    0.0168984   0.0608071
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0210843   -0.0174419   0.0596105
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0335673    0.0212324   0.0459023
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0315688   -0.0369794   0.1001170
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0227459   -0.0004613   0.0459532
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0282186    0.0120555   0.0443818
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0048867    0.0011715   0.0086019
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0106408    0.0037601   0.0175216
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0052231    0.0007069   0.0097393
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0160981    0.0007440   0.0314523
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0186631    0.0117306   0.0255956
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0157819    0.0097882   0.0217757
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0191699    0.0130766   0.0252633
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0418609    0.0230839   0.0606378
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0224993   -0.0966318   0.1416304
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.0060144   -0.0141228   0.0261515
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0173569   -0.0693065   0.0345927
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0226828   -0.0167107   0.0620762
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0199113   -0.0741914   0.0343687
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0063848   -0.0035994   0.0163690
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0168989    0.0114336   0.0223642
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0059533    0.0004420   0.0114645
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0038029   -0.0038685   0.0114743
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0229168    0.0083576   0.0374760
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0397892    0.0191609   0.0604175
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0023843   -0.0029403   0.0077089
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0035995   -0.0156850   0.0228839
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0116717   -0.0294919   0.0528353
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0404923    0.0098253   0.0711593
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0157038   -0.0036822   0.0350898
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0112105   -0.0041011   0.0265220
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0226596    0.0036103   0.0417089
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0370814    0.0141164   0.0600463
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0396147    0.0001704   0.0790590
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0460831    0.0311771   0.0609892
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0083420   -0.0468409   0.0635248
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0336923    0.0143649   0.0530197
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0343762    0.0177167   0.0510358
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0128559    0.0074381   0.0182737
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0094902    0.0027877   0.0161928
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0094520    0.0060211   0.0128830
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0185773    0.0019281   0.0352266
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0180549    0.0133255   0.0227843
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0182641    0.0120842   0.0244440
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0376997    0.0309076   0.0444917
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0425076    0.0237695   0.0612457


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1245383   -0.0172715   0.2465795
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0953438    0.0108314   0.1726357
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0601066   -0.0510262   0.1594884
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2007127   -0.0176204   0.3722019
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0488207   -0.0462642   0.1352643
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0339149   -0.0074502   0.0735815
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0745899    0.0308680   0.1163394
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0481745   -0.0439843   0.1321979
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0958767    0.0825692   0.1089912
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0938171   -0.1350171   0.2765153
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1280857   -0.0122955   0.2489994
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1970079    0.0800601   0.2990887
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0246848    0.0057939   0.0432168
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0284973    0.0098704   0.0467739
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0478949    0.0056282   0.0883651
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0959272    0.0011249   0.1817319
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0968752    0.0603272   0.1320017
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0505406    0.0311626   0.0695311
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1097530    0.0736043   0.1444912
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1488526    0.0772381   0.2149093
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0729144   -0.4058737   0.3886452
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.0176786   -0.0433640   0.0751500
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0899186   -0.3950005   0.1484430
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1454939   -0.0740905   0.3201869
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.1837271   -0.7918258   0.2179988
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1211339   -0.0865052   0.2890917
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1986469    0.1376094   0.2553643
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0454142    0.0026267   0.0863661
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1015749   -0.1282667   0.2845951
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.2530309    0.0749875   0.3968050
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.4022661    0.1597114   0.5748058
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0316179   -0.0412913   0.0994221
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1308579   -0.9410292   0.6108209
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0653061   -0.1963765   0.2697510
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1538708    0.0313816   0.2608702
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1118898   -0.0339152   0.2371330
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0806531   -0.0341852   0.1827395
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0853741    0.0112307   0.1539579
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.1191275    0.0425649   0.1895677
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                 0.1198025   -0.0066455   0.2303669
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1697592    0.1464621   0.1924205
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0246156   -0.1524833   0.1745003
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2093006    0.0841239   0.3173688
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2614026    0.1313290   0.3719992
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0805207    0.0468073   0.1130417
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0288956    0.0082578   0.0491040
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1007493    0.0637969   0.1362431
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1146079    0.0081065   0.2096741
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1452461    0.1071896   0.1816805
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0684533    0.0451103   0.0912256
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2276150    0.1849175   0.2680759
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1604187    0.0840522   0.2304181
