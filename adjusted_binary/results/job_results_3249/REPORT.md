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

**Outcome Variable:** ever_stunted

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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               0       62     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               1      310     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Low birth weight                         0        4     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Low birth weight                         1      122     498
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    23311   36774
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     6326   36774
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     4119   36774
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1     3018   36774
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     3339    6393
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1     2299    6393
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      316    6393
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1      439    6393
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               0      174     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               1      198     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight                         0       24     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight                         1      102     498
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    26844   36772
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     2792   36772
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     5098   36772
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1     2038   36772
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     5152    6388
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1      482    6388
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      610    6388
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1      144    6388
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
6-24 months                  ki1000109-EE               PAKISTAN                       Normal or high birthweight               0       58     194
6-24 months                  ki1000109-EE               PAKISTAN                       Normal or high birthweight               1      112     194
6-24 months                  ki1000109-EE               PAKISTAN                       Low birth weight                         0        4     194
6-24 months                  ki1000109-EE               PAKISTAN                       Low birth weight                         1       20     194
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    14177   20903
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     3536   20903
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     2195   20903
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1      995   20903
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     3325    5762
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1     1818    5762
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      316    5762
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1      303    5762


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e6135280-763e-4f11-840d-cf53697dd383/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e6135280-763e-4f11-840d-cf53697dd383/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e6135280-763e-4f11-840d-cf53697dd383/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e6135280-763e-4f11-840d-cf53697dd383/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5106383   0.4390128   0.5822638
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.6250000   0.4308556   0.8191444
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.5271739   0.4548589   0.5994890
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4761905   0.2620606   0.6903204
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5678308   0.5126462   0.6230155
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birth weight             NA                0.7493753   0.6276145   0.8711361
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.5418218   0.4771246   0.6065191
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.7065459   0.6191286   0.7939633
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5319923   0.4486023   0.6153823
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.6362281   0.4993434   0.7731128
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3380692   0.2981416   0.3779968
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.7175881   0.6436934   0.7914827
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3453755   0.3054636   0.3852874
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.6533575   0.5712655   0.7354494
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2946943   0.2754754   0.3139132
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.5949650   0.4945580   0.6953720
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.4940958   0.4710642   0.5171273
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.6861997   0.6265095   0.7458900
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2970967   0.2887107   0.3054828
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.5976653   0.5716788   0.6236518
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7052097   0.6733356   0.7370837
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.8695652   0.7721834   0.9669470
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2589262   0.2470393   0.2708132
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4437288   0.4124525   0.4750052
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6538522   0.6357671   0.6719373
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.8334728   0.7836227   0.8833230
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.2125210   0.2046383   0.2204037
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.4258250   0.4091297   0.4425203
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.4073931   0.3857728   0.4290135
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.5897391   0.5263460   0.6531321
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1716405   0.1179740   0.2253070
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.4985069   0.3100652   0.6869487
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.2065217   0.1478875   0.2651560
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.2380952   0.0554846   0.4207058
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3094166   0.2578884   0.3609448
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birth weight             NA                0.5643953   0.4243876   0.7044031
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.5312154   0.4600190   0.6024119
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.8345770   0.7450435   0.9241105
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1661876   0.1401899   0.1921854
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.3758728   0.2893046   0.4624410
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1790753   0.1154049   0.2427458
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.4858952   0.3494565   0.6223340
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1213590   0.0939916   0.1487263
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.5824967   0.5180803   0.6469131
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1479572   0.1184130   0.1775015
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.4954990   0.4230458   0.5679522
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1320983   0.1178186   0.1463780
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.3652317   0.2606182   0.4698452
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.2302796   0.2103174   0.2502419
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.5136195   0.4474572   0.5797817
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1402541   0.1338752   0.1466331
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.4603882   0.4337325   0.4870439
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.2227386   0.1933001   0.2521770
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.5537222   0.4159197   0.6915247
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0598569   0.0533386   0.0663751
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.1915017   0.1662699   0.2167336
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1694399   0.1551529   0.1837268
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4929716   0.4314322   0.5545111
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0938846   0.0884494   0.0993198
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.2879365   0.2728630   0.3030100
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0853050   0.0731423   0.0974677
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1881522   0.1357693   0.2405352
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.4306569   0.3474682   0.5138457
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.3125000   0.0846372   0.5403628
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3738318   0.3088711   0.4387925
6-24 months                  ki1000108-IRC              INDIA                          Low birth weight             NA                0.4285714   0.2164634   0.6406794
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4896618   0.4390451   0.5402786
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.6427217   0.5236786   0.7617648
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5384615   0.4355493   0.6413738
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.6000000   0.3509042   0.8490958
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2773302   0.2334666   0.3211938
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.4569525   0.3326675   0.5812375
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.2419039   0.2019995   0.2818083
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.4416298   0.3355627   0.5476969
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2247119   0.2040063   0.2454176
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.3333333   0.1554658   0.5112009
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3800502   0.3545184   0.4055821
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.5606658   0.4510062   0.6703254
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2380770   0.2284525   0.2477016
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.4034686   0.3615582   0.4453790
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2289466   0.2167752   0.2411179
6-24 months                  ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.3445761   0.3099042   0.3792479
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6380843   0.6170945   0.6590741
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.7859426   0.6997970   0.8720882
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1987224   0.1892612   0.2081835
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.3143231   0.2912327   0.3374135
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3530845   0.3312924   0.3748766
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.4958083   0.4285351   0.5630816


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5235849   0.4561953   0.5909746
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5219512   0.4534049   0.5904975
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5921788   0.5412016   0.6431559
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5661425   0.5076572   0.6246278
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5549451   0.4825447   0.6273454
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2985075   0.2794291   0.3175858
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5129668   0.4906500   0.5352836
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3259501   0.3177495   0.3341508
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7142857   0.6835892   0.7449822
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2852591   0.2737975   0.2967207
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6646643   0.6472674   0.6820612
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2540926   0.2462655   0.2619196
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4282809   0.4077964   0.4487655
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2075472   0.1528264   0.2622679
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2097561   0.1538871   0.2656251
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3435754   0.2943128   0.3928380
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1944444   0.1700545   0.2188344
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2362637   0.1743796   0.2981478
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1356852   0.1214076   0.1499628
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2546652   0.2346549   0.2746755
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1709340   0.1643442   0.1775239
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2371007   0.2078658   0.2663357
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0788439   0.0719356   0.0857521
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1886926   0.1742747   0.2031105
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1313499   0.1257126   0.1369873
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0979962   0.0852560   0.1107365
6-24 months                  ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4183007   0.3398819   0.4967194
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3787234   0.3165730   0.4408738
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5018680   0.4570583   0.5466777
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5471698   0.4519599   0.6423797
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2265576   0.2059690   0.2471462
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3882759   0.3631823   0.4133694
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2463439   0.2368610   0.2558268
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2440256   0.2322906   0.2557607
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6435738   0.6230503   0.6640973
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2167631   0.2073380   0.2261883
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3681014   0.3472314   0.3889713


