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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

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
![](/tmp/91eb08ce-065f-4c64-a5a6-5eacedca04bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91eb08ce-065f-4c64-a5a6-5eacedca04bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/91eb08ce-065f-4c64-a5a6-5eacedca04bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91eb08ce-065f-4c64-a5a6-5eacedca04bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0717949   0.0354843   0.1081055
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.1315789   0.0238708   0.2392871
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0545455   0.0300112   0.0790798
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.1162791   0.0203379   0.2122203
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0936425   0.0625061   0.1247789
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.2176595   0.1192487   0.3160702
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0662567   0.0349013   0.0976122
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.0702733   0.0265592   0.1139873
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0464190   0.0312573   0.0615807
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2159084   0.1602111   0.2716057
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0512821   0.0112025   0.0913616
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.2096774   0.1080650   0.3112898
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0122951   0.0025102   0.0220800
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0592105   0.0216604   0.0967607
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0197184   0.0081970   0.0312399
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.0871737   0.0447544   0.1295930
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0251451   0.0183956   0.0318946
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0666667   0.0102001   0.1231333
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0458000   0.0361055   0.0554945
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.0823914   0.0453842   0.1193986
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0130147   0.0105480   0.0154813
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0520844   0.0399929   0.0641760
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0656430   0.0582387   0.0730473
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2197570   0.1951222   0.2443918
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0418020   0.0339739   0.0496301
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1363942   0.0978456   0.1749428
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0329656   0.0290208   0.0369104
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.1025941   0.0942049   0.1109834
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0520695   0.0431456   0.0609934
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1582109   0.1348022   0.1816196
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0615385   0.0277358   0.0953411
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.1351351   0.0247416   0.2455286
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1269959   0.0903061   0.1636856
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.2349657   0.1084637   0.3614677
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1403829   0.1030492   0.1777166
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.2532445   0.1490807   0.3574083
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0627899   0.0320182   0.0935617
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.0918281   0.0430763   0.1405799
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0144033   0.0038022   0.0250044
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0463576   0.0127951   0.0799201
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0223577   0.0158242   0.0288912
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0972222   0.0287741   0.1656703
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0202617   0.0133186   0.0272049
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.0689432   0.0314437   0.1064427
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0497238   0.0179867   0.0814608
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.1458333   0.0457694   0.2458973
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0899471   0.0490666   0.1308275
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.2285714   0.0891452   0.3679977
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0666667   0.0397174   0.0936159
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.1395349   0.0358287   0.2432411
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0939387   0.0627927   0.1250847
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.2319199   0.1321603   0.3316796
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0964092   0.0586844   0.1341339
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.1279612   0.0703945   0.1855280
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1205382   0.1054250   0.1356515
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2936906   0.2346973   0.3526838
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0686275   0.0194099   0.1178450
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.2241379   0.1164801   0.3317957
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0442842   0.0254115   0.0631569
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.1303901   0.0760965   0.1846837
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0371961   0.0210555   0.0533368
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.1376582   0.0856827   0.1896336
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0470948   0.0368234   0.0573662
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0943396   0.0156226   0.1730566
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0803333   0.0673518   0.0933149
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.1713405   0.1242083   0.2184727
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0359272   0.0274894   0.0443650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0702026   0.0443831   0.0960221
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0288462   0.0157042   0.0419881
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.0781250   0.0123282   0.1439218
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0642605   0.0543764   0.0741446
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1697658   0.1266298   0.2129018
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0833397   0.0702134   0.0964661
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1805008   0.1557827   0.2052189


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
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    2.324366   1.3266941    4.072287
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.060621   0.4849233    2.319784
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    4.651299   3.6453206    5.934890
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    4.088710   1.6300733   10.255703
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    4.815790   1.7406916   13.323341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    4.420926   2.0668068    9.456416
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.651282   1.0903832    6.446630
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.798939   1.0954685    2.954154
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    4.001982   2.9662067    5.399443
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    3.347760   2.8571312    3.922641
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    3.262864   2.3265052    4.576084
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    3.112157   2.7052465    3.580272
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    3.038455   2.4232238    3.809887
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    2.195946   0.8205345    5.876875
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    1.850184   1.0049788    3.406222
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.803956   1.1055868    2.943465
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.462465   0.7100917    3.012010
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    3.218543   1.1462663    9.037184
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    4.348485   2.0290167    9.319451
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    3.402634   1.7926424    6.458578
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    2.932870   1.1489677    7.486484
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    2.541177   1.1876006    5.437500
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    2.093023   0.8981320    4.877620
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    2.468843   1.4346200    4.248642
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.327272   0.7317522    2.407443
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    2.436493   1.8456619    3.216461
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    3.266010   1.3776955    7.742509
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    2.944393   1.6222100    5.344221
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    3.700874   2.0834109    6.574060
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.003185   0.8456118    4.745383
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    2.132869   1.5509824    2.933064
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.954024   1.2636530    3.021565
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    2.708333   1.0395682    7.055881
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    2.641838   1.9651043    3.551623
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    2.165843   1.7583347    2.667794


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0097502   -0.0090039   0.0285043
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0071167   -0.0044739   0.0187074
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0240045    0.0055986   0.0424105
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0080138   -0.0117882   0.0278158
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0361769    0.0229785   0.0493754
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0548632    0.0154422   0.0942842
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0111424    0.0017973   0.0204875
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0158980    0.0053911   0.0264049
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0038957   -0.0000288   0.0078203
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0049269    0.0032903   0.0065635
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0305985    0.0252350   0.0359620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0087760    0.0047639   0.0127882
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0242356    0.0210005   0.0274707
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0271272    0.0203191   0.0339353
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0117374   -0.0070003   0.0304751
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0126689   -0.0034334   0.0287713
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0192181    0.0002510   0.0381852
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0109806   -0.0097514   0.0317125
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0075747   -0.0008352   0.0159847
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0026423    0.0001425   0.0051420
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0038485    0.0003322   0.0073649
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0201452   -0.0024368   0.0427273
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0216601   -0.0019841   0.0453042
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0084004   -0.0041764   0.0209772
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0237083    0.0053167   0.0421000
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0204387   -0.0048736   0.0457509
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0359471    0.0200936   0.0518007
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0563725    0.0119163   0.1008288
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0189437    0.0049054   0.0329821
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0230621    0.0098685   0.0362557
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014834   -0.0010399   0.0040067
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0072619    0.0020680   0.0124558
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0068849    0.0021614   0.0116084
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0045841   -0.0017486   0.0109167
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0080750    0.0038195   0.0123305
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0244433    0.0169317   0.0319549


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1195682   -0.1368486   0.3181500
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1154150   -0.0878688   0.2807123
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2040387    0.0398693   0.3401373
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1079005   -0.2010815   0.3373959
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4379991    0.3403933   0.5211616
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5168691    0.0857738   0.7446852
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4754098    0.0305299   0.7161389
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4463674    0.1394464   0.6438233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0783920   -0.0026851   0.1529132
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2746080    0.1877803   0.3521537
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3179345    0.2658953   0.3662847
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1735150    0.0950432   0.2451822
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4236907    0.3702736   0.4725766
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3425297    0.2587995   0.4168012
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1601810   -0.1261692   0.3737212
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0907097   -0.0301639   0.1974006
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1204136   -0.0045602   0.2298398
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1488475   -0.1776713   0.3848363
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3446502   -0.1005996   0.6097733
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1056911    0.0043545   0.1967136
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1596216    0.0092660   0.2871589
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2883287   -0.0792229   0.5307031
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1940741   -0.0353623   0.3726673
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1119048   -0.0675180   0.2611711
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2015210    0.0375250   0.3375737
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1749170   -0.0686021   0.3629416
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2297156    0.1334643   0.3152758
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4509804    0.0304471   0.6891118
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2996102    0.0637823   0.4760344
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3827215    0.1580332   0.5474492
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0305363   -0.0224425   0.0807699
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0829025    0.0227994   0.1393090
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1608162    0.0478290   0.2603960
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1371237   -0.0651570   0.3009900
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1116329    0.0524905   0.1670838
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2267822    0.1522544   0.2947581
