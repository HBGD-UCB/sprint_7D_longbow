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

**Intervention Variable:** birthlen

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

agecat        studyid                    country                        birthlen    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0                    0       39     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0                    1        0     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3                    0        0     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3                    1        9     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)                0        0     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)                1       38     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)                0       83     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)                1        0     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                 0       88     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                 1        0     257
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=0                    0       44     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=0                    1        0     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <-3                    0        0     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <-3                    1        8     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)                0        0     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)                1       13     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)                0       48     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)                1        0     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)                 0       78     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)                 1        0     191
0-6 months    ki0047075b-MAL-ED          INDIA                          >=0                    0       34     206
0-6 months    ki0047075b-MAL-ED          INDIA                          >=0                    1        0     206
0-6 months    ki0047075b-MAL-ED          INDIA                          <-3                    0        0     206
0-6 months    ki0047075b-MAL-ED          INDIA                          <-3                    1        7     206
0-6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)                0        0     206
0-6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)                1       26     206
0-6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)                0       66     206
0-6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)                1        0     206
0-6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)                 0       73     206
0-6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)                 1        0     206
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=0                    0       45     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=0                    1        0     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          <-3                    0        0     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          <-3                    1        6     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)                0        0     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)                1       12     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)                0       46     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)                1        0     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)                 0       64     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)                 1        0     173
0-6 months    ki0047075b-MAL-ED          PERU                           >=0                    0       44     287
0-6 months    ki0047075b-MAL-ED          PERU                           >=0                    1        0     287
0-6 months    ki0047075b-MAL-ED          PERU                           <-3                    0        0     287
0-6 months    ki0047075b-MAL-ED          PERU                           <-3                    1        8     287
0-6 months    ki0047075b-MAL-ED          PERU                           [-3--2)                0        0     287
0-6 months    ki0047075b-MAL-ED          PERU                           [-3--2)                1       26     287
0-6 months    ki0047075b-MAL-ED          PERU                           [-2--1)                0       94     287
0-6 months    ki0047075b-MAL-ED          PERU                           [-2--1)                1        0     287
0-6 months    ki0047075b-MAL-ED          PERU                           [-1-0)                 0      115     287
0-6 months    ki0047075b-MAL-ED          PERU                           [-1-0)                 1        0     287
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                    0       59     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                    1        0     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                    0        0     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                    1        2     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)                0        0     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)                1       26     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)                0       73     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)                1        0     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                 0      102     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                 1        0     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                    0       24     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                    1        0     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3                    0        0     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3                    1        6     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)                0        0     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)                1       12     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)                0       32     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)                1        0     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                 0       49     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                 1        0     123
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                    0       14      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                    1        0      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                    0        0      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                    1        3      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)                0        0      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)                1       13      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)                0       22      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)                1        0      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                 0       40      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                 1        0      92
0-6 months    ki1000108-IRC              INDIA                          >=0                    0      143     388
0-6 months    ki1000108-IRC              INDIA                          >=0                    1        0     388
0-6 months    ki1000108-IRC              INDIA                          <-3                    0        0     388
0-6 months    ki1000108-IRC              INDIA                          <-3                    1       16     388
0-6 months    ki1000108-IRC              INDIA                          [-3--2)                0        0     388
0-6 months    ki1000108-IRC              INDIA                          [-3--2)                1       27     388
0-6 months    ki1000108-IRC              INDIA                          [-2--1)                0       63     388
0-6 months    ki1000108-IRC              INDIA                          [-2--1)                1        2     388
0-6 months    ki1000108-IRC              INDIA                          [-1-0)                 0      137     388
0-6 months    ki1000108-IRC              INDIA                          [-1-0)                 1        0     388
0-6 months    ki1000109-EE               PAKISTAN                       >=0                    0        1       2
0-6 months    ki1000109-EE               PAKISTAN                       >=0                    1        0       2
0-6 months    ki1000109-EE               PAKISTAN                       [-3--2)                0        0       2
0-6 months    ki1000109-EE               PAKISTAN                       [-3--2)                1        1       2
0-6 months    ki1000109-ResPak           PAKISTAN                       >=0                    0        3       7
0-6 months    ki1000109-ResPak           PAKISTAN                       >=0                    1        0       7
0-6 months    ki1000109-ResPak           PAKISTAN                       [-3--2)                0        0       7
0-6 months    ki1000109-ResPak           PAKISTAN                       [-3--2)                1        2       7
0-6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)                 0        2       7
0-6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)                 1        0       7
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                    0      265    1515
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                    1       11    1515
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                    0        0    1515
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                    1       86    1515
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)                0        1    1515
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)                1      218    1515
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)                0      338    1515
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)                1      110    1515
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                 0      473    1515
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                 1       13    1515
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0                    0        7      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0                    1        0      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)                0        0      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)                1        1      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)                0        9      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)                1        0      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                 0       11      28
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                 1        0      28
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0                    0      219     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0                    1        0     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3                    0        0     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3                    1        1     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)                0        0     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)                1       21     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)                0      136     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)                1       44     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                 0      279     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                 1        0     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                    0      222     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                    1        0     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                    0        0     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                    1        6     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)                0        0     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)                1       47     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)                0      135     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)                1       52     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                 0      296     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                 1        0     758
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                    0      825    1541
0-6 months    ki1101329-Keneba           GAMBIA                         >=0                    1        0    1541
0-6 months    ki1101329-Keneba           GAMBIA                         <-3                    0        0    1541
0-6 months    ki1101329-Keneba           GAMBIA                         <-3                    1       30    1541
0-6 months    ki1101329-Keneba           GAMBIA                         [-3--2)                0        0    1541
0-6 months    ki1101329-Keneba           GAMBIA                         [-3--2)                1       52    1541
0-6 months    ki1101329-Keneba           GAMBIA                         [-2--1)                0      163    1541
0-6 months    ki1101329-Keneba           GAMBIA                         [-2--1)                1        0    1541
0-6 months    ki1101329-Keneba           GAMBIA                         [-1-0)                 0      471    1541
0-6 months    ki1101329-Keneba           GAMBIA                         [-1-0)                 1        0    1541
0-6 months    ki1114097-CMIN             BANGLADESH                     >=0                    0        2      13
0-6 months    ki1114097-CMIN             BANGLADESH                     >=0                    1        0      13
0-6 months    ki1114097-CMIN             BANGLADESH                     <-3                    0        0      13
0-6 months    ki1114097-CMIN             BANGLADESH                     <-3                    1        5      13
0-6 months    ki1114097-CMIN             BANGLADESH                     [-3--2)                0        0      13
0-6 months    ki1114097-CMIN             BANGLADESH                     [-3--2)                1        1      13
0-6 months    ki1114097-CMIN             BANGLADESH                     [-2--1)                0        4      13
0-6 months    ki1114097-CMIN             BANGLADESH                     [-2--1)                1        0      13
0-6 months    ki1114097-CMIN             BANGLADESH                     [-1-0)                 0        1      13
0-6 months    ki1114097-CMIN             BANGLADESH                     [-1-0)                 1        0      13
0-6 months    ki1114097-CMIN             BRAZIL                         >=0                    0       63     115
0-6 months    ki1114097-CMIN             BRAZIL                         >=0                    1        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         <-3                    0        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         <-3                    1        3     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-3--2)                0        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-3--2)                1        2     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-2--1)                0       11     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-2--1)                1        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-1-0)                 0       36     115
0-6 months    ki1114097-CMIN             BRAZIL                         [-1-0)                 1        0     115
0-6 months    ki1114097-CMIN             PERU                           >=0                    0       10      10
0-6 months    ki1114097-CONTENT          PERU                           >=0                    0        1       2
0-6 months    ki1114097-CONTENT          PERU                           [-2--1)                0        1       2
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                    0    15295   16887
0-6 months    ki1119695-PROBIT           BELARUS                        >=0                    1       34   16887
0-6 months    ki1119695-PROBIT           BELARUS                        <-3                    0        1   16887
0-6 months    ki1119695-PROBIT           BELARUS                        <-3                    1        7   16887
0-6 months    ki1119695-PROBIT           BELARUS                        [-3--2)                0        4   16887
0-6 months    ki1119695-PROBIT           BELARUS                        [-3--2)                1       34   16887
0-6 months    ki1119695-PROBIT           BELARUS                        [-2--1)                0      131   16887
0-6 months    ki1119695-PROBIT           BELARUS                        [-2--1)                1       13   16887
0-6 months    ki1119695-PROBIT           BELARUS                        [-1-0)                 0     1303   16887
0-6 months    ki1119695-PROBIT           BELARUS                        [-1-0)                 1       65   16887
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                    0     4675   13872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                    1        3   13872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                    0        1   13872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                    1      450   13872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)                0        0   13872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)                1      983   13872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)                0     2570   13872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)                1        3   13872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                 0     5186   13872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                 1        1   13872
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=0                    0      490     852
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=0                    1        0     852
0-6 months    ki1135781-COHORTS          GUATEMALA                      <-3                    0        0     852
0-6 months    ki1135781-COHORTS          GUATEMALA                      <-3                    1       11     852
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)                0        0     852
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)                1       39     852
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)                0       81     852
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)                1        0     852
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)                 0      231     852
0-6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)                 1        0     852
0-6 months    ki1135781-COHORTS          INDIA                          >=0                    0     1852    6640
0-6 months    ki1135781-COHORTS          INDIA                          >=0                    1        0    6640
0-6 months    ki1135781-COHORTS          INDIA                          <-3                    0        0    6640
0-6 months    ki1135781-COHORTS          INDIA                          <-3                    1      214    6640
0-6 months    ki1135781-COHORTS          INDIA                          [-3--2)                0        0    6640
0-6 months    ki1135781-COHORTS          INDIA                          [-3--2)                1      578    6640
0-6 months    ki1135781-COHORTS          INDIA                          [-2--1)                0     1568    6640
0-6 months    ki1135781-COHORTS          INDIA                          [-2--1)                1        0    6640
0-6 months    ki1135781-COHORTS          INDIA                          [-1-0)                 0     2428    6640
0-6 months    ki1135781-COHORTS          INDIA                          [-1-0)                 1        0    6640
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                    0     1328    3050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                    1        0    3050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                    0        0    3050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                    1       49    3050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)                0        0    3050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)                1      138    3050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)                0      448    3050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)                1        0    3050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)                 0     1087    3050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)                 1        0    3050
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                    0     4167   26659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                    1      401   26659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                    0        0   26659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                    1     2522   26659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)                0        1   26659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)                1     4912   26659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)                0     7737   26659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)                1      498   26659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                 0     6187   26659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                 1      234   26659
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                    0     1221    4452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                    1      163    4452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                    0        0    4452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                    1      235    4452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)                0        0    4452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)                1      589    4452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)                0      920    4452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)                1      204    4452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                 0     1015    4452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                 1      105    4452
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0                    0       31     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0                    1        7     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3                    0        1     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3                    1        2     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)                0        5     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)                1       11     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)                0       33     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)                1       27     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                 0       50     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                 1       24     191
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                    0       38     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                    1        1     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <-3                    0        7     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <-3                    1        0     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)                0        8     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)                1        1     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)                0       37     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)                1        3     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)                 0       72     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)                 1        2     169
6-24 months   ki0047075b-MAL-ED          INDIA                          >=0                    0       29     156
6-24 months   ki0047075b-MAL-ED          INDIA                          >=0                    1        4     156
6-24 months   ki0047075b-MAL-ED          INDIA                          <-3                    0        1     156
6-24 months   ki0047075b-MAL-ED          INDIA                          <-3                    1        1     156
6-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)                0        9     156
6-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)                1        8     156
6-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)                0       31     156
6-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)                1       14     156
6-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)                 0       39     156
6-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)                 1       20     156
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=0                    0       45     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=0                    1        0     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          <-3                    0        2     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          <-3                    1        1     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)                0        7     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)                1        3     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)                0       31     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)                1       11     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)                 0       54     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)                 1        9     163
6-24 months   ki0047075b-MAL-ED          PERU                           >=0                    0       31     218
6-24 months   ki0047075b-MAL-ED          PERU                           >=0                    1        9     218
6-24 months   ki0047075b-MAL-ED          PERU                           <-3                    0        1     218
6-24 months   ki0047075b-MAL-ED          PERU                           <-3                    1        1     218
6-24 months   ki0047075b-MAL-ED          PERU                           [-3--2)                0        7     218
6-24 months   ki0047075b-MAL-ED          PERU                           [-3--2)                1        5     218
6-24 months   ki0047075b-MAL-ED          PERU                           [-2--1)                0       42     218
6-24 months   ki0047075b-MAL-ED          PERU                           [-2--1)                1       27     218
6-24 months   ki0047075b-MAL-ED          PERU                           [-1-0)                 0       66     218
6-24 months   ki0047075b-MAL-ED          PERU                           [-1-0)                 1       29     218
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                    0       37     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                    1       10     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                    0        1     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                    1        0     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)                0        8     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)                1        9     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)                0       37     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)                1        9     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                 0       58     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                 1       20     189
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                    0       15      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                    1        8      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3                    0        0      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3                    1        2      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)                0        0      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)                1        4      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)                0        4      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)                1       19      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                 0       14      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                 1       27      93
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                    0        4      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                    1       11      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                    0        0      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                    1        2      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)                0        4      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)                1        5      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)                0        8      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)                1       11      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                 0       13      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                 1       20      78
6-24 months   ki1000108-IRC              INDIA                          >=0                    0      107     322
6-24 months   ki1000108-IRC              INDIA                          >=0                    1       24     322
6-24 months   ki1000108-IRC              INDIA                          <-3                    0       10     322
6-24 months   ki1000108-IRC              INDIA                          <-3                    1        1     322
6-24 months   ki1000108-IRC              INDIA                          [-3--2)                0        9     322
6-24 months   ki1000108-IRC              INDIA                          [-3--2)                1        9     322
6-24 months   ki1000108-IRC              INDIA                          [-2--1)                0       32     322
6-24 months   ki1000108-IRC              INDIA                          [-2--1)                1       16     322
6-24 months   ki1000108-IRC              INDIA                          [-1-0)                 0       84     322
6-24 months   ki1000108-IRC              INDIA                          [-1-0)                 1       30     322
6-24 months   ki1000109-EE               PAKISTAN                       >=0                    1        1       1
6-24 months   ki1000109-ResPak           PAKISTAN                       >=0                    0        1       4
6-24 months   ki1000109-ResPak           PAKISTAN                       [-3--2)                0        1       4
6-24 months   ki1000109-ResPak           PAKISTAN                       [-1-0)                 0        2       4
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                    0      181     952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                    1       56     952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                    0        7     952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                    1        5     952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)                0       39     952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)                1       40     952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)                0      150     952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)                1      107     952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                 0      273     952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                 1       94     952
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0                    0        2      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0                    1        1      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)                0        2      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)                1        5      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                 0        0      14
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                 1        4      14
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                    0      160     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                    1       29     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)                0        5     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)                1        3     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)                0       58     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)                1       36     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                 0      155     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                 1       51     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                    0      197     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                    1       17     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                    0        1     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                    1        0     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)                0       19     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)                1        7     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)                0       93     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)                1       42     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                 0      193     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                 1       51     620
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                    0      602    1312
6-24 months   ki1101329-Keneba           GAMBIA                         >=0                    1      163    1312
6-24 months   ki1101329-Keneba           GAMBIA                         <-3                    0       14    1312
6-24 months   ki1101329-Keneba           GAMBIA                         <-3                    1        9    1312
6-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)                0       14    1312
6-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)                1       17    1312
6-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)                0       65    1312
6-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)                1       48    1312
6-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)                 0      264    1312
6-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)                 1      116    1312
6-24 months   ki1114097-CMIN             BRAZIL                         >=0                    0       50     100
6-24 months   ki1114097-CMIN             BRAZIL                         >=0                    1        8     100
6-24 months   ki1114097-CMIN             BRAZIL                         <-3                    0        2     100
6-24 months   ki1114097-CMIN             BRAZIL                         <-3                    1        0     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-3--2)                0        1     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-3--2)                1        0     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-2--1)                0        7     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-2--1)                1        1     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-1-0)                 0       26     100
6-24 months   ki1114097-CMIN             BRAZIL                         [-1-0)                 1        5     100
6-24 months   ki1114097-CMIN             PERU                           >=0                    0        8       9
6-24 months   ki1114097-CMIN             PERU                           >=0                    1        1       9
6-24 months   ki1114097-CONTENT          PERU                           >=0                    0        1       2
6-24 months   ki1114097-CONTENT          PERU                           [-2--1)                0        1       2
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                    0    14365   16297
6-24 months   ki1119695-PROBIT           BELARUS                        >=0                    1      521   16297
6-24 months   ki1119695-PROBIT           BELARUS                        <-3                    0        5   16297
6-24 months   ki1119695-PROBIT           BELARUS                        <-3                    1        0   16297
6-24 months   ki1119695-PROBIT           BELARUS                        [-3--2)                0       29   16297
6-24 months   ki1119695-PROBIT           BELARUS                        [-3--2)                1        3   16297
6-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)                0      117   16297
6-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)                1        5   16297
6-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)                 0     1161   16297
6-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)                 1       91   16297
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                    0     2963    9174
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                    1      308    9174
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                    0      142    9174
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                    1       39    9174
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)                0      424    9174
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)                1      119    9174
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)                0     1282    9174
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)                1      321    9174
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                 0     3112    9174
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                 1      464    9174
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                    0      135     412
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                    1      170     412
6-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                    0        0     412
6-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                    1        1     412
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)                0        0     412
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)                1        1     412
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)                0        4     412
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)                1       11     412
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)                 0       30     412
6-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)                 1       60     412
6-24 months   ki1135781-COHORTS          INDIA                          >=0                    0     1673    5022
6-24 months   ki1135781-COHORTS          INDIA                          <-3                    0       56    5022
6-24 months   ki1135781-COHORTS          INDIA                          [-3--2)                0      253    5022
6-24 months   ki1135781-COHORTS          INDIA                          [-2--1)                0     1050    5022
6-24 months   ki1135781-COHORTS          INDIA                          [-1-0)                 0     1990    5022
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                    0      685    2217
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                    1      425    2217
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                    0        2    2217
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                    1        2    2217
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)                0       14    2217
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)                1       38    2217
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)                0      100    2217
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)                1      160    2217
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)                 0      327    2217
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)                 1      464    2217
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                    0     2479   13027
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                    1      251   13027
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                    0      277   13027
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                    1      140   13027
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)                0     1178   13027
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)                1      569   13027
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)                0     3176   13027
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)                1     1047   13027
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                 0     3343   13027
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                 1      567   13027
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                    0      964    3532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                    1      274    3532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                    0       53    3532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                    1       34    3532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)                0      193    3532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)                1      158    3532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)                0      544    3532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)                1      320    3532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                 0      721    3532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                 1      271    3532
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0                    0       32     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0                    1        7     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3                    0        0     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3                    1        9     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)                0        0     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)                1       38     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)                0       39     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)                1       44     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                 0       57     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)                 1       31     257
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                    0       43     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                    1        1     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <-3                    0        0     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <-3                    1        8     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)                0        0     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)                1       13     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)                0       43     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)                1        5     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)                 0       75     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)                 1        3     191
0-24 months   ki0047075b-MAL-ED          INDIA                          >=0                    0       30     206
0-24 months   ki0047075b-MAL-ED          INDIA                          >=0                    1        4     206
0-24 months   ki0047075b-MAL-ED          INDIA                          <-3                    0        0     206
0-24 months   ki0047075b-MAL-ED          INDIA                          <-3                    1        7     206
0-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)                0        0     206
0-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)                1       26     206
0-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)                0       31     206
0-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)                1       35     206
0-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)                 0       47     206
0-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)                 1       26     206
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=0                    0       45     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=0                    1        0     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          <-3                    0        0     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          <-3                    1        6     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)                0        0     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)                1       12     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)                0       33     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)                1       13     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)                 0       55     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)                 1        9     173
0-24 months   ki0047075b-MAL-ED          PERU                           >=0                    0       35     287
0-24 months   ki0047075b-MAL-ED          PERU                           >=0                    1        9     287
0-24 months   ki0047075b-MAL-ED          PERU                           <-3                    0        0     287
0-24 months   ki0047075b-MAL-ED          PERU                           <-3                    1        8     287
0-24 months   ki0047075b-MAL-ED          PERU                           [-3--2)                0        0     287
0-24 months   ki0047075b-MAL-ED          PERU                           [-3--2)                1       26     287
0-24 months   ki0047075b-MAL-ED          PERU                           [-2--1)                0       46     287
0-24 months   ki0047075b-MAL-ED          PERU                           [-2--1)                1       48     287
0-24 months   ki0047075b-MAL-ED          PERU                           [-1-0)                 0       77     287
0-24 months   ki0047075b-MAL-ED          PERU                           [-1-0)                 1       38     287
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                    0       46     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0                    1       13     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                    0        0     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3                    1        2     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)                0        0     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)                1       26     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)                0       49     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)                1       24     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                 0       68     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)                 1       34     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                    0       16     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                    1        8     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3                    0        0     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3                    1        6     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)                0        0     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)                1       12     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)                0        6     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)                1       26     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                 0       17     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)                 1       32     123
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                    0        4      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                    1       11      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                    0        0      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                    1        3      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)                0        0      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)                1       13      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)                0        7      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)                1       15      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                 0       13      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)                 1       27      93
0-24 months   ki1000108-IRC              INDIA                          >=0                    0       98     388
0-24 months   ki1000108-IRC              INDIA                          >=0                    1       45     388
0-24 months   ki1000108-IRC              INDIA                          <-3                    0        0     388
0-24 months   ki1000108-IRC              INDIA                          <-3                    1       16     388
0-24 months   ki1000108-IRC              INDIA                          [-3--2)                0        0     388
0-24 months   ki1000108-IRC              INDIA                          [-3--2)                1       27     388
0-24 months   ki1000108-IRC              INDIA                          [-2--1)                0       27     388
0-24 months   ki1000108-IRC              INDIA                          [-2--1)                1       38     388
0-24 months   ki1000108-IRC              INDIA                          [-1-0)                 0       78     388
0-24 months   ki1000108-IRC              INDIA                          [-1-0)                 1       59     388
0-24 months   ki1000109-EE               PAKISTAN                       >=0                    1        1       2
0-24 months   ki1000109-EE               PAKISTAN                       [-3--2)                1        1       2
0-24 months   ki1000109-ResPak           PAKISTAN                       >=0                    0        2       7
0-24 months   ki1000109-ResPak           PAKISTAN                       >=0                    1        1       7
0-24 months   ki1000109-ResPak           PAKISTAN                       [-3--2)                0        0       7
0-24 months   ki1000109-ResPak           PAKISTAN                       [-3--2)                1        2       7
0-24 months   ki1000109-ResPak           PAKISTAN                       [-1-0)                 0        2       7
0-24 months   ki1000109-ResPak           PAKISTAN                       [-1-0)                 1        0       7
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                    0      179    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0                    1       97    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                    0        0    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3                    1       86    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)                0        1    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)                1      218    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)                0      137    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)                1      311    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                 0      297    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)                 1      189    1515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0                    0        6      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0                    1        1      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)                0        0      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)                1        1      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)                0        3      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)                1        6      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                 0        6      28
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)                 1        5      28
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                    0      182     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0                    1       37     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3                    0        0     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3                    1        1     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)                0        0     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)                1       21     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)                0       63     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)                1      117     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                 0      192     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)                 1       87     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                    0      199     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                    1       23     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                    0        0     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                    1        6     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)                0        0     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)                1       47     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)                0       65     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)                1      122     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                 0      200     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)                 1       96     758
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                    0      603    1541
0-24 months   ki1101329-Keneba           GAMBIA                         >=0                    1      222    1541
0-24 months   ki1101329-Keneba           GAMBIA                         <-3                    0        0    1541
0-24 months   ki1101329-Keneba           GAMBIA                         <-3                    1       30    1541
0-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)                0        0    1541
0-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)                1       52    1541
0-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)                0       75    1541
0-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)                1       88    1541
0-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)                 0      264    1541
0-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)                 1      207    1541
0-24 months   ki1114097-CMIN             BANGLADESH                     >=0                    0        2      13
0-24 months   ki1114097-CMIN             BANGLADESH                     >=0                    1        0      13
0-24 months   ki1114097-CMIN             BANGLADESH                     <-3                    0        0      13
0-24 months   ki1114097-CMIN             BANGLADESH                     <-3                    1        5      13
0-24 months   ki1114097-CMIN             BANGLADESH                     [-3--2)                0        0      13
0-24 months   ki1114097-CMIN             BANGLADESH                     [-3--2)                1        1      13
0-24 months   ki1114097-CMIN             BANGLADESH                     [-2--1)                0        4      13
0-24 months   ki1114097-CMIN             BANGLADESH                     [-2--1)                1        0      13
0-24 months   ki1114097-CMIN             BANGLADESH                     [-1-0)                 0        1      13
0-24 months   ki1114097-CMIN             BANGLADESH                     [-1-0)                 1        0      13
0-24 months   ki1114097-CMIN             BRAZIL                         >=0                    0       49     115
0-24 months   ki1114097-CMIN             BRAZIL                         >=0                    1       14     115
0-24 months   ki1114097-CMIN             BRAZIL                         <-3                    0        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         <-3                    1        3     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-3--2)                0        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-3--2)                1        2     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-2--1)                0        7     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-2--1)                1        4     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-1-0)                 0       25     115
0-24 months   ki1114097-CMIN             BRAZIL                         [-1-0)                 1       11     115
0-24 months   ki1114097-CMIN             PERU                           >=0                    0        9      10
0-24 months   ki1114097-CMIN             PERU                           >=0                    1        1      10
0-24 months   ki1114097-CONTENT          PERU                           >=0                    0        1       2
0-24 months   ki1114097-CONTENT          PERU                           [-2--1)                0        1       2
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                    0    14103   16891
0-24 months   ki1119695-PROBIT           BELARUS                        >=0                    1     1230   16891
0-24 months   ki1119695-PROBIT           BELARUS                        <-3                    0        1   16891
0-24 months   ki1119695-PROBIT           BELARUS                        <-3                    1        7   16891
0-24 months   ki1119695-PROBIT           BELARUS                        [-3--2)                0        2   16891
0-24 months   ki1119695-PROBIT           BELARUS                        [-3--2)                1       36   16891
0-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)                0       89   16891
0-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)                1       55   16891
0-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)                 0      996   16891
0-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)                 1      372   16891
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                    0     4002   13874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                    1      676   13874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                    0        1   13874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                    1      450   13874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)                0        0   13874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)                1      983   13874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)                0     1784   13874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)                1      790   13874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                 0     4042   13874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)                 1     1146   13874
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                    0      211     852
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                    1      279     852
0-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                    0        0     852
0-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                    1       11     852
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)                0        0     852
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)                1       39     852
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)                0       14     852
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)                1       67     852
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)                 0       53     852
0-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)                 1      178     852
0-24 months   ki1135781-COHORTS          INDIA                          >=0                    0     1781    6640
0-24 months   ki1135781-COHORTS          INDIA                          >=0                    1       71    6640
0-24 months   ki1135781-COHORTS          INDIA                          <-3                    0        0    6640
0-24 months   ki1135781-COHORTS          INDIA                          <-3                    1      214    6640
0-24 months   ki1135781-COHORTS          INDIA                          [-3--2)                0        0    6640
0-24 months   ki1135781-COHORTS          INDIA                          [-3--2)                1      578    6640
0-24 months   ki1135781-COHORTS          INDIA                          [-2--1)                0     1169    6640
0-24 months   ki1135781-COHORTS          INDIA                          [-2--1)                1      399    6640
0-24 months   ki1135781-COHORTS          INDIA                          [-1-0)                 0     2148    6640
0-24 months   ki1135781-COHORTS          INDIA                          [-1-0)                 1      280    6640
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                    0      783    3050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                    1      545    3050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                    0        0    3050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                    1       49    3050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)                0        0    3050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)                1      138    3050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)                0      127    3050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)                1      321    3050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)                 0      394    3050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)                 1      693    3050
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                    0     3812   26660
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                    1      756   26660
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                    0        0   26660
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                    1     2522   26660
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)                0        1   26660
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)                1     4912   26660
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)                0     5685   26660
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)                1     2551   26660
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                 0     5333   26660
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)                 1     1088   26660
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                    0      898    4455
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                    1      486    4455
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                    0        0    4455
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                    1      238    4455
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)                0        0    4455
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)                1      589    4455
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)                0      455    4455
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)                1      669    4455
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                 0      671    4455
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)                 1      449    4455


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## birthlen   0
##   >=0     10
##   <-3      0
##   [-3--2)  0
##   [-2--1)  0
##   [-1-0)   0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##          ever_stunted
## birthlen     0
##   >=0     1673
##   <-3       56
##   [-3--2)  253
##   [-2--1) 1050
##   [-1-0)  1990
```




# Results Detail

## Results Plots
![](/tmp/66652035-a70a-4bbd-9cde-00ecfc07eac7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/66652035-a70a-4bbd-9cde-00ecfc07eac7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/66652035-a70a-4bbd-9cde-00ecfc07eac7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/66652035-a70a-4bbd-9cde-00ecfc07eac7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
6-24 months   ki1000304b-SAS-CompFeed   INDIA        >=0                  NA                0.2184901    0.1889445   0.2480357
6-24 months   ki1000304b-SAS-CompFeed   INDIA        <-3                  NA                0.0953644   -0.1164876   0.3072164
6-24 months   ki1000304b-SAS-CompFeed   INDIA        [-3--2)              NA                0.4313057    0.3554208   0.5071905
6-24 months   ki1000304b-SAS-CompFeed   INDIA        [-2--1)              NA                0.3973108    0.3295506   0.4650709
6-24 months   ki1000304b-SAS-CompFeed   INDIA        [-1-0)               NA                0.2534713    0.2124540   0.2944887
6-24 months   ki1101329-Keneba          GAMBIA       >=0                  NA                0.2108329    0.1830985   0.2385673
6-24 months   ki1101329-Keneba          GAMBIA       <-3                  NA                0.2809624    0.1712668   0.3906580
6-24 months   ki1101329-Keneba          GAMBIA       [-3--2)              NA                0.4567175    0.3568745   0.5565605
6-24 months   ki1101329-Keneba          GAMBIA       [-2--1)              NA                0.3817776    0.3111412   0.4524140
6-24 months   ki1101329-Keneba          GAMBIA       [-1-0)               NA                0.3017188    0.2597230   0.3437147
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     >=0                  NA                0.0938102    0.0840476   0.1035728
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     <-3                  NA                0.2009778    0.1576114   0.2443442
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     [-3--2)              NA                0.2147667    0.1841127   0.2454207
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     [-2--1)              NA                0.1995732    0.1810417   0.2181047
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     [-1-0)               NA                0.1303173    0.1194907   0.1411439
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.1006526    0.0895570   0.1117482
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   <-3                  NA                0.3480929    0.3100578   0.3861281
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   [-3--2)              NA                0.3167297    0.2946888   0.3387706
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   [-2--1)              NA                0.2397463    0.2265484   0.2529442
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   [-1-0)               NA                0.1484617    0.1375147   0.1594087
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.2207404    0.1936356   0.2478451
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   <-3                  NA                0.3924801    0.2895103   0.4954498
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   [-3--2)              NA                0.4523858    0.3869481   0.5178235
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   [-2--1)              NA                0.3709024    0.3333134   0.4084914
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   [-1-0)               NA                0.2728760    0.2384432   0.3073088


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3172269   0.2868298   0.3476240
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.2690549   0.2450494   0.2930603
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1363636   0.1293409   0.1433864
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1975896   0.1895773   0.2056019
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2992639   0.2810120   0.3175157


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
6-24 months   ki1000304b-SAS-CompFeed   INDIA        >=0                  >=0               1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        <-3                  >=0               0.4364701   0.0483696   3.938550
6-24 months   ki1000304b-SAS-CompFeed   INDIA        [-3--2)              >=0               1.9740281   1.5539536   2.507660
6-24 months   ki1000304b-SAS-CompFeed   INDIA        [-2--1)              >=0               1.8184380   1.4592962   2.265967
6-24 months   ki1000304b-SAS-CompFeed   INDIA        [-1-0)               >=0               1.1601043   0.9943021   1.353554
6-24 months   ki1101329-Keneba          GAMBIA       >=0                  >=0               1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       <-3                  >=0               1.3326309   0.8840170   2.008904
6-24 months   ki1101329-Keneba          GAMBIA       [-3--2)              >=0               2.1662538   1.6827628   2.788661
6-24 months   ki1101329-Keneba          GAMBIA       [-2--1)              >=0               1.8108070   1.4480654   2.264416
6-24 months   ki1101329-Keneba          GAMBIA       [-1-0)               >=0               1.4310807   1.1878262   1.724151
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     >=0                  >=0               1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     <-3                  >=0               2.1423875   1.6863070   2.721820
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     [-3--2)              >=0               2.2893746   1.9192483   2.730880
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     [-2--1)              >=0               2.1274143   1.8509438   2.445181
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     [-1-0)               >=0               1.3891594   1.2164070   1.586446
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  >=0               1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   <-3                  >=0               3.4583614   2.9789774   4.014889
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   [-3--2)              >=0               3.1467623   2.7669931   3.578655
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   [-2--1)              >=0               2.3819194   2.1128443   2.685262
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   [-1-0)               >=0               1.4749914   1.2996682   1.673965
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  >=0               1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   <-3                  >=0               1.7780168   1.3312133   2.374784
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   [-3--2)              >=0               2.0494023   1.7019727   2.467754
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   [-2--1)              >=0               1.6802656   1.4310926   1.972823
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   [-1-0)               >=0               1.2361855   1.0367204   1.474028


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6-24 months   ki1000304b-SAS-CompFeed   INDIA        >=0                  NA                0.0987368   0.0691524   0.1283211
6-24 months   ki1101329-Keneba          GAMBIA       >=0                  NA                0.0582220   0.0386712   0.0777728
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     >=0                  NA                0.0425534   0.0339180   0.0511889
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.0969371   0.0862027   0.1076714
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.0785235   0.0549300   0.1021170


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6-24 months   ki1000304b-SAS-CompFeed   INDIA        >=0                  NA                0.3112497   0.2241832   0.3885450
6-24 months   ki1101329-Keneba          GAMBIA       >=0                  NA                0.2163946   0.1417242   0.2845685
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     >=0                  NA                0.3120585   0.2476668   0.3709389
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.4905979   0.4365413   0.5394685
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.2623889   0.1805930   0.3360196
