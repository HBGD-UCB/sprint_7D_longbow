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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        birthlen      wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0        4     119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1       12     119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0       25     119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       43     119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       15     119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       20     119
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0        0      22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        6      22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0        3      22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        6      22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0        2      22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        5      22
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        3     144
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        9     144
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  0       35     144
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  1       45     144
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       19     144
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       33     144
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        4      72
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        8      72
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0        8      72
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1       38      72
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        1      72
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1       13      72
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 0        0      34
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        4      34
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  0        5      34
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  1       17      34
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              0        1      34
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        7      34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0        1      72
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1       10      72
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0        8      72
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1       25      72
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0        5      72
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1       23      72
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0      24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1      24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        2      24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       14      24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        1      24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        6      24
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0        3      87
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        3      87
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       19      87
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       26      87
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0        9      87
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       27      87
0-24 months   ki1000108-IRC              INDIA                          >=50 cm                 0       62     387
0-24 months   ki1000108-IRC              INDIA                          >=50 cm                 1      100     387
0-24 months   ki1000108-IRC              INDIA                          <48 cm                  0       50     387
0-24 months   ki1000108-IRC              INDIA                          <48 cm                  1       57     387
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm              0       47     387
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm              1       71     387
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 0       12     126
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 1       16     126
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  0       30     126
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  1       32     126
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              0       20     126
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              1       16     126
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        2      10
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        3      10
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        0      10
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        2      10
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        3      10
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        0      10
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       49     809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       42     809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      309     809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      166     809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      141     809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1      102     809
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0        7     170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1       18     170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       43     170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       39     170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       33     170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       30     170
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0       18     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1       41     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0       63     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       80     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0       47     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       58     307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0       14     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1       54     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0       59     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1       62     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0       44     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1       78     311
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      170     919
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      273     919
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  0       92     919
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  1       86     919
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      143     919
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      155     919
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1       3
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0       3
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                  0        2       3
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0       3
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        0       3
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0       3
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm                 0        4      13
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm                 1        5      13
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                  0        0      13
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                  1        0      13
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm              0        3      13
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm              1        1      13
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 0        0       1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 1        0       1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  0        0       1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  1        1       1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              0        0       1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              1        0       1
0-24 months   ki1114097-CMIN             PERU                           >=50 cm                 0        0       3
0-24 months   ki1114097-CMIN             PERU                           >=50 cm                 1        1       3
0-24 months   ki1114097-CMIN             PERU                           <48 cm                  0        1       3
0-24 months   ki1114097-CMIN             PERU                           <48 cm                  1        1       3
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm              0        0       3
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm              1        0       3
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 0      562    4431
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 1     3595    4431
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  0        7    4431
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  1       18    4431
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              0       46    4431
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              1      203    4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0      440    3555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      870    3555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0      570    3555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      371    3555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0      604    3555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      700    3555
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0       59     295
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1      118     295
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                  0       33     295
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                  1       11     295
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0       35     295
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1       39     295
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm                 0      338    2497
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm                 1      186    2497
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm                  0      862    2497
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm                  1      211    2497
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm              0      653    2497
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm              1      247    2497
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      190    1686
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      423    1686
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      218    1686
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      259    1686
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      255    1686
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      341    1686
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     1080   14902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      918   14902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     5684   14902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     3772   14902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     1806   14902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1     1642   14902
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      572    3540
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1      250    3540
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     1430    3540
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      498    3540
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      548    3540
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1      242    3540
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0        3      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1       11      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0        6      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       22      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0        4      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       14      60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0        0      13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        5      13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0        0      13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        3      13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0        0      13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        5      13
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        2      65
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        6      65
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                  0        6      65
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                  1       21      65
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       11      65
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       19      65
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        3      31
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        6      31
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                  0        2      31
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                  1       14      31
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        0      31
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        6      31
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm                 0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm                 1        3      11
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                  0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                  1        5      11
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm              0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm              1        3      11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0        1      29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        7      29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0        2      29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1        8      29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0        3      29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1        8      29
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0       8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1       8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        0       8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1        4       8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        0       8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        3       8
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0        3      62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        3      62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       11      62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       19      62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0        6      62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       20      62
0-6 months    ki1000108-IRC              INDIA                          >=50 cm                 0       38     236
0-6 months    ki1000108-IRC              INDIA                          >=50 cm                 1       76     236
0-6 months    ki1000108-IRC              INDIA                          <48 cm                  0       21     236
0-6 months    ki1000108-IRC              INDIA                          <48 cm                  1       31     236
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm              0       26     236
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm              1       44     236
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm                 0        2      54
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm                 1        8      54
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                  0        8      54
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                  1       16      54
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm              0        8      54
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm              1       12      54
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        1       6
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        3       6
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                  0        0       6
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                  1        1       6
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        1       6
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        0       6
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       20     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       24     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      102     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1       93     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0       43     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       58     340
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0        4      91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1       12      91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       15      91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       27      91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       11      91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       22      91
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0        8     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1       38     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0       19     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       58     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0       12     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       49     184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0        3     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1       49     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0        9     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1       58     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0        9     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1       70     198
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm                 0       30     255
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm                 1       93     255
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                  0       17     255
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                  1       32     255
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm              0       38     255
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm              1       45     255
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1       3
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0       3
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                  0        2       3
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0       3
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        0       3
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0       3
0-6 months    ki1114097-CMIN             BRAZIL                         >=50 cm                 0        2       9
0-6 months    ki1114097-CMIN             BRAZIL                         >=50 cm                 1        5       9
0-6 months    ki1114097-CMIN             BRAZIL                         <48 cm                  0        0       9
0-6 months    ki1114097-CMIN             BRAZIL                         <48 cm                  1        0       9
0-6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm              0        2       9
0-6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm              1        0       9
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 0        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 1        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  0        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  1        1       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              0        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              1        0       1
0-6 months    ki1114097-CMIN             PERU                           >=50 cm                 0        0       2
0-6 months    ki1114097-CMIN             PERU                           >=50 cm                 1        1       2
0-6 months    ki1114097-CMIN             PERU                           <48 cm                  0        0       2
0-6 months    ki1114097-CMIN             PERU                           <48 cm                  1        1       2
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm              0        0       2
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm              1        0       2
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm                 0      454    4263
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm                 1     3566    4263
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm                  0        5    4263
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm                  1       16    4263
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm              0       29    4263
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm              1      193    4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0      235    2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      856    2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0      171    2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      347    2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0      240    2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      665    2514
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0       28     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1      114     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm                  0       11     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm                  1        9     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0       13     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1       37     212
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm                 0      230    1717
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm                 1      186    1717
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm                  0      442    1717
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm                  1      211    1717
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm              0      401    1717
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm              1      247    1717
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0       82     751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      276     751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0       45     751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      109     751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0       71     751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      168     751
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0      462    9340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      918    9340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     1778    9340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     3772    9340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0      768    9340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1     1642    9340
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0       82    1008
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1      170    1008
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0      218    1008
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      274    1008
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0       90    1008
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1      174    1008
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0        1      59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        1      59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0       19      59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       21      59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       11      59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1        6      59
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        1       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0        3       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        3       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0        2       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        0       9
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        1      79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        3      79
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  0       29      79
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  1       24      79
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0        8      79
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       14      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        1      41
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        2      41
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0        6      41
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1       24      41
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        1      41
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        7      41
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 0        0      23
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        1      23
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  0        5      23
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  1       12      23
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              0        1      23
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        4      23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0        0      43
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        3      43
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0        6      43
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1       17      43
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0        2      43
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1       15      43
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0      16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        0      16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        2      16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       10      16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        1      16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        3      16
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0        0      25
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        0      25
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0        8      25
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1        7      25
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0        3      25
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1        7      25
6-24 months   ki1000108-IRC              INDIA                          >=50 cm                 0       24     151
6-24 months   ki1000108-IRC              INDIA                          >=50 cm                 1       24     151
6-24 months   ki1000108-IRC              INDIA                          <48 cm                  0       29     151
6-24 months   ki1000108-IRC              INDIA                          <48 cm                  1       26     151
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm              0       21     151
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm              1       27     151
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 0       10      72
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 1        8      72
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  0       22      72
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  1       16      72
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              0       12      72
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              1        4      72
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        1       4
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        0       4
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        0       4
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        1       4
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        2       4
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        0       4
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       29     469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       18     469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      207     469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1       73     469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0       98     469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       44     469
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0        3      79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1        6      79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       28      79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       12      79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       22      79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1        8      79
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0       10     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1        3     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0       44     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       22     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0       35     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1        9     123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0       11     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1        5     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0       50     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1        4     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0       35     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1        8     113
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      140     664
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      180     664
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  0       75     664
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  1       54     664
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      105     664
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      110     664
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm                 0        2       4
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm                 1        0       4
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                  0        0       4
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                  1        0       4
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm              0        1       4
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm              1        1       4
6-24 months   ki1114097-CMIN             PERU                           >=50 cm                 0        0       1
6-24 months   ki1114097-CMIN             PERU                           >=50 cm                 1        0       1
6-24 months   ki1114097-CMIN             PERU                           <48 cm                  0        1       1
6-24 months   ki1114097-CMIN             PERU                           <48 cm                  1        0       1
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm              0        0       1
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm              1        0       1
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 0      108     168
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 1       29     168
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  0        2     168
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  1        2     168
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              0       17     168
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              1       10     168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0      205    1041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1       14    1041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0      399    1041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1       24    1041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0      364    1041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1       35    1041
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0       31      83
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1        4      83
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                  0       22      83
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                  1        2      83
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0       22      83
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1        2      83
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm                 0      108     780
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm                 1        0     780
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm                  0      420     780
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm                  1        0     780
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm              0      252     780
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm              1        0     780
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      108     935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      147     935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      173     935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      150     935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      184     935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      173     935
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0      618    5562
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1        0    5562
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     3906    5562
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1        0    5562
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     1038    5562
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1        0    5562
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      490    2532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1       80    2532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     1212    2532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      224    2532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      458    2532
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1       68    2532


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
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cdf7a123-bb67-4a2d-aa52-7a6cc4c6f2d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cdf7a123-bb67-4a2d-aa52-7a6cc4c6f2d0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cdf7a123-bb67-4a2d-aa52-7a6cc4c6f2d0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cdf7a123-bb67-4a2d-aa52-7a6cc4c6f2d0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.6172840   0.5377766   0.6967913
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.5327103   0.4316629   0.6337577
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.6016949   0.5069499   0.6964399
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.5714286   0.3517642   0.7910929
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.5161290   0.3192140   0.7130441
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.4444444   0.1710271   0.7178618
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.4615385   0.3450685   0.5780084
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3494737   0.3055803   0.3933671
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.4197531   0.3535674   0.4859388
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.7200000   0.5200875   0.9199125
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.4756098   0.3649515   0.5862680
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.4761905   0.3342656   0.6181153
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.6949153   0.5704284   0.8194021
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.5594406   0.4795588   0.6393223
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.5523810   0.4507627   0.6539992
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                0.7941176   0.6965620   0.8916733
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               NA                0.5123967   0.4250487   0.5997447
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.6393443   0.5520024   0.7266862
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.6162528   0.5675523   0.6649534
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.4831461   0.4011085   0.5651836
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5201342   0.4575972   0.5826713
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8648064   0.8544839   0.8751288
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7200000   0.5401187   0.8998813
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8152610   0.7681659   0.8623562
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6641221   0.6381209   0.6901234
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.3942614   0.3628297   0.4256932
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.5368098   0.5099397   0.5636799
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.6666667   0.5971625   0.7361708
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.2500000   0.1204813   0.3795187
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.5270270   0.4094678   0.6445863
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.3549618   0.3125506   0.3973731
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1966449   0.1732556   0.2200342
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.2744444   0.2452239   0.3036650
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.6900489   0.6512862   0.7288117
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.5429769   0.4977756   0.5881783
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.5721477   0.5298466   0.6144487
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.4594595   0.4281763   0.4907427
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.3989002   0.3850040   0.4127963
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.4762181   0.4526374   0.4997988
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.3041363   0.2556895   0.3525830
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2582988   0.2303553   0.2862422
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.3063291   0.2600547   0.3526035
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                0.6666667   0.5803443   0.7529890
0-6 months    ki1000108-IRC             INDIA         <48 cm               NA                0.5961538   0.4580076   0.7343001
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           NA                0.6285714   0.5087880   0.7483549
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.5454545   0.3950888   0.6958203
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.4769231   0.4069371   0.5469090
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.5742574   0.4757778   0.6727371
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.8260870   0.7144288   0.9377451
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.7532468   0.6610826   0.8454109
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.8032787   0.7015873   0.9049701
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.7560976   0.6790120   0.8331831
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.6530612   0.5168804   0.7892421
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5421687   0.4395598   0.6447775
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8870647   0.8772095   0.8969198
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7619048   0.5778621   0.9459474
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8693694   0.8246128   0.9141259
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.7846013   0.7602599   0.8089426
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.6698842   0.6292373   0.7105310
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.7348066   0.7061140   0.7634992
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.8028169   0.7377837   0.8678501
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.4500000   0.2304135   0.6695865
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.7400000   0.6175523   0.8624477
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.4471154   0.3993234   0.4949074
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.3231240   0.2872437   0.3590044
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.3811728   0.3437676   0.4185781
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7709497   0.7271071   0.8147924
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.7077922   0.6351237   0.7804607
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.7029289   0.6454474   0.7604104
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.6652174   0.6299868   0.7004479
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.6796396   0.6622846   0.6969947
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.6813278   0.6550047   0.7076509
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.6746032   0.5927143   0.7564921
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.5569106   0.4947736   0.6190476
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.6590909   0.5781470   0.7400349
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.5000000   0.3388723   0.6611277
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.4727273   0.3442425   0.6012121
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.5625000   0.4097185   0.7152815
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.3829787   0.2337195   0.5322379
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.2607143   0.2080041   0.3134244
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.3098592   0.2329053   0.3868130
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.5625000   0.5044511   0.6205489
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.4186047   0.3292281   0.5079812
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5116279   0.4387254   0.5845304
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0639269   0.0317484   0.0961055
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0567376   0.0347569   0.0787182
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0877193   0.0601868   0.1152518
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.5764706   0.5115805   0.6413607
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.4643963   0.4081152   0.5206774
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.4845938   0.4294915   0.5396962
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.1403509   0.0994593   0.1812425
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1559889   0.1297719   0.1822058
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.1292776   0.0902425   0.1683126


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         NA                   NA                0.5891473   0.5364145   0.6418800
0-24 months   ki1000109-EE              PAKISTAN      NA                   NA                0.5079365   0.3724516   0.6434214
0-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.3831891   0.3479331   0.4184451
0-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.5117647   0.4302715   0.5932579
0-24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.5593036   0.5241177   0.5944895
0-24 months   ki1119695-PROBIT          BELARUS       NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.5459916   0.5294878   0.5624953
0-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.5694915   0.5120418   0.6269413
0-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.2579095   0.2406335   0.2751855
0-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.6067616   0.5822457   0.6312775
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.4249094   0.4136873   0.4361315
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.2796610   0.2580570   0.3012650
0-6 months    ki1000108-IRC             INDIA         NA                   NA                0.6398305   0.5770134   0.7026476
0-6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.6666667   0.6089363   0.7243970
0-6 months    ki1119695-PROBIT          BELARUS       NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.7430390   0.7259692   0.7601088
0-6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.7547170   0.6968087   0.8126253
0-6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.3750728   0.3521661   0.3979795
0-6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.7363515   0.7047428   0.7679603
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.6779443   0.6645427   0.6913460
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.6130952   0.5705324   0.6556580
6-24 months   ki1000108-IRC             INDIA         NA                   NA                0.5099338   0.4248374   0.5950302
6-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2878465   0.2457514   0.3299415
6-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.5180723   0.4773341   0.5588105
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0701249   0.0547060   0.0855437
6-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.5026738   0.4688037   0.5365439
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1469194   0.1276367   0.1662021


