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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** birthlen

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

agecat                        studyid                    country                        birthlen      ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0       23     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        6     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0      105     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       35     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       70     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       15     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0       32     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        2     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0       72     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        6     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0       72     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        4     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0       17     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        8     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                  0       66     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                  1       38     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       46     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       24     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0       33     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        5     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0       47     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1       21     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0       58     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        8     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                 0       31     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        2     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                  0      128     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                  1       13     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm              0      106     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        5     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0       39     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        5     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0       85     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1       16     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0       81     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1       17     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       15     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        0     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       48     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       10     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       49     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        4     126
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0       10     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        5     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       21     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       26     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0       18     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       22     102
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                 0       64     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                 1       78     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                  0       48     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                  1       63     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm              0       71     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm              1       66     390
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                 0       14      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                 1        8      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                  0       22      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                  1       21      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm              0       14      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm              1       12      91
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        2      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        4      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        5      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        2      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        5      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        3      21
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       41     456
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       16     456
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      147     456
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1       98     456
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      108     456
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       46     456
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       20     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1        8     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       70     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       34     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       50     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       29     211
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0      149     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1       17     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0      177     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       62     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0      239     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       43     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0      149     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1       19     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0      243     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1       47     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0      254     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1       42     754
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      471    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      290    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                  0      173    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                  1      118    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      293    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      201    1546
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                  0        1       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >=50 cm                 0       61     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >=50 cm                 1        2     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         <48 cm                  0       16     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         <48 cm                  1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         [48-50) cm              0       34     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         [48-50) cm              1        2     115
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 0        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >=50 cm                 0       13      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >=50 cm                 1        1      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           <48 cm                  0        0      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           <48 cm                  1        1      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           [48-50) cm              0        1      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           [48-50) cm              1        0      16
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >=50 cm                 0        1       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >=50 cm                 1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           <48 cm                  0        1       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           <48 cm                  1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           [48-50) cm              0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           [48-50) cm              1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        >=50 cm                 0     6951    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        >=50 cm                 1      435    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        <48 cm                  0       82    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        <48 cm                  1        8    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        [48-50) cm              0      583    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        [48-50) cm              1       54    8113
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     3317   12324
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      300   12324
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     3430   12324
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      506   12324
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     4232   12324
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      539   12324
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0      177     382
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1       27     382
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      <48 cm                  0       54     382
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      <48 cm                  1       16     382
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0       94     382
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1       14     382
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          >=50 cm                 0     1182    6380
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          >=50 cm                 1      204    6380
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          <48 cm                  0     2034    6380
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          <48 cm                  1      600    6380
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          [48-50) cm              0     1917    6380
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          [48-50) cm              1      443    6380
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      814    2931
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      273    2931
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      442    2931
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      286    2931
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      761    2931
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      355    2931
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     1571   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      255   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     6760   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1506   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     2216   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      474   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      260    1171
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1       76    1171
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0      374    1171
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      175    1171
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      211    1171
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1       75    1171
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0       25     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        4     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0      130     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1        9     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       79     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1        6     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0       32     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        2     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0       76     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        2     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0       73     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        3     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                 0       20     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        5     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                  0       96     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                  1        8     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       53     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       16     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0       33     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        4     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                  0       64     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                  1        4     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0       64     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        2     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                 0       31     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                 1        2     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                  0      139     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                  1        2     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm              0      110     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm              1        1     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0       42     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        2     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0       96     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1        5     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0       93     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1        4     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       15     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        0     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       56     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1        2     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       50     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        3     126
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0        9      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        5      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       26      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       19      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0       19      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       21      99
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                 0       83     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                 1       48     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                  0       75     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                  1       34     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm              0       84     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm              1       48     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                 0       19      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                 1        3      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                  0       36      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                  1        6      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm              0       20      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm              1        6      90
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        3      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        3      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                  0        6      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                  1        1      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        7      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        1      21
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       50     448
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1        6     448
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      199     448
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1       41     448
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      129     448
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       23     448
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       25     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1        3     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       90     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1        9     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       66     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       10     203
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0      157     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1        9     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0      222     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       15     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0      268     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       12     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0      161     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1        6     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0      282     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1        6     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0      286     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1        8     749
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                 0      640    1517
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                 1      105    1517
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                  0      244    1517
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                  1       39    1517
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm              0      420    1517
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm              1       69    1517
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                  0        1       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >=50 cm                 0       52      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >=50 cm                 1        0      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         <48 cm                  0       15      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         <48 cm                  1        0      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         [48-50) cm              0       29      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         [48-50) cm              1        1      97
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 0        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >=50 cm                 0       13      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >=50 cm                 1        1      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           <48 cm                  0        1      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           <48 cm                  1        0      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           [48-50) cm              0        1      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           [48-50) cm              1        0      16
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >=50 cm                 0        1       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >=50 cm                 1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           <48 cm                  0        1       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           <48 cm                  1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           [48-50) cm              0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           [48-50) cm              1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        >=50 cm                 0     6865    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        >=50 cm                 1      389    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        <48 cm                  0       83    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        <48 cm                  1        7    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        [48-50) cm              0      592    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        [48-50) cm              1       43    7979
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     3247   11325
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1       99   11325
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     3477   11325
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      131   11325
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     4175   11325
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      196   11325
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0      187     353
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1        4     353
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      <48 cm                  0       58     353
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      <48 cm                  1        4     353
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0       96     353
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1        4     353
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          >=50 cm                 0     1152    5884
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          >=50 cm                 1      107    5884
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          <48 cm                  0     2226    5884
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          <48 cm                  1      212    5884
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm              0     1973    5884
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm              1      214    5884
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      960    2887
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      107    2887
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      656    2887
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1       65    2887
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      988    2887
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      111    2887
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     1674   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      125   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     7593   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1      572   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     2406   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      263   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      320    1124
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1       11    1124
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0      501    1124
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1       13    1124
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      272    1124
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1        7    1124
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0       26     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        2     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0       97     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       27     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       69     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       13     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0       29     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        1     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0       64     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        4     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0       72     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        1     171
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0       20     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        4     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                  0       67     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                  1       33     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       53     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       15     192
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0       36     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        2     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0       46     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1       20     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0       60     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        6     170
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                 0       29     258
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        1     258
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                  0      119     258
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                  1       12     258
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm              0       93     258
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        4     258
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0       37     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        3     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0       77     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1       14     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0       75     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1       14     220
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       14     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        0     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       44     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1        9     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       47     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        3     117
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0       15     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        0     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       37     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       12     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0       32     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1        8     104
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                 0       98     391
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                 1       44     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                  0       70     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                  1       41     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm              0      100     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm              1       38     391
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                 0       12      88
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                 1        8      88
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                  0       26      88
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                  1       17      88
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm              0       18      88
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm              1        7      88
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        4      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        1      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        5      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        1      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        3      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        2      16
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       43     430
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       12     430
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      155     430
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1       75     430
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      115     430
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       30     430
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       17     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1        8     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       55     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       30     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       47     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       23     180
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0      139     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1       10     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0      165     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       55     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0      212     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       34     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0      151     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1       14     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0      236     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1       44     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0      247     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1       38     730
6-24 months                   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      500    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      243    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         <48 cm                  0      173    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         <48 cm                  1       95    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      313    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      163    1487
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                  0        1       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0       1
6-24 months                   ki1114097-CMIN             BRAZIL                         >=50 cm                 0       61     115
6-24 months                   ki1114097-CMIN             BRAZIL                         >=50 cm                 1        2     115
6-24 months                   ki1114097-CMIN             BRAZIL                         <48 cm                  0       16     115
6-24 months                   ki1114097-CMIN             BRAZIL                         <48 cm                  1        0     115
6-24 months                   ki1114097-CMIN             BRAZIL                         [48-50) cm              0       34     115
6-24 months                   ki1114097-CMIN             BRAZIL                         [48-50) cm              1        2     115
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 0        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              1        0       2
6-24 months                   ki1114097-CMIN             PERU                           >=50 cm                 0       12      14
6-24 months                   ki1114097-CMIN             PERU                           >=50 cm                 1        0      14
6-24 months                   ki1114097-CMIN             PERU                           <48 cm                  0        0      14
6-24 months                   ki1114097-CMIN             PERU                           <48 cm                  1        1      14
6-24 months                   ki1114097-CMIN             PERU                           [48-50) cm              0        1      14
6-24 months                   ki1114097-CMIN             PERU                           [48-50) cm              1        0      14
6-24 months                   ki1114097-CONTENT          PERU                           >=50 cm                 0        1       2
6-24 months                   ki1114097-CONTENT          PERU                           >=50 cm                 1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           <48 cm                  0        1       2
6-24 months                   ki1114097-CONTENT          PERU                           <48 cm                  1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           [48-50) cm              0        0       2
6-24 months                   ki1114097-CONTENT          PERU                           [48-50) cm              1        0       2
6-24 months                   ki1119695-PROBIT           BELARUS                        >=50 cm                 0     7215    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        >=50 cm                 1       51    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        <48 cm                  0       85    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        <48 cm                  1        1    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        [48-50) cm              0      609    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        [48-50) cm              1       14    7975
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     2823   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      212   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     2984   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      403   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     3772   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      376   10570
6-24 months                   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0      154     345
6-24 months                   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1       25     345
6-24 months                   ki1135781-COHORTS          GUATEMALA                      <48 cm                  0       54     345
6-24 months                   ki1135781-COHORTS          GUATEMALA                      <48 cm                  1       12     345
6-24 months                   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0       88     345
6-24 months                   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1       12     345
6-24 months                   ki1135781-COHORTS          INDIA                          >=50 cm                 0     1235    6169
6-24 months                   ki1135781-COHORTS          INDIA                          >=50 cm                 1      107    6169
6-24 months                   ki1135781-COHORTS          INDIA                          <48 cm                  0     2132    6169
6-24 months                   ki1135781-COHORTS          INDIA                          <48 cm                  1      414    6169
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm              0     2038    6169
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm              1      243    6169
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      829    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      208    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      443    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      256    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      783    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      283    2802
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     1055    8391
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      144    8391
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     4381    8391
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1003    8391
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     1569    8391
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      239    8391
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      265    1178
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1       70    1178
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0      385    1178
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      170    1178
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      219    1178
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1       69    1178


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/e285410d-41a4-48ec-9688-d305df0130e6/ade30589-7dd8-4944-b3fd-d38fdd81026d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e285410d-41a4-48ec-9688-d305df0130e6/ade30589-7dd8-4944-b3fd-d38fdd81026d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     optimal              NA                0.2810049    0.1534396   0.4085702
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          optimal              NA                0.5079132    0.3445592   0.6712671
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          optimal              NA                0.1826649    0.0623087   0.3030210
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   optimal              NA                0.1128341    0.0170801   0.2085882
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                0.3504254    0.0876334   0.6132174
0-24 months (no birth wast)   ki1000108-IRC              INDIA          optimal              NA                0.4810336    0.3967494   0.5653178
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       optimal              NA                0.3744935    0.1635272   0.5854598
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                0.3068778    0.2641003   0.3496553
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                0.3455095    0.1655713   0.5254476
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                0.1020295    0.0553062   0.1487527
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                0.1164375    0.0681980   0.1646770
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         optimal              NA                0.3687446    0.3315494   0.4059398
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        optimal              NA                0.0588259    0.0448368   0.0728150
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                0.0861786    0.0770595   0.0952977
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      optimal              NA                0.1615415    0.1020043   0.2210787
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          optimal              NA                0.1427103    0.1241934   0.1612272
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    optimal              NA                0.2432836    0.2179248   0.2686423
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                0.1440725    0.1267892   0.1613558
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                0.2643862    0.2124795   0.3162929
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          optimal              NA                0.0771356    0.0253626   0.1289086
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                0.3636489    0.0784126   0.6488852
0-6 months (no birth wast)    ki1000108-IRC              INDIA          optimal              NA                0.3186819    0.2315613   0.4058024
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          optimal              NA                0.1329218   -0.0225750   0.2884185
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     optimal              NA                0.0617306    0.0312784   0.0921828
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                0.0288367    0.0100423   0.0476311
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         optimal              NA                0.1651857    0.1320800   0.1982914
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        optimal              NA                0.0535485    0.0397702   0.0673267
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                0.0373265    0.0308924   0.0437605
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          optimal              NA                0.0793992    0.0662580   0.0925404
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    optimal              NA                0.0917801    0.0732808   0.1102794
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                0.0693091    0.0584001   0.0802181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                0.0491790    0.0243042   0.0740537
6-24 months                   ki1000108-IRC              INDIA          optimal              NA                0.2756050    0.2002466   0.3509633
6-24 months                   ki1000109-EE               PAKISTAN       optimal              NA                0.2995623    0.1064077   0.4927170
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                0.2771671    0.2084429   0.3458914
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                0.4030949    0.2128179   0.5933720
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                0.0710893    0.0284329   0.1137457
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                0.0901808    0.0477340   0.1326277
6-24 months                   ki1101329-Keneba           GAMBIA         optimal              NA                0.3195351    0.2818677   0.3572024
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                0.0714565    0.0624368   0.0804761
6-24 months                   ki1135781-COHORTS          GUATEMALA      optimal              NA                0.1503439    0.0835270   0.2171609
6-24 months                   ki1135781-COHORTS          INDIA          optimal              NA                0.0774370    0.0631041   0.0917700
6-24 months                   ki1135781-COHORTS          PHILIPPINES    optimal              NA                0.1968230    0.1726263   0.2210197
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                0.1292454    0.1099637   0.1485271
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                0.2275191    0.1771455   0.2778926


