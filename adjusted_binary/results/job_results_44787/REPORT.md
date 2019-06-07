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

agecat        studyid                    country                        birthwt                       pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ---------------------------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      185    242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        8    242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      0       45    242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      1        4    242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      205    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        2    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      0       10    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      1        0    217
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      181    233
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       14    233
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      0       33    233
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      1        5    233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      207    231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        3    231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      0       21    231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      1        0    231
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      262    281
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        1    281
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      0       18    281
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      1        0    281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      254    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      0       17    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      1        0    273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      123    129
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0    129
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0        6    129
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        0    129
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      312    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       18    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      0       38    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      1        5    373
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            0      307    408
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            1       32    408
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                      0       53    408
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                      1       16    408
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      227    377
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       17    377
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      0      122    377
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      1       11    377
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       14     18
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        2     18
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      0        2     18
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      1        0     18
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            0      325    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            1       13    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      0       70    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      1       19    427
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            0      111    179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            1        6    179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      0       49    179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      1       13    179
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      482    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1        6    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      0      143    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      1        9    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            0      548    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            1       11    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      0      156    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      1       15    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     2016   2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       52   2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0       70   2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        5   2143
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1705   1972
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1       82   1972
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      0      169   1972
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      1       16   1972
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        0      1
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0      1
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      0        1      1
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      1        0      1
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            0      107    115
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            1        0    115
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      0        8    115
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      1        0    115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            0        1      2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            1        0      2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      0        1      2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      1        0      2
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            0       13     15
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            1        1     15
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                      0        1     15
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                      1        0     15
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2      2
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0      2
0-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      0        0      2
0-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      1        0      2
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            0     7877   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            1       95   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      0        0   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      1        0   7972
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0     8040   9308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1      107   9308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      0     1101   9308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      1       60   9308
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            0      329    385
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            1       11    385
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      0       42    385
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      1        3    385
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            0     3998   5268
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            1      281   5268
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                      0      763   5268
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                      1      226   5268
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            0     2409   2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            1      106   2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      0      219   2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      1       34   2768
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            0     4741   7749
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            1      162   7749
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      0     2557   7749
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      1      289   7749
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            0      831   1158
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            1       44   1158
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      0      234   1158
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      1       49   1158
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      187    242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        6    242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      0       48    242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      1        1    242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      206    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        1    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      0       10    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      1        0    217
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      183    232
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       12    232
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                      0       32    232
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                      1        5    232
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      205    230
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        4    230
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                      0       20    230
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                      1        1    230
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      263    281
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        0    281
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                      0       18    281
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                      1        0    281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      253    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      0       16    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      1        0    271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      123    129
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0    129
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0        6    129
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        0    129
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      276    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       40    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      0       32    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      1       10    358
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight            0      287    401
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight            1       47    401
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                      0       50    401
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                      1       17    401
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      224    366
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       15    366
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                      0      115    366
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                      1       12    366
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       14     17
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        1     17
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                      0        2     17
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                      1        0     17
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            0       48     68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            1        2     68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      0       16     68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      1        2     68
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      479    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1        7    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      0      144    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      1        7    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            0      200    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            1        3    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      0       45    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      1        2    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     1924   2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       44   2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0       65   2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        7   2040
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1550   1742
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1       32   1742
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                      0      150   1742
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                      1       10   1742
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        0      1
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0      1
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                      0        1      1
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                      1        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            0        1      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            1        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      0        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      1        0      1
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight            0       13     15
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight            1        1     15
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                      0        1     15
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                      1        0     15
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2      2
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0      2
0-6 months    ki1114097-CONTENT          PERU                           Low birth weight                      0        0      2
0-6 months    ki1114097-CONTENT          PERU                           Low birth weight                      1        0      2
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight            0     6030   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight            1      627   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                      0        0   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                      1        0   6657
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0      538    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1       10    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      0       58    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      1        4    610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            0      754    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            1       37    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      0       47    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      1       15    853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            0       19     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      0        4     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      1        1     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      185    242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        8    242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      0       45    242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      1        4    242
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      205    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        2    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      0       10    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      1        0    217
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      181    233
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       14    233
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      0       33    233
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      1        5    233
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      207    231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        3    231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      0       21    231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      1        0    231
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      262    281
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        1    281
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      0       18    281
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      1        0    281
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      254    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      0       17    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      1        0    273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      123    129
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0    129
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0        6    129
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        0    129
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      312    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       18    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      0       38    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      1        5    373
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            0      307    408
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            1       32    408
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                      0       53    408
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                      1       16    408
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      227    377
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       17    377
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      0      122    377
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      1       11    377
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       14     18
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        2     18
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      0        2     18
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      1        0     18
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            0      325    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            1       13    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      0       70    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      1       19    427
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            0      111    179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            1        6    179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      0       49    179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      1       13    179
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      482    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1        6    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      0      143    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      1        9    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            0      548    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            1       11    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      0      156    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      1       15    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     2016   2143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       52   2143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0       70   2143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        5   2143
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1705   1972
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1       82   1972
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      0      169   1972
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      1       16   1972
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        0      1
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0      1
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      0        1      1
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      1        0      1
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            0      107    115
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            1        0    115
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      0        8    115
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      1        0    115
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            0        1      2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            1        0      2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      0        1      2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      1        0      2
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            0       13     15
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            1        1     15
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                      0        1     15
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                      1        0     15
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2      2
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0      2
6-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      0        0      2
6-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      1        0      2
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            0     7877   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            1       95   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      0        0   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      1        0   7972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0     8040   9308
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1      107   9308
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      0     1101   9308
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      1       60   9308
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            0      329    385
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            1       11    385
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      0       42    385
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      1        3    385
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            0     3998   5268
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            1      281   5268
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                      0      763   5268
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                      1      226   5268
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            0     2409   2768
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            1      106   2768
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      0      219   2768
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      1       34   2768
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            0     4741   7749
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            1      162   7749
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      0     2557   7749
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      1      289   7749
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            0      831   1158
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            1       44   1158
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      0      234   1158
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      1       49   1158


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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/5005b878-af79-48b6-b891-f35f87cfb070/ec82cc89-b2cb-42c5-ab08-ea20ca9e6c8d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5005b878-af79-48b6-b891-f35f87cfb070/ec82cc89-b2cb-42c5-ab08-ea20ca9e6c8d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5005b878-af79-48b6-b891-f35f87cfb070/ec82cc89-b2cb-42c5-ab08-ea20ca9e6c8d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5005b878-af79-48b6-b891-f35f87cfb070/ec82cc89-b2cb-42c5-ab08-ea20ca9e6c8d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0384615   0.0136513   0.0632718
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2134831   0.1460534   0.2809129
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0330410   0.0276983   0.0383837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.1015460   0.0894644   0.1136276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0502857   0.0332270   0.0673444
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1731449   0.1291497   0.2171401
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
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0467762   0.0320523   0.0615002
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.2419355   0.1352735   0.3485975
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0717949   0.0354843   0.1081055
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.1315789   0.0238708   0.2392871
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0545455   0.0300112   0.0790798
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.1162791   0.0203379   0.2122203
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0943953   0.0632333   0.1255573
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.2318841   0.1321817   0.3315864
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0696721   0.0376848   0.1016594
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.0827068   0.0358337   0.1295799
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0384615   0.0136513   0.0632718
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2134831   0.1460534   0.2809129
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0512821   0.0112025   0.0913616
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.2096774   0.1080650   0.3112898
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0122951   0.0025102   0.0220800
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0592105   0.0216604   0.0967607
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0196780   0.0081563   0.0311996
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.0877193   0.0452906   0.1301480
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0251451   0.0183956   0.0318946
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0666667   0.0102001   0.1231333
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0458870   0.0361832   0.0555907
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.0864865   0.0459726   0.1270004
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0131337   0.0106614   0.0156059
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0516796   0.0389448   0.0644144
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0656695   0.0582470   0.0730921
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2285137   0.2023432   0.2546841
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0421471   0.0342931   0.0500011
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1343874   0.0923527   0.1764220
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0330410   0.0276983   0.0383837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.1015460   0.0894644   0.1136276
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0502857   0.0332270   0.0673444
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1731449   0.1291497   0.2171401


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0815451   0.0463297   0.1167604
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1176471   0.0863457   0.1489484
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0749415   0.0520077   0.0978752
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1061453   0.0608949   0.1513956
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0265982   0.0197841   0.0334124
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0496957   0.0401018   0.0592897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0179416   0.0152448   0.0206383
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0962415   0.0882767   0.1042062
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0505780   0.0424131   0.0587430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0582011   0.0523916   0.0640105
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0803109   0.0636509   0.0969709
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0732759   0.0396713   0.1068804
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1596010   0.1237106   0.1954914
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0219780   0.0105837   0.0333723
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0250000   0.0182234   0.0317766
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0241102   0.0169050   0.0313155
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0815451   0.0463297   0.1167604
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1176471   0.0863457   0.1489484
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0749415   0.0520077   0.0978752
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1061453   0.0608949   0.1513956
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0265982   0.0197841   0.0334124
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0496957   0.0401018   0.0592897
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0179416   0.0152448   0.0206383
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0962415   0.0882767   0.1042062
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0505780   0.0424131   0.0587430
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0582011   0.0523916   0.0640105
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0803109   0.0636509   0.0969709


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    5.550562   3.5828261    8.599004
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    3.073335   2.5293754    3.734275
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    3.443222   2.2364715    5.301108
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
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    5.172188   3.0089360    8.890695
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    1.832707   0.7001753    4.797105
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    2.131783   0.8329568    5.455864
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    2.456522   1.4285577    4.224190
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.187085   0.5724295    2.461739
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    5.550562   3.5828261    8.599004
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    4.088710   1.6300733   10.255703
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    4.815790   1.7406916   13.323341
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    4.457735   2.0858664    9.526690
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.651282   1.0903832    6.446630
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.884772   1.1273212    3.151158
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    3.934893   2.8857756    5.365416
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    3.479751   2.9625578    4.087233
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    3.188530   2.2154834    4.588942
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    3.073335   2.5293754    3.734275
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    3.443222   2.2364715    5.301108


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0097502   -0.0090039   0.0285043
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0071167   -0.0044739   0.0187074
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0232518    0.0048901   0.0416135
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0045984   -0.0154311   0.0246280
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0364799    0.0265049   0.0464550
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0548632    0.0154422   0.0942842
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0111424    0.0017973   0.0204875
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0159384    0.0054294   0.0264475
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0038088   -0.0001343   0.0077518
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0048079    0.0031692   0.0064465
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0305719    0.0251839   0.0359599
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0084309    0.0043989   0.0124630
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0251601    0.0203687   0.0299515
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0300252    0.0181653   0.0418851
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0117374   -0.0070003   0.0304751
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0130825   -0.0030857   0.0292508
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0188824   -0.0000866   0.0378515
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0110090   -0.0097036   0.0317216
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0075747   -0.0008352   0.0159847
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0026423    0.0001425   0.0051420
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0038827    0.0003316   0.0074337
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0141851    0.0056514   0.0227188
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0097502   -0.0090039   0.0285043
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0071167   -0.0044739   0.0187074
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0232518    0.0048901   0.0416135
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0045984   -0.0154311   0.0246280
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0364799    0.0265049   0.0464550
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0548632    0.0154422   0.0942842
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0111424    0.0017973   0.0204875
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0159384    0.0054294   0.0264475
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0038088   -0.0001343   0.0077518
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0048079    0.0031692   0.0064465
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0305719    0.0251839   0.0359599
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0084309    0.0043989   0.0124630
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0251601    0.0203687   0.0299515
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0300252    0.0181653   0.0418851


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1195682   -0.1368486   0.3181500
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1154150   -0.0878688   0.2807123
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1976401    0.0339694   0.3335808
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0619145   -0.2495058   0.2957181
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4867788    0.2457379   0.6507899
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5168691    0.0857738   0.7446852
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4754098    0.0305299   0.7161389
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4475024    0.1403579   0.6449062
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0766420   -0.0048422   0.1515184
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2679749    0.1809428   0.3457591
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3176584    0.2653143   0.3662732
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1666913    0.0877005   0.2388427
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4322956    0.3566308   0.4990618
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3738617    0.2132158   0.5017070
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1601810   -0.1261692   0.3737212
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0936709   -0.0277841   0.2007733
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1183103   -0.0066428   0.2277530
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1492329   -0.1770783   0.3850837
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3446502   -0.1005996   0.6097733
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1056911    0.0043545   0.1967136
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1610379    0.0092193   0.2895931
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2326899    0.0941985   0.3500068
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1195682   -0.1368486   0.3181500
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1154150   -0.0878688   0.2807123
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1976401    0.0339694   0.3335808
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0619145   -0.2495058   0.2957181
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4867788    0.2457379   0.6507899
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5168691    0.0857738   0.7446852
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4754098    0.0305299   0.7161389
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4475024    0.1403579   0.6449062
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0766420   -0.0048422   0.1515184
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2679749    0.1809428   0.3457591
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3176584    0.2653143   0.3662732
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1666913    0.0877005   0.2388427
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4322956    0.3566308   0.4990618
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3738617    0.2132158   0.5017070
