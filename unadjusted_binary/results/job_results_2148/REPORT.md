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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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

agecat        studyid                    country                        birthwt    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0                   0       34     258
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0                   1        0     258
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3                   0        0     258
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3                   1        7     258
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)               0       16     258
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)               1       22     258
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)               0       82     258
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)               1       14     258
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                0       79     258
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                1        4     258
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=0                   0      123     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=0                   1        5     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)               0        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)               1        7     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)               0       16     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)               1        7     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)                0       67     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)                1        6     233
0-6 months    ki0047075b-MAL-ED          INDIA                          >=0                   0       44     245
0-6 months    ki0047075b-MAL-ED          INDIA                          >=0                   1        0     245
0-6 months    ki0047075b-MAL-ED          INDIA                          <-3                   0        0     245
0-6 months    ki0047075b-MAL-ED          INDIA                          <-3                   1        5     245
0-6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)               0       12     245
0-6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)               1       12     245
0-6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)               0       62     245
0-6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)               1       19     245
0-6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)                0       86     245
0-6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)                1        5     245
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=0                   0       48     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=0                   1        0     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          <-3                   0        0     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          <-3                   1        4     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)               0        6     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)               1        9     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)               0       45     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)               1       10     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)                0      107     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)                1        4     233
0-6 months    ki0047075b-MAL-ED          PERU                           >=0                   0       93     299
0-6 months    ki0047075b-MAL-ED          PERU                           >=0                   1        0     299
0-6 months    ki0047075b-MAL-ED          PERU                           <-3                   0        0     299
0-6 months    ki0047075b-MAL-ED          PERU                           <-3                   1        5     299
0-6 months    ki0047075b-MAL-ED          PERU                           [-3--2)               0        2     299
0-6 months    ki0047075b-MAL-ED          PERU                           [-3--2)               1        8     299
0-6 months    ki0047075b-MAL-ED          PERU                           [-2--1)               0       25     299
0-6 months    ki0047075b-MAL-ED          PERU                           [-2--1)               1       18     299
0-6 months    ki0047075b-MAL-ED          PERU                           [-1-0)                0      142     299
0-6 months    ki0047075b-MAL-ED          PERU                           [-1-0)                1        6     299
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                   0      112     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                   1        1     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                   0        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                   1        3     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)               0        6     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)               1       10     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)               0       39     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)               1       10     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                0      121     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                1       10     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                   0       57     132
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                   1        2     132
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3                   0        0     132
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3                   1        1     132
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)               0        1     132
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)               1        4     132
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)               0       12     132
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)               1        6     132
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                0       43     132
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                1        6     132
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                   0       62     361
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                   1        7     361
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                   0        2     361
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                   1       10     361
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)               0       12     361
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)               1       18     361
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)               0       83     361
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)               1       24     361
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                0      128     361
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                1       15     361
0-6 months    ki1000108-IRC              INDIA                          >=0                   0       57     404
0-6 months    ki1000108-IRC              INDIA                          >=0                   1        4     404
0-6 months    ki1000108-IRC              INDIA                          <-3                   0        7     404
0-6 months    ki1000108-IRC              INDIA                          <-3                   1        6     404
0-6 months    ki1000108-IRC              INDIA                          [-3--2)               0       31     404
0-6 months    ki1000108-IRC              INDIA                          [-3--2)               1       10     404
0-6 months    ki1000108-IRC              INDIA                          [-2--1)               0      114     404
0-6 months    ki1000108-IRC              INDIA                          [-2--1)               1       19     404
0-6 months    ki1000108-IRC              INDIA                          [-1-0)                0      146     404
0-6 months    ki1000108-IRC              INDIA                          [-1-0)                1       10     404
0-6 months    ki1000109-EE               PAKISTAN                       >=0                   0       31     376
0-6 months    ki1000109-EE               PAKISTAN                       >=0                   1        4     376
0-6 months    ki1000109-EE               PAKISTAN                       <-3                   0       21     376
0-6 months    ki1000109-EE               PAKISTAN                       <-3                   1       26     376
0-6 months    ki1000109-EE               PAKISTAN                       [-3--2)               0       35     376
0-6 months    ki1000109-EE               PAKISTAN                       [-3--2)               1       38     376
0-6 months    ki1000109-EE               PAKISTAN                       [-2--1)               0       74     376
0-6 months    ki1000109-EE               PAKISTAN                       [-2--1)               1       44     376
0-6 months    ki1000109-EE               PAKISTAN                       [-1-0)                0       88     376
0-6 months    ki1000109-EE               PAKISTAN                       [-1-0)                1       15     376
0-6 months    ki1000109-ResPak           PAKISTAN                       >=0                   0        4       7
0-6 months    ki1000109-ResPak           PAKISTAN                       >=0                   1        0       7
0-6 months    ki1000109-ResPak           PAKISTAN                       <-3                   0        0       7
0-6 months    ki1000109-ResPak           PAKISTAN                       <-3                   1        1       7
0-6 months    ki1000109-ResPak           PAKISTAN                       [-2--1)               0        0       7
0-6 months    ki1000109-ResPak           PAKISTAN                       [-2--1)               1        1       7
0-6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)                0        1       7
0-6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)                1        0       7
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                   0      143    1521
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                   1        8    1521
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                   0        8    1521
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                   1      104    1521
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)               0       77    1521
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)               1      135    1521
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)               0      356    1521
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)               1      152    1521
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                0      496    1521
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                1       42    1521
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0                   0        2      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0                   1        0      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)               0        3      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)               1        1      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)               0       15      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)               1        0      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                0        7      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                1        0      28
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0                   0       66     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0                   1        0     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3                   0        0     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3                   1        4     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)               0       66     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)               1       48     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)               0      278     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)               1       14     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                0      224     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                1        0     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                   0       97     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                   1        2     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                   0        8     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                   1       15     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)               0       73     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)               1       40     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)               0      244     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)               1       41     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                0      231     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                1        7     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                   0     1008    2370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                   1       19    2370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                   0        7    2370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                   1       15    2370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)               0       34    2370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)               1       14    2370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)               0      253    2370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)               1       51    2370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)                0      908    2370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)                1       61    2370
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                   0      384    1975
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                   1        5    1975
0-6 months    ki1101329-Keneba           GAMBIA                         <-3                   0       11    1975
0-6 months    ki1101329-Keneba           GAMBIA                         <-3                   1       15    1975
0-6 months    ki1101329-Keneba           GAMBIA                         [-3--2)               0       78    1975
0-6 months    ki1101329-Keneba           GAMBIA                         [-3--2)               1       42    1975
0-6 months    ki1101329-Keneba           GAMBIA                         [-2--1)               0      501    1975
0-6 months    ki1101329-Keneba           GAMBIA                         [-2--1)               1       54    1975
0-6 months    ki1101329-Keneba           GAMBIA                         [-1-0)                0      847    1975
0-6 months    ki1101329-Keneba           GAMBIA                         [-1-0)                1       38    1975
0-6 months    ki1114097-CMIN             BANGLADESH                     >=0                   0        2      12
0-6 months    ki1114097-CMIN             BANGLADESH                     >=0                   1        0      12
0-6 months    ki1114097-CMIN             BANGLADESH                     <-3                   0        0      12
0-6 months    ki1114097-CMIN             BANGLADESH                     <-3                   1        3      12
0-6 months    ki1114097-CMIN             BANGLADESH                     [-3--2)               0        1      12
0-6 months    ki1114097-CMIN             BANGLADESH                     [-3--2)               1        2      12
0-6 months    ki1114097-CMIN             BANGLADESH                     [-2--1)               0        1      12
0-6 months    ki1114097-CMIN             BANGLADESH                     [-2--1)               1        0      12
0-6 months    ki1114097-CMIN             BANGLADESH                     [-1-0)                0        3      12
0-6 months    ki1114097-CMIN             BANGLADESH                     [-1-0)                1        0      12
0-6 months    ki1114097-CMIN             BRAZIL                         >=0                   0       55     115
0-6 months    ki1114097-CMIN             BRAZIL                         >=0                   1        1     115
0-6 months    ki1114097-CMIN             BRAZIL                         <-3                   0        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         <-3                   1        1     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-3--2)               0        1     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-3--2)               1        1     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-2--1)               0       16     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-2--1)               1        2     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-1-0)                0       38     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-1-0)                1        0     115
0-6 months    ki1114097-CMIN             PERU                           >=0                   0        8      10
0-6 months    ki1114097-CMIN             PERU                           [-1-0)                0        2      10
0-6 months    ki1114097-CONTENT          PERU                           >=0                   0        1       2
0-6 months    ki1114097-CONTENT          PERU                           [-1-0)                0        1       2
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                   0    10505   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                   1       12   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [-2--1)               0     1115   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [-2--1)               1       85   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [-1-0)                0     5120   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [-1-0)                1       56   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                   0     3174   14008
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                   1       44   14008
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                   0      148   14008
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                   1      264   14008
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)               0      757   14008
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)               1      429   14008
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)               0     2931   14008
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)               1      457   14008
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                0     5527   14008
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                1      277   14008
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=0                   0      247     903
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=0                   1        9     903
0-6 months    ki1135781-COHORTS          GUATEMALA                      <-3                   0        2     903
0-6 months    ki1135781-COHORTS          GUATEMALA                      <-3                   1       10     903
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)               0       44     903
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)               1       26     903
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)               0      224     903
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)               1       37     903
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)                0      297     903
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)                1        7     903
0-6 months    ki1135781-COHORTS          INDIA                          >=0                   0      754    6638
0-6 months    ki1135781-COHORTS          INDIA                          >=0                   1        6    6638
0-6 months    ki1135781-COHORTS          INDIA                          <-3                   0       59    6638
0-6 months    ki1135781-COHORTS          INDIA                          <-3                   1      225    6638
0-6 months    ki1135781-COHORTS          INDIA                          [-3--2)               0      547    6638
0-6 months    ki1135781-COHORTS          INDIA                          [-3--2)               1      314    6638
0-6 months    ki1135781-COHORTS          INDIA                          [-2--1)               0     2057    6638
0-6 months    ki1135781-COHORTS          INDIA                          [-2--1)               1      200    6638
0-6 months    ki1135781-COHORTS          INDIA                          [-1-0)                0     2430    6638
0-6 months    ki1135781-COHORTS          INDIA                          [-1-0)                1       46    6638
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                   0      654    3009
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                   1        0    3009
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                   0       24    3009
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                   1       47    3009
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)               0      120    3009
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)               1       57    3009
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)               0      665    3009
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)               1       58    3009
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)                0     1367    3009
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)                1       17    3009
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                   0     2746   27085
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                   1      370   27085
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                   0      157   27085
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                   1     2511   27085
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)               0     2302   27085
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)               1     3708   27085
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)               0     7927   27085
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)               1     1794   27085
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                0     5251   27085
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                1      319   27085
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                   0      923    4495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                   1      162    4495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                   0        9    4495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                   1      258    4495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)               0      219    4495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)               1      456    4495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)               0     1048    4495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)               1      332    4495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                0      995    4495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                1       93    4495
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0                   0       28     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0                   1        4     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3                   0        0     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3                   1        3     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)               0        9     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)               1       12     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)               0       39     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)               1       31     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                0       44     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                1       21     191
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                   0      115     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                   1        4     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)               0        7     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)               1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)               0       19     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)               1        1     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)                0       54     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)                1        3     203
6-24 months   ki0047075b-MAL-ED          INDIA                          >=0                   0       30     190
6-24 months   ki0047075b-MAL-ED          INDIA                          >=0                   1        9     190
6-24 months   ki0047075b-MAL-ED          INDIA                          <-3                   0        1     190
6-24 months   ki0047075b-MAL-ED          INDIA                          <-3                   1        0     190
6-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)               0       10     190
6-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)               1        7     190
6-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)               0       37     190
6-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)               1       18     190
6-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)                0       47     190
6-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)                1       31     190
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=0                   0       44     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=0                   1        3     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          <-3                   0        1     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          <-3                   1        2     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)               0       11     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)               1        2     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)               0       37     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)               1       11     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)                0       93     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)                1       14     218
6-24 months   ki0047075b-MAL-ED          PERU                           >=0                   0       59     227
6-24 months   ki0047075b-MAL-ED          PERU                           >=0                   1       22     227
6-24 months   ki0047075b-MAL-ED          PERU                           <-3                   0        2     227
6-24 months   ki0047075b-MAL-ED          PERU                           <-3                   1        0     227
6-24 months   ki0047075b-MAL-ED          PERU                           [-3--2)               0        0     227
6-24 months   ki0047075b-MAL-ED          PERU                           [-3--2)               1        2     227
6-24 months   ki0047075b-MAL-ED          PERU                           [-2--1)               0       14     227
6-24 months   ki0047075b-MAL-ED          PERU                           [-2--1)               1       10     227
6-24 months   ki0047075b-MAL-ED          PERU                           [-1-0)                0       78     227
6-24 months   ki0047075b-MAL-ED          PERU                           [-1-0)                1       40     227
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                   0       70     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                   1       18     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                   0        3     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                   1        0     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)               0        5     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)               1        2     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)               0       21     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)               1       11     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                0       66     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                1       28     224
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                   0       22      99
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                   1       29      99
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)               0        0      99
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)               1        1      99
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)               0        2      99
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)               1        9      99
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                0       11      99
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                1       25      99
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                   0       25     281
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                   1       38     281
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                   0        1     281
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                   1        4     281
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)               0        3     281
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)               1       12     281
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)               0       19     281
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)               1       59     281
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                0       49     281
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                1       71     281
6-24 months   ki1000108-IRC              INDIA                          >=0                   0       52     338
6-24 months   ki1000108-IRC              INDIA                          >=0                   1        5     338
6-24 months   ki1000108-IRC              INDIA                          <-3                   0        4     338
6-24 months   ki1000108-IRC              INDIA                          <-3                   1        3     338
6-24 months   ki1000108-IRC              INDIA                          [-3--2)               0       16     338
6-24 months   ki1000108-IRC              INDIA                          [-3--2)               1       11     338
6-24 months   ki1000108-IRC              INDIA                          [-2--1)               0       67     338
6-24 months   ki1000108-IRC              INDIA                          [-2--1)               1       35     338
6-24 months   ki1000108-IRC              INDIA                          [-1-0)                0      116     338
6-24 months   ki1000108-IRC              INDIA                          [-1-0)                1       29     338
6-24 months   ki1000109-EE               PAKISTAN                       >=0                   0       10     188
6-24 months   ki1000109-EE               PAKISTAN                       >=0                   1       16     188
6-24 months   ki1000109-EE               PAKISTAN                       <-3                   0        1     188
6-24 months   ki1000109-EE               PAKISTAN                       <-3                   1       11     188
6-24 months   ki1000109-EE               PAKISTAN                       [-3--2)               0        3     188
6-24 months   ki1000109-EE               PAKISTAN                       [-3--2)               1       18     188
6-24 months   ki1000109-EE               PAKISTAN                       [-2--1)               0       17     188
6-24 months   ki1000109-EE               PAKISTAN                       [-2--1)               1       43     188
6-24 months   ki1000109-EE               PAKISTAN                       [-1-0)                0       16     188
6-24 months   ki1000109-EE               PAKISTAN                       [-1-0)                1       53     188
6-24 months   ki1000109-ResPak           PAKISTAN                       >=0                   0        2       4
6-24 months   ki1000109-ResPak           PAKISTAN                       [-2--1)               0        1       4
6-24 months   ki1000109-ResPak           PAKISTAN                       [-1-0)                0        1       4
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                   0      104     956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                   1       26     956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                   0       10     956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                   1        7     956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)               0       50     956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)               1       43     956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)               0      193     956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)               1      109     956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                0      296     956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                1      118     956
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0                   0        1      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0                   1        0      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)               0        1      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)               1        0      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)               0        1      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)               1        7      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                0        1      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                1        3      14
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                   0       45     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                   1        8     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)               0       41     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)               1       21     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)               0      150     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)               1       53     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                0      142     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                1       37     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                   0       86     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                   1        8     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                   0        8     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                   1        2     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)               0       52     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)               1       22     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)               0      187     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)               1       44     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                0      170     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                1       41     620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                   0      743    1830
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                   1       83    1830
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                   0        9    1830
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                   1        4    1830
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)               0       22    1830
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)               1        7    1830
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)               0      174    1830
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)               1       36    1830
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)                0      637    1830
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)                1      115    1830
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                   0      327    1786
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                   1       61    1786
6-24 months   ki1101329-Keneba           GAMBIA                         <-3                   0       10    1786
6-24 months   ki1101329-Keneba           GAMBIA                         <-3                   1        5    1786
6-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)               0       41    1786
6-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)               1       35    1786
6-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)               0      297    1786
6-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)               1      152    1786
6-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)                0      627    1786
6-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)                1      231    1786
6-24 months   ki1114097-CMIN             BRAZIL                         >=0                   0       47     100
6-24 months   ki1114097-CMIN             BRAZIL                         >=0                   1        7     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-3--2)               0        1     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-3--2)               1        0     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-2--1)               0       11     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-2--1)               1        1     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-1-0)                0       27     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-1-0)                1        6     100
6-24 months   ki1114097-CMIN             PERU                           >=0                   0        7       9
6-24 months   ki1114097-CMIN             PERU                           >=0                   1        1       9
6-24 months   ki1114097-CMIN             PERU                           [-1-0)                0        1       9
6-24 months   ki1114097-CMIN             PERU                           [-1-0)                1        0       9
6-24 months   ki1114097-CONTENT          PERU                           >=0                   0        1       2
6-24 months   ki1114097-CONTENT          PERU                           [-1-0)                0        1       2
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                   0    10001   16303
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                   1      277   16303
6-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)               0      998   16303
6-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)               1       74   16303
6-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)                0     4684   16303
6-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)                1      269   16303
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                   0     2150    9288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                   1      196    9288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                   0      113    9288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                   1       29    9288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)               0      465    9288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)               1      135    9288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)               0     1681    9288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)               1      399    9288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                0     3612    9288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                1      508    9288
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                   0       84     471
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                   1       83     471
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)               0        4     471
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)               1       11     471
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)               0       32     471
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)               1       81     471
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)                0       74     471
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)                1      102     471
6-24 months   ki1135781-COHORTS          INDIA                          >=0                   0      712    5137
6-24 months   ki1135781-COHORTS          INDIA                          <-3                   0       74    5137
6-24 months   ki1135781-COHORTS          INDIA                          [-3--2)               0      520    5137
6-24 months   ki1135781-COHORTS          INDIA                          [-2--1)               0     1666    5137
6-24 months   ki1135781-COHORTS          INDIA                          [-1-0)                0     2165    5137
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                   0      332    2191
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                   1      216    2191
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                   0       13    2191
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                   1        9    2191
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)               0       26    2191
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)               1       54    2191
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)               0      194    2191
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)               1      273    2191
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)                0      556    2191
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)                1      518    2191
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                   0     1631   13239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                   1      198   13239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                   0      401   13239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                   1      145   13239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)               0     1615   13239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)               1      708   13239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)               0     4057   13239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)               1     1089   13239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                0     2921   13239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                1      474   13239
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                   0      736    3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                   1      216    3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                   0       65    3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                   1       40    3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)               0      253    3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)               1      185    3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)               0      755    3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)               1      353    3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                0      697    3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                1      271    3571
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0                   0       29     258
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0                   1        5     258
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3                   0        0     258
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3                   1        7     258
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)               0        7     258
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)               1       31     258
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)               0       43     258
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)               1       53     258
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                0       49     258
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                1       34     258
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                   0      118     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                   1       10     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)               0        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)               1        7     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)               0       14     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)               1        9     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)                0       63     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)                1       10     233
0-24 months   ki0047075b-MAL-ED          INDIA                          >=0                   0       33     245
0-24 months   ki0047075b-MAL-ED          INDIA                          >=0                   1       11     245
0-24 months   ki0047075b-MAL-ED          INDIA                          <-3                   0        0     245
0-24 months   ki0047075b-MAL-ED          INDIA                          <-3                   1        5     245
0-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)               0        8     245
0-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)               1       16     245
0-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)               0       33     245
0-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)               1       48     245
0-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)                0       47     245
0-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)                1       44     245
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=0                   0       44     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=0                   1        4     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          <-3                   0        0     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          <-3                   1        4     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)               0        6     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)               1        9     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)               0       35     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)               1       20     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)                0       94     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)                1       17     233
0-24 months   ki0047075b-MAL-ED          PERU                           >=0                   0       67     299
0-24 months   ki0047075b-MAL-ED          PERU                           >=0                   1       26     299
0-24 months   ki0047075b-MAL-ED          PERU                           <-3                   0        0     299
0-24 months   ki0047075b-MAL-ED          PERU                           <-3                   1        5     299
0-24 months   ki0047075b-MAL-ED          PERU                           [-3--2)               0        0     299
0-24 months   ki0047075b-MAL-ED          PERU                           [-3--2)               1       10     299
0-24 months   ki0047075b-MAL-ED          PERU                           [-2--1)               0       11     299
0-24 months   ki0047075b-MAL-ED          PERU                           [-2--1)               1       32     299
0-24 months   ki0047075b-MAL-ED          PERU                           [-1-0)                0       87     299
0-24 months   ki0047075b-MAL-ED          PERU                           [-1-0)                1       61     299
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                   0       81     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                   1       32     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                   0        2     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                   1        3     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)               0        5     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)               1       11     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)               0       23     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)               1       26     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                0       82     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                1       49     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                   0       26     132
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                   1       33     132
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3                   0        0     132
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3                   1        1     132
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)               0        1     132
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)               1        4     132
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)               0        2     132
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)               1       16     132
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                0       15     132
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                1       34     132
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                   0       19     365
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                   1       50     365
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                   0        1     365
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                   1       11     365
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)               0        1     365
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)               1       29     365
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)               0       16     365
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)               1       91     365
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                0       39     365
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                1      108     365
0-24 months   ki1000108-IRC              INDIA                          >=0                   0       48     404
0-24 months   ki1000108-IRC              INDIA                          >=0                   1       13     404
0-24 months   ki1000108-IRC              INDIA                          <-3                   0        3     404
0-24 months   ki1000108-IRC              INDIA                          <-3                   1       10     404
0-24 months   ki1000108-IRC              INDIA                          [-3--2)               0       10     404
0-24 months   ki1000108-IRC              INDIA                          [-3--2)               1       31     404
0-24 months   ki1000108-IRC              INDIA                          [-2--1)               0       52     404
0-24 months   ki1000108-IRC              INDIA                          [-2--1)               1       81     404
0-24 months   ki1000108-IRC              INDIA                          [-1-0)                0      101     404
0-24 months   ki1000108-IRC              INDIA                          [-1-0)                1       55     404
0-24 months   ki1000109-EE               PAKISTAN                       >=0                   0        8     376
0-24 months   ki1000109-EE               PAKISTAN                       >=0                   1       27     376
0-24 months   ki1000109-EE               PAKISTAN                       <-3                   0        1     376
0-24 months   ki1000109-EE               PAKISTAN                       <-3                   1       46     376
0-24 months   ki1000109-EE               PAKISTAN                       [-3--2)               0        4     376
0-24 months   ki1000109-EE               PAKISTAN                       [-3--2)               1       69     376
0-24 months   ki1000109-EE               PAKISTAN                       [-2--1)               0       15     376
0-24 months   ki1000109-EE               PAKISTAN                       [-2--1)               1      103     376
0-24 months   ki1000109-EE               PAKISTAN                       [-1-0)                0       17     376
0-24 months   ki1000109-EE               PAKISTAN                       [-1-0)                1       86     376
0-24 months   ki1000109-ResPak           PAKISTAN                       >=0                   0        3       7
0-24 months   ki1000109-ResPak           PAKISTAN                       >=0                   1        1       7
0-24 months   ki1000109-ResPak           PAKISTAN                       <-3                   0        0       7
0-24 months   ki1000109-ResPak           PAKISTAN                       <-3                   1        1       7
0-24 months   ki1000109-ResPak           PAKISTAN                       [-2--1)               0        0       7
0-24 months   ki1000109-ResPak           PAKISTAN                       [-2--1)               1        1       7
0-24 months   ki1000109-ResPak           PAKISTAN                       [-1-0)                0        1       7
0-24 months   ki1000109-ResPak           PAKISTAN                       [-1-0)                1        0       7
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                   0      104    1523
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                   1       48    1523
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                   0        4    1523
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                   1      108    1523
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)               0       31    1523
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)               1      182    1523
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)               0      176    1523
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)               1      332    1523
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                0      303    1523
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                1      235    1523
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0                   0        2      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0                   1        0      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)               0        2      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)               1        2      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)               0        7      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)               1        8      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                0        4      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                1        3      28
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                   0       56     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                   1       10     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3                   0        0     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3                   1        4     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)               0       35     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)               1       79     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)               0      179     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)               1      113     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                0      167     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                1       57     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                   0       85     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                   1       14     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                   0        3     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                   1       20     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)               0       40     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)               1       73     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)               0      163     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)               1      122     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                0      173     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                1       65     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                   0      878    2370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                   1      149    2370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                   0        6    2370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                   1       16    2370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)               0       26    2370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)               1       22    2370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)               0      185    2370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)               1      119    2370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)                0      741    2370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)                1      228    2370
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                   0      320    2119
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                   1       91    2119
0-24 months   ki1101329-Keneba           GAMBIA                         <-3                   0        7    2119
0-24 months   ki1101329-Keneba           GAMBIA                         <-3                   1       21    2119
0-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)               0       32    2119
0-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)               1       98    2119
0-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)               0      286    2119
0-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)               1      313    2119
0-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)                0      616    2119
0-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)                1      335    2119
0-24 months   ki1114097-CMIN             BANGLADESH                     >=0                   0        2      12
0-24 months   ki1114097-CMIN             BANGLADESH                     >=0                   1        0      12
0-24 months   ki1114097-CMIN             BANGLADESH                     <-3                   0        0      12
0-24 months   ki1114097-CMIN             BANGLADESH                     <-3                   1        3      12
0-24 months   ki1114097-CMIN             BANGLADESH                     [-3--2)               0        1      12
0-24 months   ki1114097-CMIN             BANGLADESH                     [-3--2)               1        2      12
0-24 months   ki1114097-CMIN             BANGLADESH                     [-2--1)               0        1      12
0-24 months   ki1114097-CMIN             BANGLADESH                     [-2--1)               1        0      12
0-24 months   ki1114097-CMIN             BANGLADESH                     [-1-0)                0        3      12
0-24 months   ki1114097-CMIN             BANGLADESH                     [-1-0)                1        0      12
0-24 months   ki1114097-CMIN             BRAZIL                         >=0                   0       46     115
0-24 months   ki1114097-CMIN             BRAZIL                         >=0                   1       10     115
0-24 months   ki1114097-CMIN             BRAZIL                         <-3                   0        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         <-3                   1        1     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-3--2)               0        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-3--2)               1        2     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-2--1)               0       10     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-2--1)               1        8     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-1-0)                0       25     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-1-0)                1       13     115
0-24 months   ki1114097-CMIN             PERU                           >=0                   0        7      10
0-24 months   ki1114097-CMIN             PERU                           >=0                   1        1      10
0-24 months   ki1114097-CMIN             PERU                           [-1-0)                0        2      10
0-24 months   ki1114097-CMIN             PERU                           [-1-0)                1        0      10
0-24 months   ki1114097-CONTENT          PERU                           >=0                   0        1       2
0-24 months   ki1114097-CONTENT          PERU                           [-1-0)                0        1       2
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                   0     9959   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                   1      562   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)               0      826   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)               1      374   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)                0     4412   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)                1      764   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                   0     2816   14028
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                   1      409   14028
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                   0       85   14028
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                   1      329   14028
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)               0      496   14028
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)               1      692   14028
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)               0     2034   14028
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)               1     1357   14028
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                0     4491   14028
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                1     1319   14028
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                   0      119     934
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                   1      148     934
0-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                   0        0     934
0-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                   1       13     934
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)               0        7     934
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)               1       65     934
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)               0       48     934
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)               1      220     934
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)                0      108     934
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)                1      206     934
0-24 months   ki1135781-COHORTS          INDIA                          >=0                   0      754    6770
0-24 months   ki1135781-COHORTS          INDIA                          >=0                   1       27    6770
0-24 months   ki1135781-COHORTS          INDIA                          <-3                   0       36    6770
0-24 months   ki1135781-COHORTS          INDIA                          <-3                   1      251    6770
0-24 months   ki1135781-COHORTS          INDIA                          [-3--2)               0      427    6770
0-24 months   ki1135781-COHORTS          INDIA                          [-3--2)               1      448    6770
0-24 months   ki1135781-COHORTS          INDIA                          [-2--1)               0     1704    6770
0-24 months   ki1135781-COHORTS          INDIA                          [-2--1)               1      590    6770
0-24 months   ki1135781-COHORTS          INDIA                          [-1-0)                0     2291    6770
0-24 months   ki1135781-COHORTS          INDIA                          [-1-0)                1      242    6770
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                   0      381    3009
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                   1      273    3009
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                   0       13    3009
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                   1       58    3009
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)               0       35    3009
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)               1      142    3009
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)               0      234    3009
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)               1      489    3009
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)                0      632    3009
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)                1      752    3009
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                   0     2472   27095
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                   1      644   27095
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                   0      132   27095
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                   1     2543   27095
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)               0     1681   27095
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)               1     4329   27095
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)               0     6259   27095
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)               1     3464   27095
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                0     4532   27095
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                1     1039   27095
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                   0      670    4505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                   1      415    4505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                   0        5    4505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                   1      265    4505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)               0       99    4505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)               1      577    4505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)               0      620    4505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)               1      764    4505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                0      662    4505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                1      428    4505


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## birthwt      0
##   >=0      712
##   <-3       74
##   [-3--2)  520
##   [-2--1) 1666
##   [-1-0)  2165
```




# Results Detail

## Results Plots
![](/tmp/a6c36a6e-4df9-4aae-8fac-26c4b4e2b235/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a6c36a6e-4df9-4aae-8fac-26c4b4e2b235/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a6c36a6e-4df9-4aae-8fac-26c4b4e2b235/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a6c36a6e-4df9-4aae-8fac-26c4b4e2b235/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.1450828   0.1235389   0.1666267
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.7272727   0.5411320   0.9134134
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.4583333   0.3173474   0.5993193
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.3914474   0.3365706   0.4463242
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.2352941   0.2085806   0.2620076
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.2214112   0.1812614   0.2615610
0-24 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                0.7500000   0.5895749   0.9104251
0-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.7538462   0.6797794   0.8279130
0-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.5225376   0.4825278   0.5625473
0-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.3522608   0.3218944   0.3826271
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0534170   0.0422128   0.0646211
0-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.3116667   0.2704318   0.3529015
0-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.1476043   0.1258281   0.1693805
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1268217   0.1153363   0.1383071
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.7946860   0.7557752   0.8335968
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.5824916   0.5544480   0.6105351
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.4001769   0.3836863   0.4166676
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.2270224   0.2162505   0.2377943
0-24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.0345711   0.0217575   0.0473847
0-24 months   ki1135781-COHORTS          INDIA                          <-3                  NA                0.8745645   0.8362427   0.9128862
0-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.5120000   0.4788777   0.5451223
0-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.2571927   0.2393051   0.2750802
0-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0955389   0.0840904   0.1069874
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.4174312   0.3796307   0.4552317
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.8169014   0.7269271   0.9068757
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.8022599   0.7435733   0.8609464
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.6763485   0.6422391   0.7104580
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.5433526   0.5171054   0.5695998
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2066752   0.1903777   0.2229728
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.9506542   0.9412733   0.9600351
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.7202995   0.7078442   0.7327548
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.3562686   0.3456048   0.3669325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.1865015   0.1758902   0.1971129
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.3824885   0.3473000   0.4176769
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.9814815   0.9631861   0.9997768
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.8535503   0.8203153   0.8867853
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.5520231   0.5207164   0.5833298
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.3926606   0.3569720   0.4283491
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.0529801   0.0061585   0.0998018
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                0.9285714   0.8788596   0.9782832
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                0.6367925   0.5911677   0.6824172
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                0.2992126   0.2336635   0.3647617
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                0.0780669   0.0511056   0.1050282
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0185005   0.0102574   0.0267436
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.6818182   0.4871476   0.8764888
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.2916667   0.1630547   0.4202786
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.1677632   0.1257510   0.2097753
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.0629515   0.0476561   0.0782469
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0128535   0.0016569   0.0240500
0-6 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                0.5769231   0.3869728   0.7668734
0-6 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.3500000   0.2646393   0.4353607
0-6 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.0972973   0.0726350   0.1219596
0-6 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.0429379   0.0295788   0.0562969
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0011410   0.0004522   0.0018298
0-6 months    ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.0708333   0.0449383   0.0967284
0-6 months    ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.0108192   0.0050272   0.0166111
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0136731   0.0096606   0.0176856
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.6407767   0.5944479   0.6871054
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.3617201   0.3343728   0.3890673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.1348878   0.1233847   0.1463909
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.0477257   0.0422410   0.0532105
0-6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.0078947   0.0016023   0.0141872
0-6 months    ki1135781-COHORTS          INDIA                          <-3                  NA                0.7922535   0.7450667   0.8394403
0-6 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.3646922   0.3325383   0.3968462
0-6 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.0886132   0.0768881   0.1003383
0-6 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0185784   0.0132593   0.0238974
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1187420   0.1066803   0.1308037
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.9411544   0.9310807   0.9512281
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.6169717   0.6033662   0.6305772
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.1845489   0.1759250   0.1931728
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.0572711   0.0510084   0.0635338
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1493088   0.1238056   0.1748119
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.9662921   0.9380773   0.9945069
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.6755556   0.6341514   0.7169597
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.2405797   0.2151509   0.2660085
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.0854779   0.0635625   0.1073934
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.2000000   0.1162840   0.2837160
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                0.4117647   0.1164739   0.7070555
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                0.4623656   0.3545638   0.5701673
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                0.3609272   0.2975989   0.4242554
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                0.2850242   0.2341948   0.3358535
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                  NA                0.1509434   0.0544666   0.2474202
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)              NA                0.3387097   0.2207864   0.4566329
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)              NA                0.2610837   0.2006019   0.3215656
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)               NA                0.2067039   0.1473224   0.2660854
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1572165   0.1209871   0.1934459
6-24 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                0.3333333   0.0947073   0.5719594
6-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.4605263   0.3484341   0.5726185
6-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.3385301   0.2947476   0.3823125
6-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.2692308   0.2395429   0.2989186
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0269508   0.0188973   0.0350042
6-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.0690299   0.0492338   0.0888259
6-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.0543105   0.0400110   0.0686101
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0835465   0.0723488   0.0947441
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.2042254   0.1379156   0.2705351
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.2250000   0.1915853   0.2584147
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.1918269   0.1749051   0.2087487
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.1233010   0.1132610   0.1333409
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.3941606   0.3532371   0.4350840
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.4090909   0.2035936   0.6145882
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.6750000   0.5723413   0.7776587
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.5845824   0.5398776   0.6292872
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.4823091   0.4524179   0.5122003
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1082559   0.0930072   0.1235045
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.2655678   0.2255475   0.3055881
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.3047783   0.2850594   0.3244972
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.2116207   0.1997842   0.2234571
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.1396171   0.1269264   0.1523078
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.2268908   0.1956836   0.2580979
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.3809524   0.2831818   0.4787229
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.4223744   0.3658603   0.4788886
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.3185921   0.2868174   0.3503667
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.2799587   0.2436339   0.3162834


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2253165   0.2084927   0.2421403
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4049080   0.3840027   0.4258132
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1006096   0.0848963   0.1163228
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2927003   0.2851706   0.3002300
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2301329   0.2201057   0.2401602
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5696245   0.5519304   0.5873185
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4435874   0.4360589   0.4511158
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5436182   0.5259510   0.5612854
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2899408   0.2636182   0.3162634
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0675105   0.0574070   0.0776141
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0779747   0.0661464   0.0898030
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0090570   0.0059070   0.0122070
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1050114   0.0999345   0.1100884
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1191624   0.1113681   0.1269567
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3212848   0.3145332   0.3280365
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2894327   0.2741277   0.3047377
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3169456   0.2869579   0.3469333
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2709966   0.2503773   0.2916160
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0380298   0.0285924   0.0474672
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1364126   0.1294320   0.1433931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4883615   0.4674262   0.5092967
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1974469   0.1893928   0.2055011
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2982358   0.2800848   0.3163868


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level       estimate     ci_lower      ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ------------  -----------  ------------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                 5.0128127    3.7288356     6.7389109
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                 3.1591163    2.2450323     4.4453775
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                 2.6980970    2.1997249     3.3093808
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                 1.6217923    1.3452897     1.9551256
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                 3.3873626    2.5590358     4.4838081
0-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 3.4047337    2.7702117     4.1845941
0-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 2.3600323    1.9383493     2.8734513
0-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.5909800    1.3015645     1.9447499
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                 5.8345996    4.9388165     6.8928565
0-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                 2.7632476    2.4367810     3.1334524
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                 6.2661670    5.6531471     6.9456620
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                 4.5929960    4.1452677     5.0890831
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 3.1554294    2.8565838     3.4855392
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 1.7900909    1.6161161     1.9827940
0-24 months   ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <-3                  >=0                25.2975649   17.4176156    36.7425030
0-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              >=0                14.8100613   10.1660988    21.5754263
0-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              >=0                 7.4395299    5.1023128    10.8473562
0-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.7635484    1.8719509     4.0798077
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 1.9569726    1.6969135     2.2568868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 1.9218973    1.7106999     2.1591685
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 1.6202636    1.4607318     1.7972183
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.3016579    1.1746908     1.4423482
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 4.5997492    4.2511389     4.9769470
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 3.4851758    3.2183232     3.7741550
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.7238091    1.5876914     1.8715966
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 0.9023894    0.8194416     0.9937335
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 2.5660419    2.3361386     2.8185705
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 2.2315713    2.0141626     2.4724470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.4432412    1.2950236     1.6084225
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.0265945    0.9052357     1.1642229
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                17.5267857    7.3935235    41.5482845
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                12.0194575    4.9064032    29.4446567
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                 5.6476378    2.0264836    15.7394870
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                 1.4735130    0.6283892     3.4552482
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                36.8540662   21.7099996    62.5620551
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                15.7653505    8.4228126    29.5087033
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                 9.0680400    5.4392519    15.1177681
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                 3.4026940    2.0484085     5.6523522
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0                44.8846154   17.6874784   113.9014085
0-6 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                27.2300000   11.0201993    67.2830754
0-6 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 7.5697297    3.0554791    18.7534609
0-6 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 3.3405650    1.3246568     8.4243516
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                62.0795137   32.6926888   117.8815866
0-6 months    ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                 9.4820968    4.7719815    18.8412633
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                46.8640777   34.6402712    63.4014024
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                26.4548904   19.5387475    35.8191447
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 9.8652061    7.2675190    13.3914050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 3.4904846    2.5469108     4.7836315
0-6 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <-3                  >=0               100.3521122   45.1240625   223.1746402
0-6 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0                46.1943474   20.7168755   103.0038404
0-6 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0                11.2243390    5.0034566    25.1797503
0-6 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.3532579    1.0089312     5.4888013
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 7.9260464    7.1605316     8.7734006
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 5.1959023    4.6860850     5.7611847
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.5542011    1.3911819     1.7363230
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 0.4823155    0.4187292     0.5555577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 6.4717711    5.4416378     7.6969146
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 4.5245542    3.7610967     5.4429844
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.6112900    1.3215568     1.9645433
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 0.5724911    0.4226712     0.7754163
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                 2.0588235    0.9872513     4.2934908
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                 2.3118280    1.6159473     3.3073779
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                 1.8046358    1.1090164     2.9365753
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                 1.4251208    0.8259311     2.4590057
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)              >=0                 2.2439516    1.0837304     4.6462837
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)              >=0                 1.7296798    0.8764212     3.4136464
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)               >=0                 1.3694134    0.6795198     2.7597329
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                 2.1202186    0.9994653     4.4977317
6-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 2.9292494    2.0950209     4.0956641
6-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 2.1532732    1.6532364     2.8045509
6-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.7124842    1.3264135     2.2109261
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                 2.5613314    1.8880827     3.4746459
6-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                 2.0151751    1.6455805     2.4677801
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                 2.4444524    1.7203998     3.4732319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                 2.6931122    2.2048293     3.2895306
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 2.2960508    1.9556775     2.6956640
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 1.4758371    1.2616250     1.7264204
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 1.0378788    0.6214094     1.7334664
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 1.7125000    1.4244813     2.0587537
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 1.4831073    1.3036804     1.6872290
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.2236361    1.0842754     1.3809087
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 2.4531487    2.0094918     2.9947564
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 2.8153511    2.4273411     3.2653844
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.9548193    1.6855481     2.2671073
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 1.2896952    1.0899710     1.5260164
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 1.6790123    1.2604965     2.2364857
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 1.8615762    1.5336430     2.2596302
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.4041650    1.1803818     1.6703743
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.2338919    1.0258771     1.4840855


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0802337    0.0616615   0.0988059
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1834968    0.1457647   0.2212289
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0471926    0.0401281   0.0542571
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1658786    0.1545668   0.1771905
0-24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.1955619    0.1805002   0.2106235
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1521933    0.1187145   0.1856721
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2369122    0.2216151   0.2522092
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1611297    0.1301352   0.1921242
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.2369607    0.1917716   0.2821498
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0490101    0.0384677   0.0595524
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0651212    0.0504281   0.0798144
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0079160    0.0050061   0.0108259
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0913383    0.0854665   0.0972102
0-6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.1112677    0.1017136   0.1208217
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2025429    0.1905548   0.2145310
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1401239    0.1161965   0.1640514
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.1169456    0.0283041   0.2055871
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                  NA                0.0884932   -0.0049573   0.1819438
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1137801    0.0796125   0.1479478
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0110790    0.0077154   0.0144427
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0528661    0.0423412   0.0633910
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.0942009    0.0584900   0.1299118
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.0891911    0.0747456   0.1036365
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.0713450    0.0431028   0.0995872


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.3560933    0.2712511   0.4310581
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.4531814    0.3524777   0.5382236
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.4690667    0.4181924   0.5154924
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.5667182    0.5282661   0.6020361
0-24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.8497777    0.7832210   0.8958998
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.2671818    0.2053930   0.3241658
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.5340823    0.4980693   0.5675113
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.2964024    0.2364629   0.3516365
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.8172726    0.5694951   0.9224415
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.7259615    0.5842311   0.8193778
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.8351584    0.6120525   0.9299577
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.8740191    0.7823939   0.9270646
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.8697943    0.8262288   0.9024376
0-6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.9337481    0.8534829   0.9700423
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.6304153    0.5925397   0.6647701
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.4841331    0.3962461   0.5592266
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.3689769    0.0316859   0.5887800
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                  NA                0.3695893   -0.1660174   0.6591667
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.4198581    0.2819083   0.5313070
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.2913252    0.2102360   0.3640885
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.3875457    0.3076796   0.4581985
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1928917    0.1160766   0.2630314
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.4517217    0.3745209   0.5193938
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.2392236    0.1395822   0.3273259