### Parameter: E(Y)


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     observed             NA                0.2204724   0.1693889   0.2715560
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          observed             NA                0.3517588   0.2852458   0.4182718
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          observed             NA                0.1976744   0.1379846   0.2573643
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   observed             NA                0.1563786   0.1106168   0.2021404
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          observed             NA                0.5196078   0.4221710   0.6170447
0-24 months (no birth wast)   ki1000108-IRC              INDIA          observed             NA                0.5307692   0.4811763   0.5803621
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       observed             NA                0.4505495   0.3477567   0.5533422
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          observed             NA                0.3508772   0.2566771   0.4450772
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     observed             NA                0.3364929   0.2725858   0.4004000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     observed             NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     observed             NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         observed             NA                0.3939198   0.3695556   0.4182840
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        observed             NA                0.0612597   0.0474556   0.0750638
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       observed             NA                0.1091366   0.1036313   0.1146419
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      observed             NA                0.1492147   0.1134379   0.1849914
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          observed             NA                0.1954545   0.1857233   0.2051858
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    observed             NA                0.3118390   0.2950654   0.3286125
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     observed             NA                0.1748553   0.1668952   0.1828153
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     observed             NA                0.2783945   0.2477970   0.3089921
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          observed             NA                0.1464646   0.0970913   0.1958379
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          observed             NA                0.4545455   0.3559622   0.5531287
0-6 months (no birth wast)    ki1000108-IRC              INDIA          observed             NA                0.3494624   0.3009450   0.3979798
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          observed             NA                0.1562500   0.0949206   0.2175794
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     observed             NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     observed             NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         observed             NA                0.1404087   0.1229206   0.1578968
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        observed             NA                0.0550194   0.0412334   0.0688054
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       observed             NA                0.0376159   0.0341115   0.0411202
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          observed             NA                0.0905846   0.0832504   0.0979189
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    observed             NA                0.0980256   0.0871772   0.1088741
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     observed             NA                0.0759915   0.0706126   0.0813703
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     observed             NA                0.0275801   0.0176087   0.0375515
6-24 months                   ki1000108-IRC              INDIA          observed             NA                0.3145780   0.2684931   0.3606629
6-24 months                   ki1000109-EE               PAKISTAN       observed             NA                0.3636364   0.2625541   0.4647186
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          observed             NA                0.2720930   0.2192075   0.3249786
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     observed             NA                0.3388889   0.2695483   0.4082295
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     observed             NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     observed             NA                0.1315069   0.1069744   0.1560393
6-24 months                   ki1101329-Keneba           GAMBIA         observed             NA                0.3369200   0.3128882   0.3609517
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       observed             NA                0.0937559   0.0881988   0.0993131
6-24 months                   ki1135781-COHORTS          GUATEMALA      observed             NA                0.1420290   0.1051403   0.1789177
6-24 months                   ki1135781-COHORTS          INDIA          observed             NA                0.1238450   0.1156244   0.1320657
6-24 months                   ki1135781-COHORTS          PHILIPPINES    observed             NA                0.2665953   0.2502200   0.2829706
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     observed             NA                0.1651770   0.1558486   0.1745053
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     observed             NA                0.2623090   0.2322804   0.2923376


