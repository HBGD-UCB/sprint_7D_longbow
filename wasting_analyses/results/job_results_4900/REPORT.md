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
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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
![](/tmp/7e53021e-6e60-4b86-86fb-242b0279de66/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e53021e-6e60-4b86-86fb-242b0279de66/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e53021e-6e60-4b86-86fb-242b0279de66/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e53021e-6e60-4b86-86fb-242b0279de66/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.6323663   0.5542941   0.7104384
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.5545515   0.4576473   0.6514556
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.6281880   0.5378178   0.7185582
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.6519786   0.4776149   0.8263424
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.5292491   0.3414032   0.7170949
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.4348104   0.1835393   0.6860815
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.5111016   0.4112190   0.6109841
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3508238   0.3075522   0.3940953
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.4234006   0.3587413   0.4880600
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.7200000   0.5200875   0.9199125
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.4756098   0.3649515   0.5862680
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.4761905   0.3342656   0.6181153
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.7218958   0.6068577   0.8369340
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.5618420   0.4831752   0.6405088
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.5541363   0.4552455   0.6530270
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                0.8256856   0.7351412   0.9162300
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               NA                0.5237984   0.4381786   0.6094182
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.6509555   0.5657937   0.7361173
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.6090355   0.5615365   0.6565345
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.4495266   0.3766375   0.5224158
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5053157   0.4458056   0.5648258
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8648064   0.8544839   0.8751288
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7200000   0.5401187   0.8998813
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8152610   0.7681659   0.8623562
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6691314   0.6433911   0.6948718
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.3970165   0.3661226   0.4279104
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.5397650   0.5132391   0.5662910
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.6664214   0.5969565   0.7358863
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.2504180   0.1221265   0.3787094
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.5274943   0.4105459   0.6444428
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.3506668   0.3110497   0.3902838
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1940388   0.1713297   0.2167480
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.2740051   0.2456126   0.3023975
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7094031   0.6727550   0.7460511
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.5574767   0.5148657   0.6000878
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.5884846   0.5478313   0.6291379
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.4666599   0.4383039   0.4950159
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.3991272   0.3854233   0.4128311
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.4849924   0.4625456   0.5074393
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.3041392   0.2556933   0.3525851
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2582979   0.2303545   0.2862413
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.3063285   0.2600542   0.3526028
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                0.6539897   0.5690054   0.7389741
0-6 months    ki1000108-IRC             INDIA         <48 cm               NA                0.5806280   0.4525258   0.7087302
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           NA                0.6154752   0.5007652   0.7301853
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.5453359   0.3951788   0.6954931
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.4770438   0.4070965   0.5469911
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.5740799   0.4755752   0.6725846
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.8260870   0.7144288   0.9377451
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.7532468   0.6610826   0.8454109
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.8032787   0.7015873   0.9049701
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.7583141   0.6818202   0.8348080
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.6497370   0.5189664   0.7805077
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5373028   0.4380381   0.6365675
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8870647   0.8772095   0.8969198
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7619048   0.5778621   0.9459474
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8693694   0.8246128   0.9141259
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.7910228   0.7669744   0.8150712
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.6897231   0.6508073   0.7286388
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.7411014   0.7127887   0.7694140
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.8028169   0.7377837   0.8678501
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.4500000   0.2304135   0.6695865
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.7400000   0.6175523   0.8624477
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.4507349   0.4056132   0.4958566
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.3258390   0.2910474   0.3606305
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.3854748   0.3490208   0.4219288
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7702353   0.7273920   0.8130786
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.6864733   0.6180178   0.7549289
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.6957804   0.6401314   0.7514294
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.6766323   0.6448623   0.7084024
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.6842009   0.6672578   0.7011439
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.6884661   0.6635066   0.7134256
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.6707123   0.5909522   0.7504725
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.5547105   0.4932611   0.6161599
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.6581450   0.5790819   0.7372080
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.5315863   0.3724288   0.6907437
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.4984233   0.3694742   0.6273723
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.5944668   0.4413121   0.7476215
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.3651179   0.2224132   0.5078227
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.2587993   0.2063475   0.3112511
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.3025831   0.2269221   0.3782441
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.5396680   0.4837188   0.5956172
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.3443120   0.2666542   0.4219699
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.4721587   0.4041132   0.5402042
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0639269   0.0317482   0.0961056
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0567380   0.0347574   0.0787187
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0877186   0.0601861   0.1152511
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.6214303   0.5634640   0.6793967
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.4827034   0.4316404   0.5337663
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.5054575   0.4534205   0.5574944
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
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.8769467   0.7084495   1.0855190
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9933926   0.8217676   1.2008613
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm           0.8117583   0.5214174   1.2637697
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm           0.6669090   0.3512790   1.2661378
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.6864071   0.5451996   0.8641876
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.8284080   0.6467158   1.0611459
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           0.6605691   0.4598630   0.9488729
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.6613757   0.4401309   0.9938357
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.7782868   0.6295486   0.9621662
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.7676125   0.6041780   0.9752571
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           0.6343800   0.5205446   0.7731095
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           0.7883818   0.6647338   0.9350297
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.7380960   0.6166670   0.8834358
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.8296983   0.7205734   0.9553491
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8325563   0.6483177   1.0691518
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9427094   0.8887094   0.9999905
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.5933311   0.5440460   0.6470809
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.8066652   0.7579533   0.8585077
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.3757652   0.2228064   0.6337317
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.7915327   0.6194707   1.0113862
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.5533426   0.4704991   0.6507727
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.7813831   0.6706266   0.9104314
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.7858392   0.7166854   0.8616657
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8295489   0.7610818   0.9041754
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.8552851   0.7977149   0.9170100
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.0392846   0.9629701   1.1216469
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8492753   0.7005244   1.0296123
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           1.0071984   0.8086789   1.2544518
0-6 months    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.8878243   0.6868973   1.1475253
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9411084   0.7496229   1.1815074
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.8747706   0.6403996   1.1949157
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.0527087   0.7610674   1.4561071
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.9118250   0.7598554   1.0941883
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.9723900   0.8080025   1.1702220
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.8568178   0.6848884   1.0719071
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.7085492   0.5744631   0.8739326
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8589055   0.6744163   1.0938625
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9800518   0.9297714   1.0330514
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.8719383   0.8178759   0.9295743
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.9368900   0.8923173   0.9836892
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.5605263   0.3418008   0.9192189
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.9217544   0.7666608   1.1082230
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.7229060   0.6246264   0.8366489
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.8552140   0.7454111   0.9811914
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.8912514   0.7952186   0.9988814
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.9033348   0.8196425   0.9955728
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.0111856   0.9589824   1.0662305
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.0174892   0.9589487   1.0796033
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8270469   0.7028975   0.9731242
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9812627   0.8290830   1.1613752
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.9376150   0.6310864   1.3930295
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           1.1182885   0.7529299   1.6609370
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.7088102   0.4565532   1.1004454
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.8287270   0.5209988   1.3182148
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.6380072   0.4979597   0.8174419
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.8749059   0.7332755   1.0438919
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.8875450   0.4702511   1.6751396
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.3721707   0.7581929   2.4833420
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.7767619   0.6745676   0.8944382
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8133776   0.7077700   0.9347431
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.1114206   0.7939482   1.5558392
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9211027   0.6054434   1.4013368


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0432190   -0.1037602    0.0173223
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.1440421   -0.3205745    0.0324903
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.1279125   -0.2208403   -0.0349846
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.2082353   -0.3952402   -0.0212304
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.1388340   -0.2429513   -0.0347166
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.2018914   -0.2872525   -0.1165303
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0497319   -0.0851250   -0.0143387
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0036012   -0.0065370   -0.0006654
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.1231399   -0.1440340   -0.1022457
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0969299   -0.1443587   -0.0495011
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0927573   -0.1268405   -0.0586740
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1026415   -0.1328076   -0.0724754
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0417505   -0.0681366   -0.0153643
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0244782   -0.0660002    0.0170439
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0141592   -0.0782385    0.0499200
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0306301   -0.1705684    0.1093083
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0380435   -0.1362822    0.0601952
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0916474   -0.1500433   -0.0332516
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0015381   -0.0041179    0.0010418
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0479838   -0.0669874   -0.0289802
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0480999   -0.0918402   -0.0043596
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0756621   -0.1146110   -0.0367132
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0338838   -0.0660756   -0.0016920
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0013120   -0.0280998    0.0307238
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0576171   -0.1276451    0.0124109
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0216525   -0.1493209    0.1060159
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0772715   -0.2109245    0.0563815
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0215957   -0.0622105    0.0190191
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0061980   -0.0227405    0.0351364
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1187565   -0.1689423   -0.0685708
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0065686   -0.0293629    0.0425000


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0733585   -0.1818253    0.0251533
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.2835829   -0.7313251    0.0483676
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.3338103   -0.6015452   -0.1108333
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.4068966   -0.8360307   -0.0780636
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.2381119   -0.4337971   -0.0691338
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.3236507   -0.4774645   -0.1858499
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0889175   -0.1548888   -0.0267147
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0041816   -0.0076001   -0.0007747
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.2255344   -0.2654914   -0.1868389
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.1702042   -0.2607801   -0.0861354
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.3596505   -0.4983921   -0.2337555
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1691628   -0.2212364   -0.1193097
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0982574   -0.1622860   -0.0377560
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0875279   -0.2461140    0.0508758
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0221297   -0.1276234    0.0734947
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0595098   -0.3695021    0.1803145
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0482759   -0.1809211    0.0694702
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.1374711   -0.2310682   -0.0509901
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0017369   -0.0046554    0.0011731
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0645778   -0.0906800   -0.0391002
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0637324   -0.1245591   -0.0061958
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.2017265   -0.3110260   -0.1015392
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0460158   -0.0909083   -0.0029706
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0019353   -0.0424035    0.0443881
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0939774   -0.2150089    0.0149978
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0424614   -0.3248314    0.1797253
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.2684468   -0.8278649    0.1197614
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0416847   -0.1233708    0.0340615
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0883847   -0.4328943    0.4200252
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.2362497   -0.3431216   -0.1378815
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0447085   -0.2341560    0.2605621
