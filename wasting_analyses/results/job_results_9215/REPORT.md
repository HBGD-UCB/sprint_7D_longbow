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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        birthwt                       pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------------------------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      185     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        8     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      0       45     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      1        4     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      205     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        2     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      0       10     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      1        0     217
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      181     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       14     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      0       33     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      1        5     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      207     231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        3     231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      0       21     231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      1        0     231
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      262     281
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        1     281
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      0       18     281
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      1        0     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      254     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      0       17     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      1        0     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      123     129
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     129
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0        6     129
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        0     129
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      312     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       18     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      0       38     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      1        5     373
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            0      307     408
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            1       32     408
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                      0       53     408
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                      1       16     408
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      454     754
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       34     754
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      0      244     754
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      1       22     754
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       14      18
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        2      18
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      0        2      18
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      1        0      18
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            0      986    1356
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            1       48    1356
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      0      258    1356
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      1       64    1356
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            0      111     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            1        6     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      0       49     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      1       13     179
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      482     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1        6     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      0      143     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      1        9     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            0      548     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            1       11     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      0      156     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      1       15     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     2016    2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       52    2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0       70    2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        5    2143
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1705    1972
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1       82    1972
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      0      169    1972
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      1       16    1972
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      0        1       1
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      1        0       1
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            0      107     115
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            1        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      0        8     115
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      1        0     115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      1        0       2
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            0       13      15
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            1        1      15
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                      0        1      15
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                      1        0      15
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2       2
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      0        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      1        0       2
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            0    16422   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            1      159   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      0        0   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      1        0   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0     8040    9308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1      107    9308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      0     1101    9308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      1       60    9308
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            0      706     795
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            1       17     795
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      0       69     795
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      1        3     795
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            0     3998    5268
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            1      281    5268
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                      0      763    5268
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                      1      226    5268
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            0     2409    2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            1      106    2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      0      219    2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      1       34    2768
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            0    19868   31328
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            1      678   31328
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      0     9668   31328
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      1     1114   31328
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            0     6211    8864
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            1      342    8864
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      0     1951    8864
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      1      360    8864
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      187     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        6     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      0       48     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      1        1     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      206     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      0       10     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      183     232
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       12     232
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                      0       32     232
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                      1        5     232
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      205     230
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        4     230
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                      0       20     230
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                      1        1     230
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      263     281
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        0     281
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                      0       18     281
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                      1        0     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      253     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      0       16     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      1        0     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      123     129
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     129
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0        6     129
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        0     129
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      276     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       40     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      0       32     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      1       10     358
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight            0      287     401
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight            1       47     401
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                      0       50     401
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                      1       17     401
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      448     732
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       30     732
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                      0      230     732
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                      1       24     732
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       14      17
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        1      17
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                      0        2      17
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                      1        0      17
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      479     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1        7     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      0      144     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      1        7     637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     1924    2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       44    2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0       65    2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        7    2040
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1550    1742
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1       32    1742
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                      0      150    1742
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                      1       10    1742
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                      0        1       1
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                      1        0       1
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight            0       13      15
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight            1        1      15
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                      0        1      15
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                      1        0      15
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2       2
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birth weight                      0        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birth weight                      1        0       2
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      172     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        9     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      0       41     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      1        7     229
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      185     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        2     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      0       10     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      1        0     197
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      172     224
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       17     224
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      0       27     224
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      1        8     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      203     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        1     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      0       20     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      1        0     224
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      230     248
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        2     248
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      0       16     248
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      1        0     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      237     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      0       16     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      1        0     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      115     120
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     120
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0        5     120
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        0     120
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      308     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      0       37     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      1        6     373
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            0      307     408
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            1       32     408
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                      0       53     408
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                      1       16     408
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      430     736
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       48     736
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      0      220     736
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      1       38     736
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       10      13
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        1      13
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      0        2      13
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      1        0      13
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            0      798    1195
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            1      109    1195
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      0      210    1195
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      1       78    1195
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            0       95     160
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            1        7     160
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      0       45     160
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      1       13     160
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      437     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1       20     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      0      126     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      1       18     601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            0      513     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            1       20     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      0      142     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      1       22     697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     1558    1688
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       77    1688
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0       48    1688
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        5    1688
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1539    1838
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1      135    1838
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      0      138    1838
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      1       26    1838
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      0        1       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      1        0       1
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            0      105     113
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            1        0     113
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      0        8     113
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      1        0     113
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            0        1       1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            1        0       1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      0        0       1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      1        0       1
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            0       11      12
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            1        0      12
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                      0        1      12
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                      1        0      12
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2       2
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      0        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      1        0       2
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            0     7095    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            1        2    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      0        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      1        0    7097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0     1803    2219
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1       67    2219
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      0      321    2219
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      1       28    2219
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            0      606     688
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            1       18     688
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      0       59     688
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      1        5     688
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            0     2213    2599
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            1      153    2599
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      0      198    2599
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      1       35    2599
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            0     5737    8480
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            1      522    8480
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      0     1829    8480
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      1      392    8480


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
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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
```




# Results Detail

## Results Plots
![](/tmp/6ffa3b97-9c38-4c42-9f90-e5fb8091a3b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6ffa3b97-9c38-4c42-9f90-e5fb8091a3b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6ffa3b97-9c38-4c42-9f90-e5fb8091a3b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6ffa3b97-9c38-4c42-9f90-e5fb8091a3b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0717949   0.0354843   0.1081055
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.1315789   0.0238708   0.2392871
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0545455   0.0300112   0.0790798
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.1162791   0.0203379   0.2122203
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0943953   0.0632333   0.1255573
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.2318841   0.1321817   0.3315864
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0696721   0.0376848   0.1016594
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.0827068   0.0358337   0.1295799
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0464217   0.0316426   0.0612007
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.1987578   0.1361692   0.2613463
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0512821   0.0112025   0.0913616
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.2096774   0.1080650   0.3112898
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0122951   0.0025102   0.0220800
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0592105   0.0216604   0.0967607
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0196780   0.0081563   0.0311996
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.0877193   0.0452906   0.1301480
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0251451   0.0183956   0.0318946
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0666667   0.0102001   0.1231333
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0458870   0.0361832   0.0555907
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.0864865   0.0459726   0.1270004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0131337   0.0106614   0.0156059
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0516796   0.0389448   0.0644144
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0656695   0.0582470   0.0730921
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2285137   0.2023432   0.2546841
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0421471   0.0342931   0.0500011
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1343874   0.0923527   0.1764220
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0329991   0.0290466   0.0369517
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.1033203   0.0946134   0.1120273
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0521898   0.0432434   0.0611363
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1557767   0.1320148   0.1795387
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0615385   0.0277358   0.0953411
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.1351351   0.0247416   0.2455286
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1265823   0.0898702   0.1632944
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.2380952   0.1091051   0.3670854
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1407186   0.1033798   0.1780574
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.2537313   0.1494065   0.3580561
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0627615   0.0319711   0.0935519
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.0944882   0.0435462   0.1454302
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0144033   0.0038022   0.0250044
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0463576   0.0127951   0.0799201
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0223577   0.0158242   0.0288912
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0972222   0.0287741   0.1656703
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0202276   0.0132884   0.0271667
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.0625000   0.0249821   0.1000179
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0497238   0.0179867   0.0814608
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.1458333   0.0457694   0.2458973
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0899471   0.0490666   0.1308275
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.2285714   0.0891452   0.3679977
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0666667   0.0397174   0.0936159
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.1395349   0.0358287   0.2432411
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0943953   0.0632333   0.1255573
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.2318841   0.1321817   0.3315864
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1004184   0.0622620   0.1385748
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.1472868   0.0860479   0.2085257
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1201764   0.1047972   0.1355556
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2708333   0.2080777   0.3335889
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0686275   0.0194099   0.1178450
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.2241379   0.1164801   0.3317957
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0437637   0.0249925   0.0625348
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.1250000   0.0709386   0.1790614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0375235   0.0213783   0.0536686
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.1341463   0.0819489   0.1863438
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0470948   0.0368234   0.0573662
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0943396   0.0156226   0.1730566
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0806452   0.0675979   0.0936924
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.1585366   0.1026218   0.2144514
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0358289   0.0274029   0.0442548
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0802292   0.0517230   0.1087354
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0288462   0.0157042   0.0419881
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.0781250   0.0123282   0.1439218
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0646661   0.0547545   0.0745778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1502146   0.1043303   0.1960989
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0833999   0.0702254   0.0965744
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1764971   0.1515752   0.2014189


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0815451   0.0463297   0.1167604
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1176471   0.0863457   0.1489484
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0825959   0.0584656   0.1067261
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1061453   0.0608949   0.1513956
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0265982   0.0197841   0.0334124
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0496957   0.0401018   0.0592897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0179416   0.0152448   0.0206383
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0962415   0.0882767   0.1042062
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0505780   0.0424131   0.0587430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572012   0.0531104   0.0612920
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0791968   0.0700617   0.0883318
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0732759   0.0396713   0.1068804
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1596010   0.1237106   0.1954914
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0219780   0.0105837   0.0333723
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0250000   0.0182234   0.0317766
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0241102   0.0169050   0.0313155
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0698690   0.0367791   0.1029589
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1116071   0.0702792   0.1529351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1176471   0.0863457   0.1489484
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1168478   0.0839821   0.1497135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1564854   0.1406022   0.1723685
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1250000   0.0735946   0.1764054
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0485782   0.0383194   0.0588370
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0875952   0.0746673   0.1005231
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0428121   0.0343875   0.0512367
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0334302   0.0199885   0.0468720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0723355   0.0623746   0.0822964
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1077830   0.0961106   0.1194554


### Parameter: RR


agecat        studyid                    country                        intervention_level           baseline_level                estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ---------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    1.832707   0.7001753    4.797105
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    2.131783   0.8329568    5.455864
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    2.456522   1.4285577    4.224190
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.187085   0.5724295    2.461739
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    4.281573   3.2895960    5.572681
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    4.088710   1.6300733   10.255703
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    4.815790   1.7406916   13.323341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    4.457735   2.0858664    9.526690
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.651282   1.0903832    6.446630
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.884772   1.1273212    3.151158
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    3.934893   2.8857756    5.365416
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    3.479751   2.9625578    4.087233
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    3.188530   2.2154834    4.588942
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    3.131003   2.7162058    3.609144
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    2.984809   2.3726053    3.754981
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    2.195946   0.8205345    5.876875
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    1.880952   1.0174225    3.477397
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.803112   1.1053540    2.941332
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.505512   0.7262910    3.120741
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    3.218543   1.1462663    9.037184
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    4.348485   2.0290167    9.319451
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    3.089844   1.5476296    6.168876
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    2.932870   1.1489677    7.486484
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    2.541177   1.1876006    5.437500
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    2.093023   0.8981320    4.877620
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    2.456522   1.4285577    4.224190
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.466731   0.8350898    2.576131
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    2.253632   1.6458764    3.085806
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    3.266010   1.3776955    7.742509
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    2.856250   1.5533187    5.252086
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    3.575000   2.0014007    6.385840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.003185   0.8456118    4.745383
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.965854   1.3336194    2.897814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    2.239234   1.4623519    3.428838
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    2.708333   1.0395682    7.055881
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    2.322926   1.6504874    3.269329
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    2.116274   1.7119090    2.616154


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0097502   -0.0090039   0.0285043
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0071167   -0.0044739   0.0187074
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0232518    0.0048901   0.0416135
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0045984   -0.0154311   0.0246280
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0361742    0.0224388   0.0499096
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0548632    0.0154422   0.0942842
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0111424    0.0017973   0.0204875
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0159384    0.0054294   0.0264475
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0038088   -0.0001343   0.0077518
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0048079    0.0031692   0.0064465
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0305719    0.0251839   0.0359599
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0084309    0.0043989   0.0124630
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0242021    0.0209683   0.0274359
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0270069    0.0202029   0.0338109
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0117374   -0.0070003   0.0304751
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0130825   -0.0030857   0.0292508
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0188824   -0.0000866   0.0378515
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0110090   -0.0097036   0.0317216
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0075747   -0.0008352   0.0159847
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0026423    0.0001425   0.0051420
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0038827    0.0003316   0.0074337
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0201452   -0.0024368   0.0427273
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0216601   -0.0019841   0.0453042
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0084004   -0.0041764   0.0209772
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0232518    0.0048901   0.0416135
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0164294   -0.0089668   0.0418256
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0363089    0.0195399   0.0530780
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0563725    0.0119163   0.1008288
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0194643    0.0054746   0.0334539
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0227348    0.0095233   0.0359463
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014834   -0.0010399   0.0040067
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0069501    0.0017272   0.0121729
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0069832    0.0022599   0.0117065
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0045841   -0.0017486   0.0109167
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0076694    0.0033574   0.0119815
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0243831    0.0168491   0.0319172


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1195682   -0.1368486   0.3181500
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1154150   -0.0878688   0.2807123
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1976401    0.0339694   0.3335808
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0619145   -0.2495058   0.2957181
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4379663    0.3374210   0.5232540
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5168691    0.0857738   0.7446852
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4754098    0.0305299   0.7161389
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4475024    0.1403579   0.6449062
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0766420   -0.0048422   0.1515184
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2679749    0.1809428   0.3457591
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3176584    0.2653143   0.3662732
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1666913    0.0877005   0.2388427
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4231046    0.3696260   0.4720463
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3410104    0.2571892   0.4153729
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1601810   -0.1261692   0.3737212
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0936709   -0.0277841   0.2007733
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1183103   -0.0066428   0.2277530
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1492329   -0.1770783   0.3850837
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3446502   -0.1005996   0.6097733
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1056911    0.0043545   0.1967136
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1610379    0.0092193   0.2895931
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2883287   -0.0792229   0.5307031
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1940741   -0.0353623   0.3726673
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1119048   -0.0675180   0.2611711
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1976401    0.0339694   0.3335808
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1406052   -0.1030963   0.3304670
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2320278    0.1297206   0.3223081
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4509804    0.0304471   0.6891118
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3078429    0.0732728   0.4830394
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3772894    0.1526397   0.5423806
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0305363   -0.0224425   0.0807699
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0793428    0.0187629   0.1361827
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1631129    0.0501993   0.2626031
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1371237   -0.0651570   0.3009900
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1060255    0.0460463   0.1622335
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2262241    0.1513516   0.2944909