### Parameter: RR


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     observed             optimal           0.7845858   0.5299369   1.1616001
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          observed             optimal           0.6925570   0.5100779   0.9403174
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          observed             optimal           1.0821699   0.6149315   1.9044264
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   observed             optimal           1.3859156   0.6300384   3.0486425
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          observed             optimal           1.4827916   0.7329738   2.9996583
0-24 months (no birth wast)   ki1000108-IRC              INDIA          observed             optimal           1.1033932   0.9577452   1.2711905
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       observed             optimal           1.2030902   0.7309406   1.9802240
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          observed             optimal           1.1433775   0.9047554   1.4449343
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     observed             optimal           0.9739035   0.6019602   1.5756657
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     observed             optimal           1.7405139   1.1410854   2.6548307
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     observed             optimal           1.2301542   0.8455621   1.7896727
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         observed             optimal           1.0682727   0.9897082   1.1530738
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        observed             optimal           1.0413731   1.0146935   1.0687542
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       observed             optimal           1.2664007   1.1551998   1.3883060
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      observed             optimal           0.9236923   0.6931489   1.2309150
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          observed             optimal           1.3695897   1.2168684   1.5414782
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    observed             optimal           1.2817922   1.1760409   1.3970528
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     observed             optimal           1.2136619   1.0852810   1.3572293
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     observed             optimal           1.0529844   0.8832130   1.2553893
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          observed             optimal           1.8987949   1.0814599   3.3338472
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          observed             optimal           1.2499569   0.5993840   2.6066634
0-6 months (no birth wast)    ki1000108-IRC              INDIA          observed             optimal           1.0965869   0.8731334   1.3772268
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          observed             optimal           1.1755034   0.3896488   3.5462917
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     observed             optimal           0.8538493   0.5815581   1.2536300
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     observed             optimal           0.9259827   0.5582799   1.5358675
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         observed             optimal           0.8500052   0.7196201   1.0040143
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        observed             optimal           1.0274695   1.0027255   1.0528242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       observed             optimal           1.0077542   0.8726634   1.1637573
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          observed             optimal           1.1408760   0.9876238   1.3179087
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    observed             optimal           1.0680485   0.8960451   1.2730695
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     observed             optimal           1.0964142   0.9447417   1.2724368
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     observed             optimal           0.5608104   0.4020024   0.7823542
6-24 months                   ki1000108-IRC              INDIA          observed             optimal           1.1414091   0.9116137   1.4291303
6-24 months                   ki1000109-EE               PAKISTAN       observed             optimal           1.2138921   0.6913831   2.1312843
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          observed             optimal           0.9816929   0.6984952   1.3797103
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     observed             optimal           0.8407173   0.5483354   1.2890023
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     observed             optimal           2.2644145   1.2858330   3.9877441
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     observed             optimal           1.4582576   0.9529705   2.2314598
6-24 months                   ki1101329-Keneba           GAMBIA         observed             optimal           1.0544069   0.9633313   1.1540930
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       observed             optimal           1.3120705   1.1754309   1.4645939
6-24 months                   ki1135781-COHORTS          GUATEMALA      observed             optimal           0.9446938   0.6578292   1.3566536
6-24 months                   ki1135781-COHORTS          INDIA          observed             optimal           1.5992995   1.3480754   1.8973412
6-24 months                   ki1135781-COHORTS          PHILIPPINES    observed             optimal           1.3544924   1.2222391   1.5010563
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     observed             optimal           1.2780104   1.1155083   1.4641852
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     observed             optimal           1.1529100   0.9437869   1.4083704


