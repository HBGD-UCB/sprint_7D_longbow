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
![](/tmp/870935f4-0c0d-41ac-9913-813245dac699/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/870935f4-0c0d-41ac-9913-813245dac699/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/870935f4-0c0d-41ac-9913-813245dac699/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/870935f4-0c0d-41ac-9913-813245dac699/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.6172840   0.5377766   0.6967913
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.5327103   0.4316629   0.6337577
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.6016949   0.5069499   0.6964399
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.6710748   0.5060143   0.8361353
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.5307420   0.3442444   0.7172396
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.4266446   0.1789794   0.6743099
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.5093181   0.4132055   0.6054306
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3500034   0.3068887   0.3931181
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.4211101   0.3571292   0.4850910
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.7200000   0.5200875   0.9199125
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.4756098   0.3649515   0.5862680
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.4761905   0.3342656   0.6181153
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.7145443   0.5963967   0.8326920
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.5628613   0.4838493   0.6418734
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.5566307   0.4568958   0.6563656
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                0.8191896   0.7235622   0.9148170
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               NA                0.5227276   0.4359505   0.6095047
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.6501834   0.5629891   0.7373777
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.6084358   0.5613314   0.6555402
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.4481434   0.3771702   0.5191167
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5046038   0.4459064   0.5633011
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8648064   0.8544839   0.8751288
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7200000   0.5401187   0.8998813
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8152610   0.7681659   0.8623562
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6697320   0.6441701   0.6952938
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.3974935   0.3668198   0.4281673
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.5403760   0.5140030   0.5667490
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.6663424   0.5968256   0.7358592
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.2508280   0.1217567   0.3798993
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.5272678   0.4100307   0.6445049
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.3505279   0.3109088   0.3901471
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1942132   0.1715045   0.2169218
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.2740697   0.2456833   0.3024560
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7089321   0.6722389   0.7456254
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.5575348   0.5149078   0.6001619
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.5882482   0.5475736   0.6289227
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.4666576   0.4383011   0.4950141
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.3991278   0.3854240   0.4128317
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.4849903   0.4625436   0.5074370
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.3037477   0.2556543   0.3518411
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2582508   0.2303711   0.2861305
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.3069150   0.2609407   0.3528894
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                0.6530409   0.5681368   0.7379449
0-6 months    ki1000108-IRC             INDIA         <48 cm               NA                0.5803239   0.4531433   0.7075044
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           NA                0.6151353   0.5007712   0.7294995
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.5452448   0.3952389   0.6952507
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.4771348   0.4072146   0.5470550
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.5739468   0.4754180   0.6724756
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.8260870   0.7144288   0.9377451
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.7532468   0.6610826   0.8454109
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.8032787   0.7015873   0.9049701
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.7565470   0.6803515   0.8327425
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.6530249   0.5244037   0.7816461
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5376624   0.4387925   0.6365323
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8870647   0.8772095   0.8969198
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7619048   0.5778621   0.9459474
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8693694   0.8246128   0.9141259
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.7912606   0.7673184   0.8152028
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.6898179   0.6513367   0.7282992
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.7412262   0.7130442   0.7694081
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.8028169   0.7377837   0.8678501
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.4500000   0.2304135   0.6695865
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.7400000   0.6175523   0.8624477
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.4510734   0.4051185   0.4970282
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.3253977   0.2903268   0.3604686
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.3850237   0.3483285   0.4217188
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7706950   0.7280260   0.8133641
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.6862778   0.6183509   0.7542048
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.6959445   0.6405711   0.7513179
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.6767649   0.6449061   0.7086237
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.6842223   0.6672635   0.7011810
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.6885404   0.6635176   0.7135631
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.6697912   0.5934283   0.7461540
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.5524112   0.4921678   0.6126545
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.6603096   0.5843969   0.7362224
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.5326761   0.3776280   0.6877243
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.4936690   0.3677414   0.6195965
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.5926976   0.4450943   0.7403009
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.3645689   0.2210438   0.5080939
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.2589303   0.2064884   0.3113721
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.3031291   0.2274946   0.3787635
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.5372931   0.4814530   0.5931331
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.3441306   0.2670563   0.4212050
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.4704744   0.4026350   0.5383139
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0639267   0.0317472   0.0961063
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0567408   0.0347603   0.0787213
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0877143   0.0601819   0.1152468
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.6185890   0.5605736   0.6766043
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.4831205   0.4320282   0.5342129
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.5046931   0.4526364   0.5567499
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
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm           0.7908835   0.5159881   1.2122310
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm           0.6357632   0.3366489   1.2006422
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.6872001   0.5489833   0.8602155
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.8268117   0.6491889   1.0530335
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           0.6605691   0.4598630   0.9488729
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.6613757   0.4401309   0.9938357
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.7877206   0.6341188   0.9785293
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.7790010   0.6103467   0.9942587
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           0.6381033   0.5204626   0.7823344
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           0.7936910   0.6644832   0.9480231
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.7365500   0.6177895   0.8781404
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.8293459   0.7217364   0.9529997
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8325563   0.6483177   1.0691518
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9427094   0.8887094   0.9999905
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.5935113   0.5445985   0.6468173
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.8068541   0.7584708   0.8583239
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.3764251   0.2226697   0.6363498
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.7912866   0.6189116   1.0116703
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.5540591   0.4711403   0.6515713
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.7818769   0.6710702   0.9109800
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.7864432   0.7171892   0.8623846
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8297666   0.7612014   0.9045078
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.8552905   0.7977192   0.9170168
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.0392851   0.9629697   1.1216484
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8502148   0.7019361   1.0298162
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           1.0104275   0.8128269   1.2560654
0-6 months    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.8886486   0.6883611   1.1472123
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9419553   0.7505434   1.1821832
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.8750836   0.6408330   1.1949624
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.0526406   0.7611524   1.4557560
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.9118250   0.7598554   1.0941883
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.9723900   0.8080025   1.1702220
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.8631650   0.6929999   1.0751139
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.7106795   0.5765931   0.8759476
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8589055   0.6744163   1.0938625
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9800518   0.9297714   1.0330514
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.8717961   0.8182627   0.9288319
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.9367662   0.8924117   0.9833252
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.5605263   0.3418008   0.9192189
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.9217544   0.7666608   1.1082230
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.7213853   0.6221219   0.8364869
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.8535721   0.7426720   0.9810324
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.8904662   0.7951370   0.9972244
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.9030089   0.8197496   0.9947247
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.0110191   0.9586899   1.0662046
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.0173996   0.9586996   1.0796937
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8247513   0.7042217   0.9659099
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9858440   0.8392877   1.1579920
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.9267713   0.6292765   1.3649088
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           1.1126791   0.7581887   1.6329111
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.7102369   0.4563398   1.1053966
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.8314727   0.5218445   1.3248139
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.6404896   0.5006261   0.8194278
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.8756384   0.7338068   1.0448833
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.8875910   0.4702751   1.6752274
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.3721070   0.7581398   2.4832856
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.7810041   0.6780670   0.8995681
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8158780   0.7096119   0.9380577
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.1114206   0.7939482   1.5558392
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9211027   0.6054434   1.4013368


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0281367   -0.0896721    0.0333988
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.1631383   -0.3338503    0.0075737
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.1261289   -0.2155994   -0.0366585
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.2082353   -0.3952402   -0.0212304
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.1314824   -0.2382813   -0.0246836
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.1953954   -0.2846056   -0.1061852
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0491323   -0.0841198   -0.0141447
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0036012   -0.0065370   -0.0006654
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.1237404   -0.1445071   -0.1029737
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0968509   -0.1443310   -0.0493708
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0926184   -0.1266969   -0.0585400
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1021705   -0.1323575   -0.0719836
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0417482   -0.0681345   -0.0153619
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0240867   -0.0652803    0.0171070
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0132104   -0.0772593    0.0508385
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0305390   -0.1703266    0.1092487
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0380435   -0.1362822    0.0601952
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0898803   -0.1480480   -0.0317126
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0015381   -0.0041179    0.0010418
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0482216   -0.0671513   -0.0292919
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0480999   -0.0918402   -0.0043596
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0760006   -0.1156156   -0.0363855
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0343435   -0.0664227   -0.0022643
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0011794   -0.0283203    0.0306791
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0566960   -0.1239604    0.0105685
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0227424   -0.1469966    0.1015119
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0767224   -0.2111264    0.0576816
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0192208   -0.0597238    0.0212822
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0061981   -0.0227410    0.0351373
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1159152   -0.1660899   -0.0657404
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0065686   -0.0293629    0.0425000


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0477583   -0.1578654    0.0518782
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.3211785   -0.7634081    0.0101482
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.3291558   -0.5868003   -0.1133444
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.4068966   -0.8360307   -0.0780636
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.2255034   -0.4259936   -0.0532015
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.3132369   -0.4724271   -0.1712574
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0878454   -0.1530667   -0.0263132
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0041816   -0.0076001   -0.0007747
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.2266343   -0.2664030   -0.1881143
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.1700655   -0.2607220   -0.0859279
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.3591121   -0.4978211   -0.2332487
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1683867   -0.2204783   -0.1185184
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0982520   -0.1622810   -0.0377503
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0861281   -0.2434144    0.0512622
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0206467   -0.1260787    0.0749140
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0593328   -0.3689552    0.1802609
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0482759   -0.1809211    0.0694702
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.1348205   -0.2280356   -0.0486809
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0017369   -0.0046554    0.0011731
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0648978   -0.0909055   -0.0395102
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0637324   -0.1245591   -0.0061958
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.2026288   -0.3136828   -0.1009630
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0466401   -0.0913853   -0.0037293
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0017396   -0.0427345    0.0443169
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0924750   -0.2087168    0.0125880
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0445987   -0.3185696    0.1724469
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.2665392   -0.8297187    0.1232960
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0371006   -0.1185349    0.0384049
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0883871   -0.4329090    0.4200342
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.2305972   -0.3373338   -0.1323795
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0447085   -0.2341560    0.2605621
