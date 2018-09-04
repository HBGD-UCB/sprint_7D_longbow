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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/231e2939-698f-468d-bf19-572cc11296a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/231e2939-698f-468d-bf19-572cc11296a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/231e2939-698f-468d-bf19-572cc11296a2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/231e2939-698f-468d-bf19-572cc11296a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5106383   0.4390128   0.5822638
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.6250000   0.4308556   0.8191444
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.5271739   0.4548589   0.5994890
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4761905   0.2620606   0.6903204
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5677419   0.5125187   0.6229652
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birth weight             NA                0.7500000   0.6273308   0.8726692
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.5441329   0.4780701   0.6101958
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.7457627   0.6452888   0.8462366
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5328467   0.4490716   0.6166218
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.6222222   0.4801762   0.7642683
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3295019   0.2891482   0.3698556
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.5892857   0.4981025   0.6804689
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3450835   0.3049191   0.3852479
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.6228070   0.5337666   0.7118474
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2946346   0.2754140   0.3138552
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.4693878   0.3296213   0.6091542
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.4966667   0.4735628   0.5197705
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.7421875   0.6663883   0.8179867
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2979434   0.2895394   0.3063474
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.5976130   0.5695490   0.6256769
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7052097   0.6733356   0.7370837
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.8695652   0.7721834   0.9669470
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2588577   0.2469115   0.2708039
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4561404   0.4215802   0.4907005
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6549641   0.6368580   0.6730702
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.8066298   0.7490835   0.8641761
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.2134494   0.2055337   0.2213651
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.4228668   0.4052731   0.4404604
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.4077687   0.3861206   0.4294169
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.5814570   0.5160736   0.6468403
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1755319   0.1210238   0.2300400
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.4583333   0.2585193   0.6581473
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.2065217   0.1478875   0.2651560
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.2380952   0.0554846   0.4207058
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3096774   0.2581361   0.3612187
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birth weight             NA                0.5625000   0.4219648   0.7030352
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.5322581   0.4604076   0.6041086
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.8095238   0.7123640   0.9066837
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1673597   0.1416245   0.1930949
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4152542   0.3056705   0.5248380
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1751825   0.1113549   0.2390101
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.4222222   0.2775153   0.5669291
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1168582   0.0892778   0.1444386
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.3571429   0.2683332   0.4459525
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1465677   0.1166871   0.1764484
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.3947368   0.3049414   0.4845323
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1322849   0.1180005   0.1465693
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.2857143   0.1591969   0.4122317
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.2316716   0.2116400   0.2517031
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.5897436   0.5005911   0.6788961
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1407831   0.1343886   0.1471776
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.4633106   0.4347610   0.4918601
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.2226563   0.1932149   0.2520976
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.4782609   0.3338183   0.6227034
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0602767   0.0537185   0.0668349
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.1982211   0.1703663   0.2260759
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1698754   0.1555726   0.1841782
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4640884   0.3914222   0.5367546
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0942097   0.0887638   0.0996557
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.2855942   0.2699144   0.3012740
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0855520   0.0733592   0.0977448
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1909814   0.1364852   0.2454777
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.4306569   0.3474682   0.5138457
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.3125000   0.0846372   0.5403628
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3738318   0.3088711   0.4387925
6-24 months                  ki1000108-IRC              INDIA                          Low birth weight             NA                0.4285714   0.2164634   0.6406794
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4912043   0.4389202   0.5434885
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.6250000   0.4963277   0.7536723
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5384615   0.4355493   0.6413738
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.6000000   0.3509042   0.8490958
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2775000   0.2335717   0.3214283
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.4561404   0.3266972   0.5855835
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.2426304   0.2025820   0.2826788
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.4000000   0.2807862   0.5192138
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2247119   0.2040063   0.2454176
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.3333333   0.1554658   0.5112009
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3806777   0.3551156   0.4062398
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.5555556   0.4328116   0.6782995
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2385260   0.2288911   0.2481609
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.3879518   0.3410669   0.4348367
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2289236   0.2167053   0.2411420
6-24 months                  ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.3576159   0.3193882   0.3958435
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6380338   0.6170406   0.6590269
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.7848101   0.6941677   0.8754526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1996274   0.1901322   0.2091225
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.3119122   0.2868898   0.3369347
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3534902   0.3316853   0.3752951
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.4894992   0.4205825   0.5584159


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
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.3210227   1.0921084   1.597919
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.3705525   1.1416607   1.645335
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.1677321   0.8850365   1.540725
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.7884136   1.4681349   2.178562
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    1.8048010   1.5009484   2.170166
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.5931183   1.1745296   2.160887
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.4943372   1.3357038   1.671811
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    2.0057936   1.8988713   2.118736
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.2330591   1.0927880   1.391336
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.7621278   1.6125342   1.925599
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.2315634   1.1408504   1.329489
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.9811100   1.8801216   2.087523
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.4259479   1.2580852   1.616208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    2.6111111   1.5288709   4.459435
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    1.1528822   0.5088703   2.611937
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.8164062   1.3453556   2.452386
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.5209235   1.2695798   1.822027
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    2.4812086   1.8140556   3.393720
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    2.4101852   1.4615414   3.974566
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    3.0562061   2.1691493   4.306018
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    2.6932045   1.9842952   3.655379
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.1598402   1.3692284   3.406962
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    2.5456021   2.1387351   3.029870
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    3.2909530   3.0484258   3.552775
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    2.1479786   1.5447055   2.986856
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    3.2885204   2.7530702   3.928111
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    2.7319337   2.2869744   3.263465
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    3.0314716   2.8030653   3.278490
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    2.2323431   1.6218992   3.072544
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.7256356   0.3412906   1.542811
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.1464286   0.6784891   1.937096
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.2723829   0.9753861   1.659813
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.1142857   0.7055157   1.759894
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.6437490   1.1877184   2.274875
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    1.6485981   1.1726148   2.317791
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.4833808   0.8631421   2.549312
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.4593855   1.1584670   1.838469
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.6264550   1.4318660   1.847488
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.5621625   1.3862349   1.760417
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.2300448   1.0908523   1.386998
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.5624721   1.4307412   1.706332
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3847604   1.1886259   1.613259