### Parameter: PAR


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     optimal              NA                -0.0605325   -0.1715656    0.0505007
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          optimal              NA                -0.1561544   -0.3076484   -0.0046604
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          optimal              NA                 0.0150096   -0.0880223    0.1180414
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   optimal              NA                 0.0435445   -0.0459570    0.1330460
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                 0.1691824   -0.0760523    0.4144172
0-24 months (no birth wast)   ki1000108-IRC              INDIA          optimal              NA                 0.0497356   -0.0181806    0.1176519
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       optimal              NA                 0.0760560   -0.1100708    0.2621827
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                 0.0439994   -0.0381602    0.1261589
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                -0.0090166   -0.1752917    0.1572585
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                 0.0755542    0.0312700    0.1198385
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                 0.0267986   -0.0170827    0.0706799
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         optimal              NA                 0.0251752   -0.0029508    0.0533012
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        optimal              NA                 0.0024338    0.0010549    0.0038127
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.0229580    0.0149790    0.0309371
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      optimal              NA                -0.0123269   -0.0587171    0.0340634
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          optimal              NA                 0.0527443    0.0357520    0.0697366
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.0685554    0.0475050    0.0896058
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.0307828    0.0145893    0.0469763
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                 0.0140083   -0.0326775    0.0606942
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          optimal              NA                 0.0693291    0.0211155    0.1175427
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                 0.0908966   -0.1753632    0.3571563
0-6 months (no birth wast)    ki1000108-IRC              INDIA          optimal              NA                 0.0307805   -0.0417242    0.1032852
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          optimal              NA                 0.0233282   -0.1237809    0.1704374
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     optimal              NA                -0.0090220   -0.0328397    0.0147958
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                -0.0021344   -0.0167160    0.0124471
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         optimal              NA                -0.0247770   -0.0522278    0.0026738
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        optimal              NA                 0.0014710    0.0001993    0.0027426
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.0002894   -0.0050827    0.0056616
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          optimal              NA                 0.0111854   -0.0003025    0.0226734
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.0062455   -0.0099293    0.0224203
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.0066824   -0.0037016    0.0170663
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                -0.0215989   -0.0401521   -0.0030457
6-24 months                   ki1000108-IRC              INDIA          optimal              NA                 0.0389731   -0.0230070    0.1009531
6-24 months                   ki1000109-EE               PAKISTAN       optimal              NA                 0.0640740   -0.1042566    0.2324046
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                -0.0050741   -0.0987239    0.0885757
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                -0.0642061   -0.2368498    0.1084377
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                 0.0898863    0.0470375    0.1327351
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                 0.0413260    0.0024706    0.0801815
6-24 months                   ki1101329-Keneba           GAMBIA         optimal              NA                 0.0173849   -0.0114450    0.0462148
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.0222995    0.0143636    0.0302354
6-24 months                   ki1135781-COHORTS          GUATEMALA      optimal              NA                -0.0083150   -0.0627590    0.0461291
6-24 months                   ki1135781-COHORTS          INDIA          optimal              NA                 0.0464080    0.0329074    0.0599086
6-24 months                   ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.0697723    0.0493633    0.0901812
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.0359316    0.0183135    0.0535496
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                 0.0347899   -0.0112778    0.0808577


