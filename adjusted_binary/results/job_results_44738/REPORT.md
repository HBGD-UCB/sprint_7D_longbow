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

unadjusted

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
![](/tmp/5995a345-f56d-4bab-8e22-ae71dbb142f3/b9deb9f4-4574-41dc-8e44-3bdf6a1f2698/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5995a345-f56d-4bab-8e22-ae71dbb142f3/b9deb9f4-4574-41dc-8e44-3bdf6a1f2698/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5995a345-f56d-4bab-8e22-ae71dbb142f3/b9deb9f4-4574-41dc-8e44-3bdf6a1f2698/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5995a345-f56d-4bab-8e22-ae71dbb142f3/b9deb9f4-4574-41dc-8e44-3bdf6a1f2698/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1921182   0.1378168   0.2464197
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.3269231   0.1991749   0.4546713
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.3282828   0.2627343   0.3938313
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.5555556   0.3928886   0.7182225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1666667   0.1161524   0.2171810
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.2857143   0.0920799   0.4793487
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0539568   0.0273533   0.0805604
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                0.2777778   0.0705104   0.4850451
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1423358   0.1008949   0.1837766
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.2500000   0.0599037   0.4400963
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.4359756   0.3822375   0.4897137
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.5750000   0.4215958   0.7284042
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.4837758   0.4305130   0.5370386
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight             NA                0.7058824   0.5974511   0.8143136
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.4139344   0.3520518   0.4758171
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.4812030   0.3961750   0.5662310
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3157895   0.2300351   0.4015438
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4791667   0.3400311   0.6183022
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3259259   0.2466710   0.4051808
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.3552632   0.2474084   0.4631179
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1458333   0.1157069   0.1759597
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2830189   0.2129496   0.3530881
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1157168   0.0896438   0.1417897
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.2342857   0.1714909   0.2970805
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1930671   0.1768587   0.2092756
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.3375000   0.2338606   0.4411394
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3653040   0.3436931   0.3869148
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.4517766   0.3822648   0.5212885
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1034834   0.0977371   0.1092297
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.1461159   0.1289254   0.1633064
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1528497   0.1169107   0.1887888
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.2857143   0.1590799   0.4123487
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1799811   0.1696327   0.1903295
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2481390   0.2237898   0.2724882
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2971842   0.2797081   0.3146603
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4606742   0.4008757   0.5204726
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1544352   0.1444120   0.1644585
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.2055783   0.1937814   0.2173752
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2396417   0.2040888   0.2751946
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.4119718   0.3453747   0.4785689
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.3111111   0.2599139   0.3623083
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.2857143   0.1358365   0.4355921
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3353659   0.2842068   0.3865249
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight             NA                0.3666667   0.2445754   0.4887580
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2024793   0.1517821   0.2531766
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.1755725   0.1103346   0.2408104
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1555556   0.0933779   0.2177332
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.1573034   0.0972584   0.2173484
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1127820   0.0588893   0.1666746
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.1000000   0.0295481   0.1704519
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0473485   0.0292197   0.0654773
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0709677   0.0305152   0.1114203
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0823063   0.0710031   0.0936095
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.1645570   0.0827776   0.2463363
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1254276   0.1099237   0.1409315
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.1875000   0.1298211   0.2451789
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0384190   0.0346409   0.0421971
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0307798   0.0219258   0.0396337
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0949652   0.0867442   0.1031862
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.0690691   0.0533436   0.0847945
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0999228   0.0883756   0.1114701
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.0888031   0.0541538   0.1234524
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0786026   0.0716459   0.0855593
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.0704618   0.0628234   0.0781002
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0286041   0.0167154   0.0404928
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.0237154   0.0031489   0.0442819
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1451613   0.0944289   0.1958937
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.3061224   0.1768026   0.4354423
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.2187500   0.1601468   0.2773532
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.5000000   0.3363103   0.6636897
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1256039   0.0803586   0.1708491
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.2857143   0.0920744   0.4793542
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1275720   0.0855451   0.1695989
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.3125000   0.0849434   0.5400566
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2424242   0.1961249   0.2887236
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.4418605   0.2932290   0.5904919
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2743363   0.2267819   0.3218907
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight             NA                0.4927536   0.3746452   0.6108620
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2933884   0.2359461   0.3508308
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.3984962   0.3151793   0.4818132
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2251462   0.1847029   0.2655895
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4494382   0.3368058   0.5620706
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3162393   0.2317455   0.4007331
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.3809524   0.2607024   0.5012023
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1284797   0.0981059   0.1588534
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2635135   0.1924814   0.3345456
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0983900   0.0736827   0.1230972
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.2397661   0.1757314   0.3038008
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1551992   0.1390533   0.1713451
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.2923077   0.1817109   0.4029045
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3220248   0.3007679   0.3432817
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.3934426   0.3226471   0.4642381
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0858221   0.0801214   0.0915228
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.1473988   0.1287213   0.1660764
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1436620   0.1071303   0.1801937
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.3043478   0.1712127   0.4374829
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1072706   0.0987213   0.1158198
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.1920949   0.1703841   0.2138056
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2492038   0.2322856   0.2661221
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4409449   0.3798747   0.5020151
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1280429   0.1172357   0.1388502
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.2251214   0.2102472   0.2399955
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2225951   0.1876783   0.2575119
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.3951890   0.3304880   0.4598900


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2196078   0.1686968   0.2705188
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3632479   0.3014950   0.4250007
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1774892   0.1281103   0.2268680
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0675676   0.0389248   0.0962103
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1496599   0.1088126   0.1905072
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5208845   0.4722913   0.5694778
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3501094   0.2551408   0.4450780
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3364929   0.2725858   0.4004000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1979652   0.1818822   0.2140482
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3733967   0.3527283   0.3940651
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090528   0.1035698   0.1145358
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1678161   0.1326576   0.2029745
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1926507   0.1830653   0.2022360
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3122625   0.2953787   0.3291463
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1746644   0.1668151   0.1825137
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2812234   0.2509377   0.3115092
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3402062   0.2930034   0.3874090
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1559020   0.0942472   0.2175568
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1083744   0.0655070   0.1512418
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0850702   0.0737905   0.0963499
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1310881   0.1160272   0.1461490
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0374397   0.0339555   0.0409239
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0905692   0.0832362   0.0979023
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0989127   0.0879520   0.1098733
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0754098   0.0700851   0.0807345
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0275067   0.0175352   0.0374781
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1787234   0.1296354   0.2278114
6-24 months                   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2631579   0.2058743   0.3204415
6-24 months                   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1403509   0.0951649   0.1855368
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3112745   0.2662918   0.3562572
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2714617   0.2180647   0.3248587
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3388889   0.2695483   0.4082295
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1596597   0.1435945   0.1757248
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3284314   0.3080465   0.3488162
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0938174   0.0882819   0.0993530
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1620948   0.1259787   0.1982108
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1243054   0.1161571   0.1324538
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2668113   0.2503255   0.2832971
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1656290   0.1564175   0.1748406
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2649789   0.2355568   0.2944011


### Parameter: RR


agecat                        studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.7016765   1.0505847    2.7562775
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    1.6923077   1.1873114    2.4120929
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    1.7142857   0.8159445    3.6016855
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    5.1481481   2.1049440   12.5910374
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    1.7564103   0.7780636    3.9649420
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    1.3188811   0.9830418    1.7694541
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.4591105   1.2078419    1.7626508
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.1625102   0.9223087    1.4652686
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.5173611   1.3894527    1.6570444
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.0900120   0.7387599    1.6082709
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.9407008   1.4057971    2.6791345
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    2.0246482   1.4265293    2.8735479
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.7480966   1.2714763    2.4033807
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.2367143   1.0487655    1.4583453
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.4119741   1.2397293    1.6081501
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.8692494   1.1318019    3.0871952
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.3786944   1.2304812    1.5447601
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.5501302   1.3442463    1.7875471
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3311620   1.2235874    1.4481944
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.7191161   1.3653741    2.1645059
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.9183673   0.5299690    1.5914112
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.0933333   0.7580353    1.5769421
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    0.8671133   0.5539697    1.3572681
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.0112360   0.9600524    1.0651482
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.8866667   0.3784880    2.0771539
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.4988387   0.7542906    2.9783181
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.9993231   1.1938892    3.3481273
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.4948864   1.0730707    2.0825145
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.8011599   0.5911444    1.0857875
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    0.7273092   0.5700775    0.9279065
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.8887167   0.5916077    1.3350358
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    0.8964305   0.7824840    1.0269699
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    0.8290909   0.3078642    2.2327760
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    2.1088435   1.2188008    3.6488500
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    2.2857143   1.4972894    3.4892986
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    2.2747253   1.0558401    4.9007187
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    2.4495968   1.1015172    5.4475085
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    1.8226744   1.2379933    2.6834895
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.7961664   1.3362290    2.4144168
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.3582548   1.0199583    1.8087564
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.9962060   1.7989541    2.2150863
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.2046332   0.7966202    1.8216225
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    2.0510135   1.4330348    2.9354879
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    2.4368952   1.6890015    3.5159580
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.8834359   1.2721372    2.7884814
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.2217775   1.0086799    1.4798950
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.7174928   1.4885411    1.9816595
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    2.1184996   1.2772685    3.5137800
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.7907510   1.5594608    2.0563448
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.7694146   1.5165018    2.0645067
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.7581709   1.5854128    1.9497538
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.7753717   1.3988318    2.2532693


### Parameter: PAR


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0274896   -0.0015942    0.0565734
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0349650    0.0060023    0.0639277
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0108225   -0.0078997    0.0295447
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0136107   -0.0004867    0.0277082
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0073241   -0.0062705    0.0209186
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0151113   -0.0031027    0.0333254
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0371087    0.0153752    0.0588422
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0237314   -0.0135105    0.0609732
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0343199    0.0249722    0.0436677
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0105670   -0.0376795    0.0588135
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0317504    0.0135749    0.0499259
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0275193    0.0113386    0.0437000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0048981    0.0011875    0.0086087
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0080927    0.0011957    0.0149897
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0055694    0.0031881    0.0079507
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0149664   -0.0003792    0.0303119
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0126696    0.0077095    0.0176296
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0150784    0.0090796    0.0210771
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0202292    0.0142628    0.0261955
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0415818    0.0228105    0.0603530
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0025397   -0.0183979    0.0133186
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0048403   -0.0156613    0.0253420
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0094498   -0.0384961    0.0195964
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0003464   -0.0011984    0.0018913
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0044076   -0.0350056    0.0261905
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0053602   -0.0047272    0.0154476
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0027638   -0.0000743    0.0056020
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0056605    0.0001559    0.0111651
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0009793   -0.0022142    0.0002556
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0043960   -0.0074184   -0.0013735
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0010102   -0.0043302    0.0023098
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0031928   -0.0071269    0.0007414
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0010975   -0.0066259    0.0044309
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0335621    0.0034095    0.0637147
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0444079    0.0138856    0.0749302
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0147470   -0.0045335    0.0340276
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0114241   -0.0038686    0.0267169
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0229913    0.0039133    0.0420693
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0369382    0.0139835    0.0598929
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0372782    0.0010262    0.0735303
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0463155    0.0325865    0.0600445
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0226496   -0.0289872    0.0742863
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0324960    0.0133524    0.0516395
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0331169    0.0164620    0.0497718
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0044605    0.0006711    0.0082499
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0064066   -0.0002832    0.0130964
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0079953    0.0054295    0.0105612
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0184328    0.0018199    0.0350457
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0170349    0.0122744    0.0217954
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0176075    0.0114330    0.0237819
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0375861    0.0307162    0.0444560
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0423838    0.0236995    0.0610681


### Parameter: PAF


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1251759   -0.0159216    0.2466769
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0962567    0.0128440    0.1726211
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0609756   -0.0497501    0.1600222
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.2014388   -0.0163355    0.3725498
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0489383   -0.0456563    0.1349754
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0334999   -0.0078422    0.0731460
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0712417    0.0280051    0.1125551
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0542226   -0.0349319    0.1356968
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0980263    0.0937383    0.1022941
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0314032   -0.1231306    0.1646744
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.1787910    0.0727850    0.2726776
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1921256    0.0751259    0.2943245
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0247422    0.0058743    0.0432521
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0216732    0.0030201    0.0399772
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0510708    0.0291001    0.0725443
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0891831   -0.0056639    0.1750848
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0657644    0.0397789    0.0910467
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0482874    0.0289063    0.0672817
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1158174    0.0803945    0.1498758
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1478603    0.0764825    0.2137215
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0082305   -0.0609536    0.0418726
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0142276   -0.0479154    0.0726855
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0489555   -0.2105619    0.0910770
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0022222   -0.0080611    0.0124007
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0406699   -0.3645685    0.2063471
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.1016940   -0.1085391    0.2720567
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0324890   -0.0012181    0.0650613
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0431808    0.0004724    0.0840643
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0261559   -0.0595895    0.0062228
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0485370   -0.0822560   -0.0158687
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0102128   -0.0443262    0.0227863
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0423391   -0.0955839    0.0083181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0398981   -0.2604410    0.1420558
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1877880    0.0066272    0.3359107
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.1687500    0.0470250    0.2749269
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.1050725   -0.0399371    0.2298618
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0821902   -0.0324343    0.1840887
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0866238    0.0123906    0.1552773
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.1186677    0.0421923    0.1890370
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.1127366   -0.0037896    0.2157357
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1706153    0.1495365    0.1911716
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0668348   -0.0986501    0.2073935
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.2018688    0.0781932    0.3089513
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.2518262    0.1219976    0.3624572
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0279375    0.0040189    0.0512817
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0195067   -0.0010738    0.0396640
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0852222    0.0578483    0.1118008
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.1137161    0.0073974    0.2086469
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1370405    0.0987212    0.1737307
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0659922    0.0426798    0.0887369
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.2269294    0.1838997    0.2676903
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1599517    0.0839216    0.2296716