### Parameter: PAR


agecat                       studyid                    country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0129466   -0.0109848   0.0368780
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0052227   -0.0284721   0.0180267
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0244368    0.0052839   0.0435898
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0220095    0.0059832   0.0380359
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0220983   -0.0190613   0.0632579
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0458924    0.0266607   0.0651241
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0484847    0.0296092   0.0673602
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0038729    0.0005674   0.0071784
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0163001    0.0103735   0.0222268
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0280067    0.0248722   0.0311412
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0090761    0.0028693   0.0152828
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0264014    0.0212194   0.0315834
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0097002    0.0056066   0.0137937
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0406432    0.0368492   0.0444371
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0205122    0.0123966   0.0286279
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0320153    0.0056346   0.0583959
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0032344   -0.0164566   0.0229253
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0338980    0.0119285   0.0558675
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0701516    0.0360952   0.1042080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0270848    0.0120515   0.0421181
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0610813    0.0190066   0.1031559
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0424478    0.0245358   0.0603597
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0433251    0.0252904   0.0613598
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0034003    0.0004256   0.0063750
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0229936    0.0158745   0.0301128
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0301509    0.0269600   0.0333418
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0144445    0.0051787   0.0237103
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0185672    0.0145308   0.0226036
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0188172    0.0133882   0.0242461
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0371402    0.0336772   0.0406032
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0124442    0.0055523   0.0193362
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0123563   -0.0383665   0.0136539
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0048916   -0.0150324   0.0248157
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0106637   -0.0018039   0.0231312
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0087083   -0.0296510   0.0470676
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0222812    0.0043918   0.0401705
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0202155    0.0034203   0.0370106
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0018457   -0.0012744   0.0049657
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0075981    0.0018497   0.0133465
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0078179    0.0052088   0.0104270
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0151020    0.0102584   0.0199457
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0055401    0.0018293   0.0092508
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0171358    0.0131805   0.0210910
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0146112    0.0071868   0.0220356


### Parameter: PAF


agecat                       studyid                    country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0247269   -0.0222006   0.0694999
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0100061   -0.0555705   0.0335915
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0412660    0.0080129   0.0734043
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0388763    0.0083897   0.0684257
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0398208   -0.0375615   0.1114318
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.1222512    0.0694100   0.1720919
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1231925    0.0736876   0.1700518
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0129741    0.0018434   0.0239807
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0317762    0.0200666   0.0433459
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0859233    0.0762847   0.0954614
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0127065    0.0039108   0.0214245
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0925524    0.0743106   0.1104347
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0145941    0.0083814   0.0207678
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1599542    0.1451618   0.1744905
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0478943    0.0287322   0.0666784
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1542553    0.0213645   0.2691006
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0154196   -0.0830298   0.1049198
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0986625    0.0324910   0.1603083
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.1164516    0.0559135   0.1731078
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1392931    0.0603951   0.2115662
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.2585300    0.0662382   0.4112227
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.2664542    0.1537019   0.3641846
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.2281555    0.1321694   0.3135251
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0250601    0.0030013   0.0466309
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0902897    0.0622540   0.1174873
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.1763893    0.1583642   0.1940283
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0609213    0.0213315   0.0989096
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.2354930    0.1865467   0.2814940
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0997239    0.0710995   0.1274662
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.2827576    0.2576070   0.3070562
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1269869    0.0579871   0.1909326
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0295392   -0.0937618   0.0309124
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0129161   -0.0411287   0.0641554
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0212479   -0.0049588   0.0467713
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0159151   -0.0568281   0.0836513
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0743248    0.0128863   0.1319393
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0769100    0.0111117   0.1383302
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0081466   -0.0057126   0.0218148
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0195689    0.0046382   0.0342757
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0317358    0.0211124   0.0422439
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0618870    0.0419168   0.0814410
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0086083    0.0028086   0.0143742
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0790529    0.0609705   0.0967870
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0396933    0.0192953   0.0596671