### Parameter: PAF


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     optimal              NA                -0.2745579   -0.8870170    0.1391186
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          optimal              NA                -0.4439246   -0.9604849   -0.0634707
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          optimal              NA                 0.0759307   -0.6261975    0.4749075
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   optimal              NA                 0.2784553   -0.5872047    0.6719852
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                 0.3255964   -0.3643053    0.6666287
0-24 months (no birth wast)   ki1000108-IRC              INDIA          optimal              NA                 0.0937048   -0.0441190    0.2133359
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       optimal              NA                 0.1688071   -0.3681003    0.4950066
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                 0.1253982   -0.1052711    0.3079270
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                -0.0267958   -0.6612394    0.3653476
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                 0.4254570    0.1236414    0.6233281
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                 0.1870938   -0.1826453    0.4412386
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         optimal              NA                 0.0639095   -0.0103988    0.1327528
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        optimal              NA                 0.0397294    0.0144807    0.0643312
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.2103605    0.1343489    0.2796977
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      optimal              NA                -0.0826117   -0.4426915    0.1875962
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          optimal              NA                 0.2698543    0.1782184    0.3512720
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.2198423    0.1496895    0.2842074
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.1760473    0.0785796    0.2632048
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                 0.0503183   -0.1322298    0.2034344
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          optimal              NA                 0.4733502    0.0753240    0.7000462
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                 0.1999724   -0.6683796    0.6163678
0-6 months (no birth wast)    ki1000108-IRC              INDIA          optimal              NA                 0.0880795   -0.1453003    0.2739032
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          optimal              NA                 0.1493006   -1.5664138    0.7180153
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     optimal              NA                -0.1711668   -0.7195186    0.2023165
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                -0.0799338   -0.7912163    0.3489022
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         optimal              NA                -0.1764633   -0.3896221    0.0039983
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        optimal              NA                 0.0267351    0.0027181    0.0501738
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.0076945   -0.1459172    0.1407143
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          optimal              NA                 0.1234805   -0.0125313    0.2412221
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.0637130   -0.1160153    0.2144969
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.0879359   -0.0584904    0.2141064
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                -0.7831340   -1.4875475   -0.2781934
6-24 months                   ki1000108-IRC              INDIA          optimal              NA                 0.1238899   -0.0969559    0.3002737
6-24 months                   ki1000109-EE               PAKISTAN       optimal              NA                 0.1762035   -0.4463761    0.5307993
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                -0.0186485   -0.4316490    0.2752102
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                -0.1894605   -0.8237014    0.2242062
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                 0.5583847    0.2222940    0.7492317
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                 0.3142501   -0.0493505    0.5518629
6-24 months                   ki1101329-Keneba           GAMBIA         optimal              NA                 0.0515995   -0.0380645    0.1335187
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.2378458    0.1492482    0.3172169
6-24 months                   ki1135781-COHORTS          GUATEMALA      optimal              NA                -0.0585441   -0.5201515    0.2628921
6-24 months                   ki1135781-COHORTS          INDIA          optimal              NA                 0.3747262    0.2582017    0.4729467
6-24 months                   ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.2617161    0.1818295    0.3338025
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.2175338    0.1035477    0.3170263
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                 0.1326296   -0.0595612    0.2899595
