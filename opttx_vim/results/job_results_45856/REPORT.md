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

agecat                       studyid                    country                        birthwt                       ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ---------------------------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0       92     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1       96     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0        9     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1       15     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      176     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1       29     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0        3     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0       87     205
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1       97     205
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       11     205
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birth weight                         1       10     205
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      151     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1       47     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0        5     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        3     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      114     264
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1      148     264
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Low birth weight                         0        0     264
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Low birth weight                         1        2     264
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      140     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1      130     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0        3     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        7     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0       27     116
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       88     116
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        1     116
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0     116
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0       27     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1      255     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0        1     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1       13     296
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight               0      134     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight               1      176     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birth weight                         0       12     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birth weight                         1       36     358
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               0       31     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               1      155     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Low birth weight                         0        2     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Low birth weight                         1       61     249
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0        5      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1       11      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        0      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0      16
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      439    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1      524    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0       30    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1       88    1081
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0       64     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       73     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0       17     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1       28     182
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      350     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1      172     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0       46     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1       66     634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      353     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1      186     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0       43     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1       71     653
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1525    2211
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      637    2211
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       26    2211
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1       23    2211
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0      906    1928
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      894    1928
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birth weight                         0       33    1928
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birth weight                         1       95    1928
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        5       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Low birth weight                         0        2       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Low birth weight                         1        0       7
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0       74     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1       31     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         Low birth weight                         0        1     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         Low birth weight                         1        4     110
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        0       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        1       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           Normal or high birthweight               0       14      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           Normal or high birthweight               1        2      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           Low birth weight                         0        0      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           Low birth weight                         1        1      17
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    14067   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1     2675   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     7988   12551
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     3390   12551
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0      472   12551
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1      701   12551
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      232     833
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1      555     833
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0        6     833
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1       40     833
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     3828    5963
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               1     1337    5963
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birth weight                         0      434    5963
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birth weight                         1      364    5963
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0      914    2830
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1     1735    2830
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0       35    2830
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1      146    2830
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    11656   18388
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     3163   18388
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     2060   18388
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1     1509   18388
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     1671    3199
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1     1150    3199
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      158    3199
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1      220    3199
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      155     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1       33     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0       13     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1       11     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      185     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1       20     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0        3     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      146     205
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1       38     205
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       16     205
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birth weight                         1        5     205
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      187     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1       11     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0        6     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        2     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      173     264
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1       89     264
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Low birth weight                         0        0     264
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Low birth weight                         1        2     264
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      197     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1       73     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0        4     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        6     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0       87     116
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       28     116
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        1     116
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0     116
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      177     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1      101     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0        3     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1       11     292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight               0      214     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight               1       96     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birth weight                         0       21     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birth weight                         1       27     358
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               0       87     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       99     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight                         0       12     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight                         1       51     249
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0        6      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1       10      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        0      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0      16
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      801    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1      161    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0       69    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1       49    1080
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      113     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       24     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0       26     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1       19     182
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      461     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1       61     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0       72     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1       40     634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      460     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1       79     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0       69     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1       45     653
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1876    2211
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      286    2211
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       35    2211
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1       14    2211
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1310    1822
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      395    1822
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birth weight                         0       48    1822
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birth weight                         1       69    1822
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        5       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Low birth weight                         0        2       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Low birth weight                         1        0       7
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0       96     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1        9     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         Low birth weight                         0        4     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         Low birth weight                         1        1     110
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        1       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        0       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           Normal or high birthweight               0       15      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           Normal or high birthweight               1        1      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           Low birth weight                         0        1      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           Low birth weight                         1        0      17
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    15212   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1     1528   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     9765   12537
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     1600   12537
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0      629   12537
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1      543   12537
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      597     814
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1      171     814
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0       24     814
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1       22     814
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     4755    5847
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               1      305    5847
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birth weight                         0      631    5847
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birth weight                         1      156    5847
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2199    2830
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1      450    2830
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0       97    2830
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1       84    2830
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    13422   18386
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     1396   18386
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     2549   18386
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1     1019   18386
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     2576    3194
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1      241    3194
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      305    3194
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1       72    3194
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0       82     157
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1       63     157
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0        8     157
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1        4     157
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      157     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1        9     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0        2     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0       78     153
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1       59     153
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       11     153
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birth weight                         1        5     153
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      148     190
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1       36     190
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0        5     190
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        1     190
6-24 months                  ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0       89     148
6-24 months                  ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1       59     148
6-24 months                  ki0047075b-MAL-ED          PERU                           Low birth weight                         0        0     148
6-24 months                  ki0047075b-MAL-ED          PERU                           Low birth weight                         1        0     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      101     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1       57     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        1     159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0       20      80
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       60      80
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        0      80
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0      80
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0       27     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1      155     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0        1     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1        2     185
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight               0      134     235
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight               1       80     235
6-24 months                  ki1000108-IRC              INDIA                          Low birth weight                         0       12     235
6-24 months                  ki1000108-IRC              INDIA                          Low birth weight                         1        9     235
6-24 months                  ki1000109-EE               PAKISTAN                       Normal or high birthweight               0       29      97
6-24 months                  ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       56      97
6-24 months                  ki1000109-EE               PAKISTAN                       Low birth weight                         0        2      97
6-24 months                  ki1000109-EE               PAKISTAN                       Low birth weight                         1       10      97
6-24 months                  ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0        2       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        1       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        0       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0       3
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      376     803
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1      363     803
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0       24     803
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1       40     803
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0       42     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       49     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0        6     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1        9     106
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      289     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1      111     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0       31     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1       26     457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      334     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1      107     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0       39     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1       26     506
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1211    1589
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      351    1589
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       18    1589
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        9    1589
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0      859    1450
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      528    1450
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birth weight                         0       28    1450
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birth weight                         1       35    1450
6-24 months                  ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0       74     100
6-24 months                  ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1       22     100
6-24 months                  ki1114097-CMIN             BRAZIL                         Low birth weight                         0        1     100
6-24 months                  ki1114097-CMIN             BRAZIL                         Low birth weight                         1        3     100
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        0       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        1       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
6-24 months                  ki1114097-CMIN             PERU                           Normal or high birthweight               0       11      13
6-24 months                  ki1114097-CMIN             PERU                           Normal or high birthweight               1        1      13
6-24 months                  ki1114097-CMIN             PERU                           Low birth weight                         0        0      13
6-24 months                  ki1114097-CMIN             PERU                           Low birth weight                         1        1      13
6-24 months                  ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
6-24 months                  ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
6-24 months                  ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
6-24 months                  ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
6-24 months                  ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    13802   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1     1149   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     5724    7932
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     1793    7932
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0      254    7932
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1      161    7932
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      153     569
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1      393     569
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0        2     569
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1       21     569
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     3503    5147
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight               1     1040    5147
6-24 months                  ki1135781-COHORTS          INDIA                          Low birth weight                         0      388    5147
6-24 months                  ki1135781-COHORTS          INDIA                          Low birth weight                         1      216    5147
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0      729    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1     1285    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0       17    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1       62    2093
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0     7089   10454
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     1768   10454
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     1098   10454
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1      499   10454
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     1664    2884
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1      910    2884
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      158    2884
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1      152    2884


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8b0d6c19-abaa-4e62-9d9e-c5ada3d88967/94ee209f-38b5-451b-81aa-0826679f967c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8b0d6c19-abaa-4e62-9d9e-c5ada3d88967/94ee209f-38b5-451b-81aa-0826679f967c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.5110930   0.4393951   0.5827909
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.6072205   0.4052999   0.8091412
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5687755   0.5135261   0.6240250
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5426039   0.4771546   0.6080531
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5297541   0.4454893   0.6140188
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3385761   0.2908394   0.3863127
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3429942   0.3028581   0.3831302
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2948093   0.2754681   0.3141504
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4942575   0.4711628   0.5173522
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2971982   0.2887968   0.3055995
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7051649   0.6732841   0.7370458
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.2579899   0.2460589   0.2699209
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6537236   0.6356222   0.6718250
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2120402   0.2041152   0.2199652
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4038015   0.3813059   0.4262972
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1713060   0.1175466   0.2250653
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3531074   0.2847223   0.4214925
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.3068559   0.2552696   0.3584421
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.5317888   0.4598249   0.6037527
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1658644   0.1393959   0.1923329
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1742066   0.1101298   0.2382834
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1170917   0.0892035   0.1449799
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1454981   0.1156143   0.1753819
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1321526   0.1177935   0.1465118
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2328929   0.2130031   0.2527827
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1400638   0.1336213   0.1465064
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2225349   0.1930918   0.2519779
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0597172   0.0531718   0.0662626
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1692565   0.1549590   0.1835539
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0939078   0.0884387   0.0993768
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0852316   0.0729860   0.0974772
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3003467   0.0589096   0.5417838
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.4392868   0.3726116   0.5059620
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4933984   0.4452232   0.5415737
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6082967   0.5071494   0.7094440
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2772477   0.2332944   0.3212010
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2415956   0.2015676   0.2816236
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2246883   0.2038123   0.2455644
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3800370   0.3544820   0.4055920
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2398564   0.2280930   0.2516197
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.2283432   0.2161341   0.2405523
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6348971   0.6047512   0.6650429
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2036494   0.1935209   0.2137779
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3426005   0.3202486   0.3649525


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5235849   0.4561953   0.5909746
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5219512   0.4534049   0.5904975
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5921788   0.5412016   0.6431559
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5661425   0.5076572   0.6246278
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5549451   0.4825447   0.6273454
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2985075   0.2794291   0.3175858
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.5129668   0.4906500   0.5352836
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3259501   0.3177495   0.3341508
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7142857   0.6835892   0.7449822
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             NA                0.2852591   0.2737975   0.2967207
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6646643   0.6472674   0.6820612
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2540787   0.2462528   0.2619047
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4282588   0.4077731   0.4487445
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2075472   0.1528264   0.2622679
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             NA                0.2097561   0.1538871   0.2656251
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3435754   0.2943128   0.3928380
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.1944444   0.1700545   0.2188344
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2362637   0.1743796   0.2981478
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1356852   0.1214076   0.1499628
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2546652   0.2346549   0.2746755
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1709340   0.1643442   0.1775239
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2371007   0.2078658   0.2663357
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             NA                0.0788439   0.0719356   0.0857521
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.1886926   0.1742747   0.2031105
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1313499   0.1257126   0.1369873
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0979962   0.0852560   0.1107365
6-24 months                  ki0047075b-MAL-ED          INDIA                          observed             NA                0.4183007   0.3398819   0.4967194
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3787234   0.3165730   0.4408738
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5018680   0.4570583   0.5466777
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5471698   0.4519599   0.6423797
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2265576   0.2059690   0.2471462
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3882759   0.3631823   0.4133694
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2463439   0.2368610   0.2558268
6-24 months                  ki1135781-COHORTS          INDIA                          observed             NA                0.2440256   0.2322906   0.2557607
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6435738   0.6230503   0.6640973
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2168548   0.2074258   0.2262838
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3682386   0.3473666   0.3891105


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0244416   0.9773196   1.0738357
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.8595744   0.6255127   1.1812201
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             optimal           1.0411467   1.0066564   1.0768188
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0433808   1.0118933   1.0758482
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0475523   0.9680784   1.1335505
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1087444   1.0195064   1.2057934
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1474486   1.0848695   1.2136374
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0125444   1.0011568   1.0240615
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0378534   1.0252323   1.0506298
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0967433   1.0852390   1.1083696
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0129343   1.0039280   1.0220213
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             optimal           1.1056987   1.0839590   1.1278743
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0167360   1.0102831   1.0232301
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1982576   1.1773809   1.2195044
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0605676   1.0347432   1.0870364
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.2115582   1.0457333   1.4036785
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.5940291   0.4957016   0.7118610
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             optimal           1.1196639   1.0413149   1.2039079
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             optimal           1.1327987   1.0596367   1.2110120
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1723097   1.0707356   1.2835195
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.3562274   1.0736451   1.7131850
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.3605232   1.1776173   1.5718377
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.3051222   1.1592671   1.4693284
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0267310   1.0036803   1.0503110
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0934863   1.0592222   1.1288588
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.2204009   1.1931096   1.2483163
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0654544   1.0222847   1.1104471
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             optimal           1.3202874   1.2402053   1.4055405
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1148323   1.0801461   1.1506323
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.3987120   1.3508239   1.4482979
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1497645   1.0649484   1.2413357
6-24 months                  ki0047075b-MAL-ED          INDIA                          observed             optimal           1.3927261   0.6461214   3.0020459
6-24 months                  ki1000108-IRC              INDIA                          observed             optimal           0.8621325   0.7918719   0.9386271
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0171658   0.9944856   1.0403633
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.8995114   0.8162024   0.9913237
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0812758   1.0136232   1.1534437
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0879580   1.0147187   1.1664834
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0083193   0.9942771   1.0225597
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             optimal           1.0216790   1.0063787   1.0372119
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0270477   0.9970120   1.0579882
6-24 months                  ki1135781-COHORTS          INDIA                          observed             optimal           1.0686793   1.0464769   1.0913528
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0136664   0.9794697   1.0490570
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0648438   1.0412104   1.0890136
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0748335   1.0470871   1.1033152


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0124919   -0.0115098    0.0364937
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0852693   -0.2775737    0.1070351
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0234033    0.0044465    0.0423600
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0235386    0.0078912    0.0391861
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0251910   -0.0164064    0.0667884
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0368182    0.0087711    0.0648654
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0505740    0.0313975    0.0697504
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0036982    0.0003704    0.0070260
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0187093    0.0127151    0.0247035
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0287519    0.0256094    0.0318945
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0091208    0.0028709    0.0153707
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0272692    0.0221184    0.0324200
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0109407    0.0068041    0.0150774
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0420386    0.0382538    0.0458234
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0244573    0.0145376    0.0343770
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0362412    0.0101316    0.0623508
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1433513   -0.1901552   -0.0965474
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.0367196    0.0144540    0.0589851
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0706208    0.0363398    0.1049019
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0285800    0.0133608    0.0437993
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0620572    0.0197466    0.1043677
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0422143    0.0242200    0.0602086
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0443947    0.0262994    0.0624900
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0035326    0.0005258    0.0065393
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0217723    0.0141985    0.0293461
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0308702    0.0275625    0.0341779
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0145659    0.0052907    0.0238411
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0191267    0.0150906    0.0231628
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0194361    0.0139730    0.0248992
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0374422    0.0339632    0.0409211
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0127647    0.0058558    0.0196735
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1179540   -0.1121546    0.3480626
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.0605634   -0.0951680   -0.0259588
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0084696   -0.0024830    0.0194222
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0611269   -0.1173349   -0.0049189
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0225335    0.0045651    0.0405019
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0212503    0.0043195    0.0381810
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0018692   -0.0012746    0.0050131
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0082388    0.0025118    0.0139659
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0064876   -0.0006313    0.0136064
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.0156825    0.0108686    0.0204963
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0086768   -0.0131057    0.0304593
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0132054    0.0086219    0.0177889
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0256380    0.0167365    0.0345396


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0238585   -0.0232068    0.0687588
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1633664   -0.5986886    0.1534177
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0395206    0.0066123    0.0713387
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0415772    0.0117535    0.0705008
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0453937   -0.0329742    0.1178161
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0980788    0.0191331    0.1706706
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1285012    0.0782301    0.1760307
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0123890    0.0011555    0.0234961
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0364728    0.0246113    0.0481900
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0882096    0.0785440    0.0977739
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0127691    0.0039127    0.0215468
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0955944    0.0774559    0.1133764
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0164605    0.0101785    0.0227027
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1654549    0.1506572    0.1799948
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0571086    0.0335767    0.0800676
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1746166    0.0437332    0.2875862
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.6834191   -1.0173426   -0.4047687
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.1068748    0.0396757    0.1693716
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.1172306    0.0562804    0.1742443
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1469831    0.0660626    0.2208922
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2626605    0.0685935    0.4162919
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2649886    0.1508277    0.3638020
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2337882    0.1373860    0.3194170
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0260350    0.0036668    0.0479010
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0854938    0.0559111    0.1141496
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1805971    0.1618541    0.1989210
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0614333    0.0217989    0.0994618
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.2425891    0.1936819    0.2885299
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1030041    0.0741993    0.1309126
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2850566    0.2597110    0.3095343
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1302567    0.0609874    0.1944161
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2819837   -0.5476968    0.6668938
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.1599145   -0.2628305   -0.0653858
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0168761   -0.0055450    0.0387973
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.1117147   -0.2251864   -0.0087523
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0751665    0.0134401    0.1330309
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0808468    0.0145052    0.1427225
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0082506   -0.0057558    0.0220620
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0212190    0.0063383    0.0358769
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0263354   -0.0029969    0.0548098
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.0642656    0.0444127    0.0837060
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0134822   -0.0209606    0.0467630
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0608951    0.0395794    0.0817379
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0696234    0.0449696    0.0936407