### Parameter: RR


agecat                       studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.2239583   0.8704529   1.721028
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.9032892   0.5644841   1.445446
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.3197158   1.0925337   1.594138
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.3040189   1.1048993   1.539023
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.1959348   0.9182504   1.557592
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    2.1226070   1.8135446   2.484339
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    1.8917308   1.5955278   2.242923
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.0189226   1.6849523   2.419088
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.3887991   1.2588707   1.532137
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    2.0116856   1.9102720   2.118483
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.2330591   1.0927880   1.391336
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.7137267   1.5765448   1.862845
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.2747113   1.1936469   1.361281
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    2.0036845   1.9056873   2.106721
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.4475921   1.2831922   1.633055
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    2.9043662   1.7947721   4.699952
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    1.1528822   0.5088703   2.611937
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.8240630   1.3533101   2.458569
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.5710706   1.3259863   1.861454
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    2.2617373   1.6868798   3.032496
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    2.7133563   1.7246112   4.268963
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    4.7997827   3.7376519   6.163740
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    3.3489340   2.6185021   4.283120
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.7648480   2.0358424   3.754900
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    2.2304166   1.9107647   2.603543
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    3.2825293   3.0498182   3.532997
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    2.4859737   1.8756105   3.294962
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    3.1993282   2.6981845   3.793551
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    2.9094195   2.5031965   3.381565
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    3.0669205   2.8413213   3.310432
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    2.2056404   1.6126271   3.016723
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.7256356   0.3412906   1.542811
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.1464286   0.6784891   1.937096
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.3125828   1.0345230   1.665380
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.1142857   0.7055157   1.759894
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.6476838   1.2044362   2.254052
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    1.8256415   1.3654355   2.440955
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.4833808   0.8631421   2.549312
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.4752414   1.2006317   1.812660
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.6946977   1.5162226   1.894181
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.5050502   1.3441288   1.685237
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.2317222   1.0985232   1.381072
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.5817198   1.4565523   1.717644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.4042201   1.2111557   1.628060


