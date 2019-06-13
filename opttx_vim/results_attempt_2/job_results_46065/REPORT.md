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
![](/tmp/9a0588af-a342-473a-9840-27ca53667253/84668f44-d13b-4d36-9ee4-694ba5460edf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a0588af-a342-473a-9840-27ca53667253/84668f44-d13b-4d36-9ee4-694ba5460edf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     optimal              NA                0.2629592    0.1616935   0.3642249
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          optimal              NA                0.4082611    0.2337864   0.5827358
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          optimal              NA                0.2024078    0.0788053   0.3260102
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   optimal              NA                0.1142582    0.0193310   0.2091854
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                0.3556309    0.0911974   0.6200643
0-24 months (no birth wast)   ki1000108-IRC              INDIA          optimal              NA                0.4938739    0.4074806   0.5802672
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       optimal              NA                0.3694149    0.1564451   0.5823848
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                0.3068778    0.2641003   0.3496553
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                0.4308523    0.2733665   0.5883380
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                0.1031048    0.0562282   0.1499813
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                0.1158490    0.0672418   0.1644562
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         optimal              NA                0.3932779    0.3554445   0.4311114
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        optimal              NA                0.0587960    0.0448343   0.0727578
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                0.0842499    0.0751776   0.0933222
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      optimal              NA                0.1420677    0.0825140   0.2016215
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          optimal              NA                0.1623753    0.1438474   0.1809031
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    optimal              NA                0.2409505    0.2156495   0.2662514
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                0.1428696    0.1251510   0.1605881
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                0.2588991    0.2058067   0.3119915
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          optimal              NA                0.0766917    0.0250438   0.1283395
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                0.4589623    0.2036663   0.7142582
0-6 months (no birth wast)    ki1000108-IRC              INDIA          optimal              NA                0.3413044    0.2543546   0.4282543
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          optimal              NA                0.1329218   -0.0225750   0.2884185
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     optimal              NA                0.0425728    0.0188872   0.0662584
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                0.0381279    0.0160669   0.0601889
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         optimal              NA                0.1732945    0.1389465   0.2076425
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        optimal              NA                0.0536002    0.0398301   0.0673703
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                0.0364737    0.0301028   0.0428446
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          optimal              NA                0.0827543    0.0692421   0.0962665
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    optimal              NA                0.0915188    0.0725693   0.1104683
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                0.0714714    0.0600099   0.0829329
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                0.0405585    0.0202349   0.0608821
6-24 months                   ki1000108-IRC              INDIA          optimal              NA                0.3371509    0.2592864   0.4150153
6-24 months                   ki1000109-EE               PAKISTAN       optimal              NA                0.2828157    0.1008669   0.4647646
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                0.2771671    0.2084429   0.3458914
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                0.4950731    0.3172664   0.6728797
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                0.0677214    0.0261804   0.1092625
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                0.0790253    0.0380860   0.1199647
6-24 months                   ki1101329-Keneba           GAMBIA         optimal              NA                0.3511274    0.3118968   0.3903580
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                0.0754559    0.0662084   0.0847034
6-24 months                   ki1135781-COHORTS          GUATEMALA      optimal              NA                0.1399517    0.0737887   0.2061146
6-24 months                   ki1135781-COHORTS          INDIA          optimal              NA                0.0780362    0.0636301   0.0924424
6-24 months                   ki1135781-COHORTS          PHILIPPINES    optimal              NA                0.1932662    0.1694410   0.2170914
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                0.1255290    0.1063490   0.1447091
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                0.2284261    0.1785210   0.2783312


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
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     observed             NA                0.1315068   0.1069744   0.1560393
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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     observed             optimal           0.8384284   0.6015813   1.1685241
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          observed             optimal           0.8616025   0.5850803   1.2688154
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          observed             optimal           0.9766148   0.5904929   1.6152210
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   observed             optimal           1.3686421   0.6326167   2.9610050
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          observed             optimal           1.4610875   0.7265976   2.9380453
0-24 months (no birth wast)   ki1000108-IRC              INDIA          observed             optimal           1.0747060   0.9343256   1.2361782
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       observed             optimal           1.2196297   0.7322191   2.0314911
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          observed             optimal           1.1433775   0.9047554   1.4449343
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     observed             optimal           0.7809936   0.5590545   1.0910404
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     observed             optimal           1.7223614   1.1326724   2.6190527
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     observed             optimal           1.2364035   0.8472113   1.8043828
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         observed             optimal           1.0016321   0.9307864   1.0778701
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        observed             optimal           1.0419018   1.0145502   1.0699908
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       observed             optimal           1.2953915   1.1793613   1.4228371
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      observed             optimal           1.0503064   0.7523492   1.4662651
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          observed             optimal           1.2037212   1.0869251   1.3330678
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    observed             optimal           1.2942036   1.1865442   1.4116314
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     observed             optimal           1.2238805   1.0894279   1.3749267
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     observed             optimal           1.0753011   0.8973428   1.2885516
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          observed             optimal           1.9097857   1.0855128   3.3599618
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          observed             optimal           0.9903765   0.5923869   1.6557518
0-6 months (no birth wast)    ki1000108-IRC              INDIA          observed             optimal           1.0239022   0.8290368   1.2645708
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          observed             optimal           1.1755034   0.3896488   3.5462917
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     observed             optimal           1.2380828   0.7869813   1.9477576
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     observed             optimal           0.7003348   0.4735918   1.0356362
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         observed             optimal           0.8102318   0.6863796   0.9564322
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        observed             optimal           1.0264781   1.0016852   1.0518846
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       observed             optimal           1.0313163   0.8902830   1.1946912
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          observed             optimal           1.0946218   0.9509594   1.2599873
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    observed             optimal           1.0710983   0.8938433   1.2835041
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     observed             optimal           1.0632425   0.9183325   1.2310187
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     observed             optimal           0.6800071   0.4504216   1.0266153
6-24 months                   ki1000108-IRC              INDIA          observed             optimal           0.9330482   0.7746454   1.1238418
6-24 months                   ki1000109-EE               PAKISTAN       observed             optimal           1.2857713   0.7335326   2.2537620
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          observed             optimal           0.9816929   0.6984952   1.3797103
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     observed             optimal           0.6845230   0.5048703   0.9281030
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     observed             optimal           2.3770257   1.3324961   4.2403509
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     observed             optimal           1.6641103   1.0362055   2.6725038
6-24 months                   ki1101329-Keneba           GAMBIA         observed             optimal           0.9595377   0.8804087   1.0457787
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       observed             optimal           1.2425257   1.1175074   1.3815300
6-24 months                   ki1135781-COHORTS          GUATEMALA      observed             optimal           1.0148431   0.6844026   1.5048255
6-24 months                   ki1135781-COHORTS          INDIA          observed             optimal           1.5870193   1.3380837   1.8822666
6-24 months                   ki1135781-COHORTS          PHILIPPINES    observed             optimal           1.3794199   1.2435609   1.5301216
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     observed             optimal           1.3158467   1.1457231   1.5112311
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     observed             optimal           1.1483319   0.9469914   1.3924795


### Parameter: PAR


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     optimal              NA                -0.0424867   -0.1293373    0.0443638
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          optimal              NA                -0.0565023   -0.2146657    0.1016610
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          optimal              NA                -0.0047333   -0.1067161    0.0972494
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   optimal              NA                 0.0421204   -0.0466654    0.1309062
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                 0.1639770   -0.0828624    0.4108163
0-24 months (no birth wast)   ki1000108-IRC              INDIA          optimal              NA                 0.0368953   -0.0320215    0.1058121
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       optimal              NA                 0.0811345   -0.1066686    0.2689376
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                 0.0439994   -0.0381602    0.1261589
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                -0.0943594   -0.2375052    0.0487865
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                 0.0744789    0.0300724    0.1188854
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                 0.0273871   -0.0165708    0.0713450
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         optimal              NA                 0.0006419   -0.0282074    0.0294911
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        optimal              NA                 0.0024637    0.0010338    0.0038935
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.0248867    0.0169138    0.0328596
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      optimal              NA                 0.0071469   -0.0402089    0.0545027
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          optimal              NA                 0.0330793    0.0164448    0.0497138
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.0708885    0.0498554    0.0919216
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.0319857    0.0152637    0.0487077
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                 0.0194954   -0.0275413    0.0665321
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          optimal              NA                 0.0697730    0.0216130    0.1179330
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                -0.0044168   -0.2402835    0.2314499
0-6 months (no birth wast)    ki1000108-IRC              INDIA          optimal              NA                 0.0081579   -0.0638839    0.0801998
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          optimal              NA                 0.0233282   -0.1237809    0.1704374
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     optimal              NA                 0.0101358   -0.0093892    0.0296609
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                -0.0114256   -0.0270637    0.0042125
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         optimal              NA                -0.0328858   -0.0615538   -0.0042177
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        optimal              NA                 0.0014192    0.0001368    0.0027017
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.0011422   -0.0042216    0.0065060
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          optimal              NA                 0.0078304   -0.0038212    0.0194819
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.0065068   -0.0101032    0.0231168
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.0045200   -0.0059685    0.0150086
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                -0.0129784   -0.0295672    0.0036103
6-24 months                   ki1000108-IRC              INDIA          optimal              NA                -0.0225729   -0.0852212    0.0400755
6-24 months                   ki1000109-EE               PAKISTAN       optimal              NA                 0.0808206   -0.0779398    0.2395810
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                -0.0050741   -0.0987239    0.0885757
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                -0.1561842   -0.3088471   -0.0035213
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                 0.0932542    0.0512387    0.1352696
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                 0.0524815    0.0142804    0.0906826
6-24 months                   ki1101329-Keneba           GAMBIA         optimal              NA                -0.0142074   -0.0444434    0.0160285
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.0183000    0.0102474    0.0263526
6-24 months                   ki1135781-COHORTS          GUATEMALA      optimal              NA                 0.0020773   -0.0530561    0.0572107
6-24 months                   ki1135781-COHORTS          INDIA          optimal              NA                 0.0458088    0.0322255    0.0593921
6-24 months                   ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.0733291    0.0530242    0.0936339
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.0396479    0.0222666    0.0570292
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                 0.0338829   -0.0105441    0.0783099


### Parameter: PAF


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     optimal              NA                -0.1927076   -0.6622858    0.1442196
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          optimal              NA                -0.1606280   -0.7091672    0.2118633
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          optimal              NA                -0.0239451   -0.6935005    0.3808897
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   optimal              NA                 0.2693488   -0.5807360    0.6622768
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                 0.3155783   -0.3762775    0.6596376
0-24 months (no birth wast)   ki1000108-IRC              INDIA          optimal              NA                 0.0695129   -0.0702907    0.1910551
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       optimal              NA                 0.1800790   -0.3657114    0.5077507
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                 0.1253982   -0.1052711    0.3079270
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                -0.2804202   -0.7887344    0.0834437
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                 0.4194018    0.1171322    0.6181826
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                 0.1912025   -0.1803430    0.4457939
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         optimal              NA                 0.0016294   -0.0743604    0.0722444
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        optimal              NA                 0.0402166    0.0143415    0.0654125
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.2280326    0.1520834    0.2971789
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      optimal              NA                 0.0478969   -0.3291699    0.3179951
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          optimal              NA                 0.1692429    0.0799734    0.2498506
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.2273241    0.1572164    0.2915998
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.1829268    0.0820870    0.2726885
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                 0.0700279   -0.1144013    0.2239349
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          optimal              NA                 0.4763810    0.0787764    0.7023776
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          optimal              NA                -0.0097170   -0.6880859    0.3960447
0-6 months (no birth wast)    ki1000108-IRC              INDIA          optimal              NA                 0.0233443   -0.2062190    0.2092179
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          optimal              NA                 0.1493006   -1.5664138    0.7180153
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     optimal              NA                 0.1922995   -0.2706782    0.4865891
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                -0.4278885   -1.1115231    0.0344099
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         optimal              NA                -0.2342147   -0.4569197   -0.0455525
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        optimal              NA                 0.0257951    0.0016824    0.0493254
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.0303653   -0.1232383    0.1629636
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          optimal              NA                 0.0864424   -0.0515696    0.2063412
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.0663789   -0.1187643    0.2208829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.0594808   -0.0889302    0.1876647
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                -0.4705728   -1.2201422    0.0259253
6-24 months                   ki1000108-IRC              INDIA          optimal              NA                -0.0717560   -0.2909132    0.1101950
6-24 months                   ki1000109-EE               PAKISTAN       optimal              NA                 0.2222567   -0.3632659    0.5562974
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          optimal              NA                -0.0186485   -0.4316490    0.2752102
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     optimal              NA                -0.4608714   -0.9807067   -0.0774666
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     optimal              NA                 0.5793062    0.2495288    0.7641705
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     optimal              NA                 0.3990783    0.0349405    0.6258190
6-24 months                   ki1101329-Keneba           GAMBIA         optimal              NA                -0.0421685   -0.1358362    0.0437748
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       optimal              NA                 0.1951876    0.1051513    0.2761649
6-24 months                   ki1135781-COHORTS          GUATEMALA      optimal              NA                 0.0146260   -0.4611283    0.3354711
6-24 months                   ki1135781-COHORTS          INDIA          optimal              NA                 0.3698880    0.2526626    0.4687256
6-24 months                   ki1135781-COHORTS          PHILIPPINES    optimal              NA                 0.2750576    0.1958576    0.3464572
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     optimal              NA                 0.2400330    0.1271888    0.3382879
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     optimal              NA                 0.1291716   -0.0559757    0.2818566
