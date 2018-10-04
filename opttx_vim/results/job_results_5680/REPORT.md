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
```




# Results Detail

## Results Plots
![](/tmp/f9c0b843-0926-4fbd-8832-c3f93f922ca4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f9c0b843-0926-4fbd-8832-c3f93f922ca4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.5103140   0.4386885   0.5819395
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5260391   0.3697959   0.6822824
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5674859   0.5123028   0.6226690
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5260660   0.4690040   0.5831281
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5320173   0.4484512   0.6155834
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3133284   0.2739316   0.3527253
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3448121   0.3050015   0.3846227
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2780063   0.2591150   0.2968977
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4935598   0.4705426   0.5165770
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2971444   0.2887577   0.3055311
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7051383   0.6732642   0.7370123
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.2590248   0.2471413   0.2709083
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6538964   0.6358117   0.6719811
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2125594   0.2046736   0.2204452
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4001434   0.3778222   0.4224646
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1716480   0.1175590   0.2257370
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2147438   0.0928831   0.3366045
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.3092507   0.2577245   0.3607770
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.5266971   0.4552016   0.5981927
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1658820   0.1398759   0.1918880
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1739990   0.1102708   0.2377271
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1170192   0.0896419   0.1443966
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1463048   0.1166513   0.1759583
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1322724   0.1179928   0.1465521
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2304732   0.2105131   0.2504333
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1402725   0.1338927   0.1466522
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2232140   0.1937740   0.2526541
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0597453   0.0532246   0.0662661
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1693876   0.1551010   0.1836741
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0938866   0.0884520   0.0993212
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0852607   0.0730922   0.0974292
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2993190   0.0713737   0.5272642
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.3745725   0.3096117   0.4395332
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4745665   0.4179974   0.5311355
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5379961   0.4350838   0.6409083
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2779550   0.2340846   0.3218254
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2417029   0.2017471   0.2816587
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2247348   0.2040291   0.2454404
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3799180   0.3543867   0.4054493
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2374846   0.2278731   0.2470962
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.2289802   0.2168105   0.2411498
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6381332   0.6171401   0.6591263
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1984240   0.1889648   0.2078833
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3527990   0.3310054   0.3745927


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5232318   0.4558421   0.5906214
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5218827   0.4533364   0.5904290
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5918635   0.5408864   0.6428406
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5636284   0.5051431   0.6221137
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5547950   0.4823947   0.6271953
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3758797   0.3381579   0.4136016
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3942670   0.3567675   0.4317665
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2987929   0.2797146   0.3178713
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.5126512   0.4903344   0.5349679
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3259539   0.3177532   0.3341545
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7142488   0.6835524   0.7449453
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             NA                0.2849018   0.2734401   0.2963634
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6647605   0.6473636   0.6821574
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2540181   0.2461911   0.2618451
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4285839   0.4080994   0.4490684
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2062543   0.1515335   0.2609750
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             NA                0.2091253   0.1532563   0.2649943
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3426327   0.2933701   0.3918953
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6011844   0.5402747   0.6620940
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.1942921   0.1699021   0.2186821
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2353287   0.1734446   0.2972128
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1587583   0.1302494   0.1872673
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1904187   0.1603129   0.2205245
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1357469   0.1214694   0.1500245
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2548462   0.2348359   0.2748565
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1709151   0.1643252   0.1775050
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2378633   0.2086283   0.2670983
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             NA                0.0786940   0.0717857   0.0856022
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.1886765   0.1742586   0.2030944
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1314780   0.1258407   0.1371154
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0978413   0.0851010   0.1105815
6-24 months                  ki0047075b-MAL-ED          INDIA                          observed             NA                0.4181998   0.3397810   0.4966185
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3789233   0.3167730   0.4410737
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5011297   0.4563200   0.5459394
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5489491   0.4537391   0.6441590
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3000581   0.2580063   0.3421099
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2624443   0.2240531   0.3008355
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2265620   0.2059734   0.2471506
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3881371   0.3630436   0.4132307
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2466508   0.2371679   0.2561337
6-24 months                  ki1135781-COHORTS          INDIA                          observed             NA                0.2439862   0.2322512   0.2557213
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6436007   0.6230772   0.6641242
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2166021   0.2071769   0.2260273
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3676583   0.3467883   0.3885282


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.9753116   0.9305036   1.0222772
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              observed          1.0079644   0.7689405   1.3212884
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              observed          0.9588122   0.9269293   0.9917917
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9333561   0.8851702   0.9841651
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.9589439   0.8881207   1.0354150
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.8335870   0.7809370   0.8897865
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8745650   0.8281395   0.9235931
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9304315   0.9105726   0.9507234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              observed          0.9627595   0.9511001   0.9745619
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9116149   0.9020856   0.9212448
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9872446   0.9785251   0.9960417
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              observed          0.9091723   0.8916211   0.9270689
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9836571   0.9774388   0.9899150
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8367885   0.8223844   0.8514448
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9336408   0.9117009   0.9561088
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.8322157   0.7184242   0.9640305
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              observed          1.0268666   0.6134355   1.7189337
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              observed          0.9025722   0.8408749   0.9687963
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              observed          0.8760992   0.8200459   0.9359838
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8537761   0.7812976   0.9329783
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.7393870   0.5864681   0.9321789
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.7370904   0.6406597   0.8480357
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.7683320   0.6842494   0.8627469
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9744047   0.9527042   0.9965995
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              observed          0.9043620   0.8769521   0.9326286
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8207143   0.8030847   0.8387309
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9384132   0.9005739   0.9778422
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              observed          0.7592113   0.7134621   0.8078939
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8977671   0.8699850   0.9264363
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.7140857   0.6899197   0.7390981
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8714189   0.8077809   0.9400703
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              observed          0.7157320   0.3458599   1.4811552
6-24 months                  ki1000108-IRC              INDIA                          optimal              observed          0.9885178   0.9373151   1.0425176
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9469934   0.8718458   1.0286182
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.9800473   0.9124924   1.0526035
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9263374   0.8688747   0.9876003
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.9209684   0.8594366   0.9869057
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9919350   0.9782673   1.0057937
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              observed          0.9788242   0.9644399   0.9934231
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9628376   0.9521459   0.9736493
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              observed          0.9384962   0.9192982   0.9580951
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9915049   0.9857467   0.9972967
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9160764   0.8984496   0.9340490
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9595841   0.9396632   0.9799273
