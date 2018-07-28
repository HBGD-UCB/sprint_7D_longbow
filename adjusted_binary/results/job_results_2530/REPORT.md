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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

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
![](/tmp/e37d808c-b3cf-449a-981d-2db603adc363/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e37d808c-b3cf-449a-981d-2db603adc363/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e37d808c-b3cf-449a-981d-2db603adc363/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e37d808c-b3cf-449a-981d-2db603adc363/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.1485920    0.1279682   0.1692159
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.8115400    0.7273169   0.8957632
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.4013483    0.3224670   0.4802296
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.3783280    0.3321990   0.4244570
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.2325646    0.2073961   0.2577331
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.2349027    0.1998658   0.2699395
0-24 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                0.6026685    0.5459544   0.6593826
0-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.7298444    0.6785391   0.7811497
0-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.5144162    0.4784374   0.5503950
0-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.3508799    0.3225863   0.3791736
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0623956    0.0504473   0.0743440
0-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.2459805    0.2165000   0.2754610
0-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.1250781    0.1070546   0.1431016
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1290125    0.1181608   0.1398641
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.7986901    0.7667858   0.8305944
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.5860635    0.5612998   0.6108272
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.4016781    0.3860207   0.4173355
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.2265544    0.2160336   0.2370753
0-24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.0340982    0.0222488   0.0459476
0-24 months   ki1135781-COHORTS          INDIA                          <-3                  NA                0.8689514    0.8369590   0.9009438
0-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.5045231    0.4737970   0.5352492
0-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.2553323    0.2379517   0.2727128
0-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0964901    0.0852459   0.1077343
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.4209177    0.3873928   0.4544426
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.7023238    0.6477622   0.7568853
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.7556674    0.7106256   0.8007092
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.6704946    0.6396768   0.7013124
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.5449155    0.5198421   0.5699890
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2235208    0.2083374   0.2387042
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.9482993    0.9397186   0.9568799
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.7062771    0.6938459   0.7187083
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.3586988    0.3483126   0.3690850
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.2117008    0.2009326   0.2224690
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.3817648    0.3465031   0.4170265
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.9813886    0.9631061   0.9996711
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.8541148    0.8209227   0.8873069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.5520021    0.5207171   0.5832870
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.3929639    0.3572814   0.4286463
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.0553866    0.0178377   0.0929354
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                0.9282158    0.8839212   0.9725105
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                0.6169211    0.5794848   0.6543574
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                0.2992440    0.2320328   0.3664552
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                0.0825006    0.0558930   0.1091082
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0180659    0.0101858   0.0259460
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.6738934    0.5920314   0.7557553
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.1832351    0.1272267   0.2392435
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.1531584    0.1203310   0.1859859
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.0590600    0.0449313   0.0731887
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0115265    0.0019708   0.0210821
0-6 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                0.2402313    0.1900337   0.2904288
0-6 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.2927226    0.2371652   0.3482801
0-6 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.0891922    0.0669757   0.1114087
0-6 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.0410759    0.0284164   0.0537354
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0012126    0.0004590   0.0019662
0-6 months    ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.0577530    0.0374823   0.0780237
0-6 months    ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.0084527    0.0037897   0.0131157
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0144722    0.0105362   0.0184081
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.6521390    0.6153405   0.6889374
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.3709681    0.3464481   0.3954880
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.1375942    0.1263998   0.1487885
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.0479650    0.0425441   0.0533860
0-6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.0077504    0.0019518   0.0135490
0-6 months    ki1135781-COHORTS          INDIA                          <-3                  NA                0.7942175    0.7550777   0.8333573
0-6 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.3540649    0.3238165   0.3843134
0-6 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.0876415    0.0761647   0.0991183
0-6 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0185701    0.0133704   0.0237698
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1243303    0.1133566   0.1353039
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.9377842    0.9284204   0.9471480
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.6082751    0.5948424   0.6217078
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.1880333    0.1796198   0.1964469
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.0713259    0.0646054   0.0780464
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1493560    0.1238621   0.1748499
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.9662368    0.9379987   0.9944750
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.6758497    0.6343434   0.7173559
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.2396930    0.2142638   0.2651222
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.0858578    0.0639203   0.1077952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.1618522    0.0899273   0.2337770
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                0.1216351   -0.0302469   0.2735171
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                0.4021345    0.3160986   0.4881704
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                0.3518922    0.2934925   0.4102919
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                0.2788890    0.2327176   0.3250605
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                  NA                0.0429230    0.0160437   0.0698023
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)              NA                0.2370247    0.1824932   0.2915563
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)              NA                0.2237887    0.1795733   0.2680042
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)               NA                0.1547655    0.1149688   0.1945622
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1844763    0.1521458   0.2168068
6-24 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                0.4704471    0.3959510   0.5449433
6-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.5725647    0.5018970   0.6432324
6-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.3540484    0.3146833   0.3934134
6-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.2728834    0.2447667   0.3010001
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0308884    0.0223347   0.0394421
6-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.0602984    0.0469945   0.0736024
6-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.0467672    0.0355302   0.0580042
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0816841    0.0713000   0.0920681
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.2081722    0.1704930   0.2458513
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.2327969    0.2051844   0.2604094
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.1943985    0.1784897   0.2103073
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.1229090    0.1131432   0.1326748
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.3823063    0.3452578   0.4193548
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.1912924    0.1132530   0.2693318
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.6166196    0.5444514   0.6887879
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.5757352    0.5354137   0.6160567
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.4801300    0.4513486   0.5089114
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1244085    0.1098655   0.1389516
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.2667234    0.2365626   0.2968842
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.2961023    0.2776183   0.3145862
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.2076978    0.1962857   0.2191099
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.1464019    0.1341933   0.1586105
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.2257065    0.1945907   0.2568222
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.3868017    0.2926196   0.4809838
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.4278742    0.3718975   0.4838510
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.3191215    0.2875167   0.3507263
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.2791032    0.2429358   0.3152707


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
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                 5.4615310    4.5932458     6.4939527
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                 2.7010082    2.1254034     3.4324992
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                 2.5460853    2.1191451     3.0590403
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                 1.5651218    1.3151569     1.8625963
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                 2.5656095    2.1532343     3.0569605
0-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 3.1070079    2.6366138     3.6613241
0-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 2.1899123    1.8598601     2.5785356
0-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.4937249    1.2634305     1.7659966
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                 3.9422721    3.3746436     4.6053779
0-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                 2.0045979    1.8122503     2.2173607
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                 6.1907983    5.6406461     6.7946088
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                 4.5426893    4.1354202     4.9900674
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 3.1134832    2.8387950     3.4147509
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 1.7560664    1.5958594     1.9323564
0-24 months   ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <-3                  >=0                25.4838010   17.9680108    36.1433507
0-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              >=0                14.7961866   10.3977992    21.0551419
0-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              >=0                 7.4881478    5.2556020    10.6690646
0-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.8297714    1.9616445     4.0820884
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 1.6685538    1.4936603     1.8639256
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 1.7952854    1.6265034     1.9815819
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 1.5929352    1.4544011     1.7446649
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.2945893    1.1822921     1.4175528
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 4.2425555    3.9631480     4.5416615
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 3.1597828    2.9498830     3.3846180
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.6047671    1.4946991     1.7229404
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 0.9471192    0.8710133     1.0298749
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 2.5706628    2.3395328     2.8246269
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 2.2372802    2.0188344     2.4793626
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.4459218    1.2969464     1.6120095
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.0293350    0.9075064     1.1675185
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                16.7588559    8.6716122    32.3883547
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                11.1384569    5.6886787    21.8091458
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                 5.4028240    2.3821586    12.2538050
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                 1.4895413    0.7682337     2.8880966
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                37.3018698   23.7286162    58.6393019
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                10.1425725    5.9656002    17.2441620
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                 8.4777448    5.2228380    13.7611308
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                 3.2691335    1.9931433     5.3619997
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0                20.8417133    8.8624450    49.0132253
0-6 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                25.3956972   10.8478370    59.4534595
0-6 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 7.7380366    3.2567528    18.3855562
0-6 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 3.5636166    1.4721753     8.6262571
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                47.6282124   25.7708206    88.0238410
0-6 months    ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                 6.9708288    3.4676502    14.0130785
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                45.0615768   34.1336032    59.4881733
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                25.6331978   19.3759125    33.9112199
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 9.5074973    7.1581803    12.6278609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 3.3142940    2.4689401     4.4490931
0-6 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <-3                  >=0               102.4740989   48.4160399   216.8897116
0-6 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0                45.6833117   21.5145009    97.0027134
0-6 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0                11.3079631    5.2909499    24.1676885
0-6 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.3960112    1.0778693     5.3261281
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 7.5426874    6.9063544     8.2376504
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 4.8924143    4.4719486     5.3524135
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.5123700    1.3721562     1.6669115
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 0.5736812    0.5083984     0.6473468
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 6.4693552    5.4399435     7.6935645
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 4.5250930    3.7620456     5.4429077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.6048438    1.3161932     1.9567976
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 0.5748534    0.4247375     0.7780251
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                 0.7515199    0.2263333     2.4953560
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                 2.4845790    1.7144077     3.6007379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                 2.1741580    1.3106498     3.6065797
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                 1.7231096    0.9841098     3.0170482
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)              >=0                 5.5220872    2.8375673    10.7463344
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)              >=0                 5.2137208    2.7004238    10.0661550
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)               >=0                 3.6056502    1.8334395     7.0908873
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                 2.5501763    2.0173629     3.2237131
6-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 3.1037302    2.5081463     3.8407412
6-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 1.9192078    1.5621752     2.3578396
6-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.4792329    1.2099183     1.8084939
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                 1.9521386    1.4973767     2.5450143
6-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                 1.5140691    1.2660030     1.8107425
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                 2.5485041    2.0432504     3.1786966
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                 2.8499672    2.3958745     3.3901246
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 2.3798829    2.0467466     2.7672419
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 1.5046880    1.2958788     1.7471433
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 0.5003643    0.3291420     0.7606577
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 1.6128942    1.3866707     1.8760241
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 1.5059526    1.3376915     1.6953784
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.2558778    1.1222459     1.4054220
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 2.1439318    1.8324105     2.5084136
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 2.3800802    2.0941763     2.7050167
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.6694822    1.4741049     1.8907547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 1.1767836    1.0194950     1.3583388
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 1.7137378    1.3006644     2.2579977
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 1.8957111    1.5649315     2.2964077
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.4138783    1.1893610     1.6807781
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.2365762    1.0280375     1.4874173


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0767244   0.0589693   0.0944796
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1700053   0.1369160   0.2030947
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0382140   0.0316830   0.0447449
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1636879   0.1529008   0.1744749
0-24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.1960348   0.1816858   0.2103837
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1487068   0.1192162   0.1781973
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2200666   0.2057786   0.2343546
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1618534   0.1308321   0.1928747
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.2345542   0.1968354   0.2722731
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0494446   0.0391107   0.0597785
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0664482   0.0526807   0.0802157
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0078444   0.0049667   0.0107222
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0905392   0.0847048   0.0963737
0-6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.1114120   0.1021341   0.1206899
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1969546   0.1859597   0.2079495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1400767   0.1161866   0.1639669
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.1550934   0.0774881   0.2326988
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                  NA                0.1965136   0.1557316   0.2372956
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0865203   0.0558946   0.1171461
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0071414   0.0040201   0.0102627
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0547285   0.0448367   0.0646203
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1060552   0.0738673   0.1382430
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.0730384   0.0591291   0.0869478
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.0725293   0.0444188   0.1006399


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.3405185   0.2605580   0.4118323
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.4198616   0.3343076   0.4944203
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.3798243   0.3308199   0.4252400
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.5592336   0.5231295   0.5926042
0-24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.8518327   0.7910422   0.8949378
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.2610611   0.2072420   0.3112265
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.4961065   0.4629353   0.5272290
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.2977336   0.2376967   0.3530421
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.8089728   0.6332365   0.9005043
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.7323983   0.5980038   0.8218623
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.8521768   0.6661050   0.9345552
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.8661169   0.7671980   0.9230046
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.8621848   0.8199205   0.8945297
0-6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.9349592   0.8629937   0.9691232
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.6130217   0.5789954   0.6442980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.4839700   0.3961853   0.5589922
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.4893377   0.1964943   0.6754522
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                  NA                0.8207332   0.6703559   0.9025113
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.3192672   0.2005236   0.4203741
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.1877845   0.1095527   0.2591431
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.4011985   0.3273908   0.4669069
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.2171653   0.1484507   0.2803351
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.3699141   0.2971166   0.4351721
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.2431946   0.1439952   0.3308981