### Parameter: RR


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.8629907   0.6863366   1.0851131
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9747458   0.7951915   1.1948434
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm           0.9032258   0.5263327   1.5500023
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm           0.7777778   0.3767474   1.6056865
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.7571930   0.5711794   1.0037848
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.9094650   0.6753900   1.2246652
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           0.6605691   0.4598630   0.9488729
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.6613757   0.4401309   0.9938357
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.8050486   0.6401896   1.0123615
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.7948897   0.6147102   1.0278821
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           0.6452403   0.5228394   0.7962962
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           0.8051002   0.6698769   0.9676201
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.7840063   0.6501001   0.9454941
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.8440273   0.7309211   0.9746362
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8325563   0.6483177   1.0691518
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9427094   0.8887094   0.9999905
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.5936580   0.5432019   0.6488008
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.8082998   0.7585249   0.8613411
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.3750000   0.2210576   0.6361464
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.7905405   0.6179243   1.0113769
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.5539889   0.4680435   0.6557162
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.7731661   0.6588258   0.9073503
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.7868673   0.7116838   0.8699932
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8291407   0.7555974   0.9098421
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.8681945   0.8042698   0.9372000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.0364747   0.9527872   1.1275128
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8492863   0.7005305   1.0296300
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           1.0072101   0.8086853   1.2544710
0-6 months    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.8942308   0.6857330   1.1661225
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9428571   0.7488343   1.1871513
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.8743590   0.6398145   1.1948833
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.0528053   0.7609410   1.4566161
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.9118250   0.7598554   1.0941883
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.9723900   0.8080025   1.1702220
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.8637261   0.6848061   1.0893928
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.7170618   0.5783582   0.8890298
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8589055   0.6744163   1.0938625
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9800518   0.9297714   1.0330514
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.8537893   0.7975431   0.9140022
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.9365351   0.8909738   0.9844262
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.5605263   0.3418008   0.9192189
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.9217544   0.7666608   1.1082230
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.7226860   0.6194586   0.8431154
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.8525156   0.7373680   0.9856446
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.9180783   0.8164091   1.0324086
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.9117701   0.8253299   1.0072634
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.0216805   0.9633420   1.0835519
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.0242183   0.9592286   1.0936111
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8255380   0.7000556   0.9735127
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9770053   0.8220604   1.1611548
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.9454545   0.6203762   1.4408745
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           1.1250000   0.7381509   1.7145883
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.6807540   0.4388413   1.0560217
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.8090767   0.5096727   1.2843636
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.7441861   0.5870471   0.9433875
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.9095607   0.7627756   1.0845925
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.8875380   0.4702474   1.6751262
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.3721805   0.7582011   2.4833507
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.8055854   0.6827748   0.9504859
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8406220   0.7163304   0.9864796
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.1114206   0.7939482   1.5558392
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9211027   0.6054434   1.4013368


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0281367   -0.0896721    0.0333988
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.0634921   -0.2726645    0.1456804
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0783493   -0.1868688    0.0301701
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.2082353   -0.3952402   -0.0212304
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.1118534   -0.2242189    0.0005121
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.1703234   -0.2606574   -0.0799895
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0569492   -0.0933372   -0.0205613
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0036012   -0.0065370   -0.0006654
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.1181306   -0.1392523   -0.0970088
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0971751   -0.1447216   -0.0496286
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0970523   -0.1336540   -0.0604507
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0832874   -0.1149303   -0.0516444
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0345501   -0.0635687   -0.0055314
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0244752   -0.0659980    0.0170475
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0268362   -0.0916900    0.0380177
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0307487   -0.1708954    0.1093981
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0380435   -0.1362822    0.0601952
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0894309   -0.1488402   -0.0300215
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0015381   -0.0041179    0.0010418
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0415623   -0.0607845   -0.0223401
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0480999   -0.0918402   -0.0043596
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0720426   -0.1132979   -0.0307872
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0345982   -0.0675883   -0.0016081
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0127269   -0.0197387    0.0451926
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0615079   -0.1333723    0.0103564
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                 0.0099338   -0.1192355    0.1391031
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0951322   -0.2349847    0.0447202
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0444277   -0.0868404   -0.0020151
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0061979   -0.0227404    0.0351363
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0737968   -0.1291270   -0.0184666
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0065686   -0.0293629    0.0425000


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0477583   -0.1578654    0.0518782
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.1250000   -0.6358867    0.2263370
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.2044665   -0.5228236    0.0473358
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.4068966   -0.8360307   -0.0780636
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.1918379   -0.4026779   -0.0126898
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.2730443   -0.4326923   -0.1311862
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.1018217   -0.1696753   -0.0379043
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0041816   -0.0076001   -0.0007747
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.2163597   -0.2566367   -0.1773736
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.1706349   -0.2614559   -0.0863528
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.3763039   -0.5247261   -0.2423296
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1372654   -0.1913082   -0.0856742
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0813116   -0.1518067   -0.0151311
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0875175   -0.2461068    0.0508884
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0419426   -0.1488791    0.0550403
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0597403   -0.3702451    0.1804026
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0482759   -0.1809211    0.0694702
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.1341463   -0.2293302   -0.0463323
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0017369   -0.0046554    0.0011731
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0559356   -0.0822941   -0.0302190
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0637324   -0.1245591   -0.0061958
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.1920763   -0.3075987   -0.0867599
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0469860   -0.0929742   -0.0029328
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0187728   -0.0303083    0.0655159
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.1003236   -0.2245818    0.0113261
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                 0.0194805   -0.2699708    0.2429602
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.3304965   -0.9147822    0.0754976
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0857558   -0.1712725   -0.0064828
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0883843   -0.4328920    0.4200239
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1468085   -0.2628181   -0.0414562
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0447085   -0.2341560    0.2605621