### Parameter: PAR


agecat                       studyid                    country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0129466   -0.0109848   0.0368780
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0052227   -0.0284721   0.0180267
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0243479    0.0053648   0.0433311
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0243206    0.0090487   0.0395926
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0229528   -0.0172857   0.0631912
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0373251    0.0185592   0.0560911
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0481927    0.0294037   0.0669816
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0038131    0.0005152   0.0071111
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0188711    0.0128577   0.0248844
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0288534    0.0257169   0.0319898
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0090761    0.0028693   0.0152828
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0263329    0.0212425   0.0314232
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0108121    0.0066947   0.0149295
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0415716    0.0378123   0.0453308
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0208878    0.0128296   0.0289460
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0359066    0.0099593   0.0618540
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0032344   -0.0164566   0.0229253
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0341588    0.0122235   0.0560942
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0711942    0.0381815   0.1042069
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0282568    0.0131904   0.0433232
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0571884    0.0154367   0.0989401
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0379470    0.0204687   0.0554253
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0419356    0.0242050   0.0596662
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0035869    0.0005922   0.0065816
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0243856    0.0171485   0.0316226
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0306799    0.0274842   0.0338757
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0143622    0.0051147   0.0236096
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0189870    0.0149681   0.0230059
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0192527    0.0137935   0.0247119
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0374654    0.0340183   0.0409125
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0126912    0.0058359   0.0195466
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0123563   -0.0383665   0.0136539
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0048916   -0.0150324   0.0248157
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0122062    0.0009263   0.0234860
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0087083   -0.0296510   0.0470676
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0224509    0.0047923   0.0401096
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0209419    0.0040959   0.0377880
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0018457   -0.0012744   0.0049657
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0082256    0.0025991   0.0138522
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0082669    0.0056748   0.0108590
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0150791    0.0103182   0.0198400
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0054895    0.0017810   0.0091981
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0180408    0.0141272   0.0219543
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0150169    0.0076234   0.0224103


### Parameter: PAF


agecat                       studyid                    country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0247269   -0.0222006   0.0694999
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0100061   -0.0555705   0.0335915
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0411159    0.0081542   0.0729821
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0429585    0.0139142   0.0711474
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0413604   -0.0342699   0.1114603
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0994291    0.0483204   0.1477931
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1224506    0.0733365   0.1689616
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0127740    0.0016694   0.0237551
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0367881    0.0249062   0.0485252
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0885208    0.0788829   0.0980579
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0127065    0.0039108   0.0214245
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0923120    0.0744163   0.1098618
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0162670    0.0100158   0.0224787
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1636079    0.1489660   0.1779980
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0487712    0.0297446   0.0674248
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1730047    0.0431532   0.2852344
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0154196   -0.0830298   0.1049198
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0994217    0.0333417   0.1609845
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.1181824    0.0594442   0.1732523
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1453207    0.0658464   0.2180337
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.2420532    0.0523574   0.3937763
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.2382021    0.1291450   0.3336020
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.2208381    0.1272342   0.3044031
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0264356    0.0042298   0.0481462
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0957555    0.0673171   0.1233268
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.1794840    0.1614599   0.1971208
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0605742    0.0210661   0.0984877
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.2408176    0.1922653   0.2864515
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.1020322    0.0732676   0.1299040
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.2852332    0.2602055   0.3094142
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1295072    0.0609943   0.1930211
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0295392   -0.0937618   0.0309124
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0129161   -0.0411287   0.0641554
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0243215    0.0005613   0.0475167
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0159151   -0.0568281   0.0836513
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0748911    0.0142493   0.1318023
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0796739    0.0137617   0.1411810
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0081466   -0.0057126   0.0218148
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0211851    0.0065671   0.0355880
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0335583    0.0230049   0.0439978
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0617931    0.0421805   0.0810040
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0085298    0.0027341   0.0142918
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0832280    0.0653606   0.1007538
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0407955    0.0204796   0.0606900
