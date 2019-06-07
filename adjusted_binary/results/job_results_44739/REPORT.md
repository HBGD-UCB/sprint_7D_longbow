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

**Outcome Variable:** ever_wasted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/36a8dbc0-7979-4745-a124-cf7be6d870ab/21542e5b-4272-4aff-b4ab-d76ad69c232c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/36a8dbc0-7979-4745-a124-cf7be6d870ab/21542e5b-4272-4aff-b4ab-d76ad69c232c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/36a8dbc0-7979-4745-a124-cf7be6d870ab/21542e5b-4272-4aff-b4ab-d76ad69c232c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/36a8dbc0-7979-4745-a124-cf7be6d870ab/21542e5b-4272-4aff-b4ab-d76ad69c232c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                0.2068966   0.0591739   0.3546193
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     <48 cm               NA                0.2500000   0.1781310   0.3218690
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     [48-50) cm           NA                0.1764706   0.0952678   0.2576734
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                0.3200000   0.1366835   0.5033165
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          <48 cm               NA                0.3653846   0.2726043   0.4581649
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          [48-50) cm           NA                0.3428571   0.2313816   0.4543327
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                0.1315789   0.0237884   0.2393695
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          <48 cm               NA                0.3088235   0.1986926   0.4189545
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          [48-50) cm           NA                0.1212121   0.0422430   0.2001812
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                0.1136364   0.0196680   0.2076048
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               NA                0.1584158   0.0870598   0.2297719
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           NA                0.1734694   0.0983467   0.2485921
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3333333   0.0935960   0.5730706
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.5531915   0.4103557   0.6960273
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.5500000   0.3950666   0.7049334
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                0.5492958   0.4673531   0.6312385
0-24 months (no birth wast)   ki1000108-IRC              INDIA          <48 cm               NA                0.5675676   0.4752866   0.6598485
0-24 months (no birth wast)   ki1000108-IRC              INDIA          [48-50) cm           NA                0.4817518   0.3979746   0.5655290
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                0.3636364   0.1615102   0.5657625
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       <48 cm               NA                0.4883721   0.3381389   0.6386053
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.4615385   0.2688560   0.6542209
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.2807018   0.2371405   0.3242630
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.4000000   0.2907856   0.5092144
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.2987013   0.1552242   0.4421784
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.2857143   0.1179874   0.4534411
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.3269231   0.2365544   0.4172918
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.3670886   0.2605461   0.4736311
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.1024096   0.0562545   0.1485648
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.2594142   0.2038046   0.3150239
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.1524823   0.1104944   0.1944701
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.1130952   0.0651724   0.1610180
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.1620690   0.1196274   0.2045105
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.1418919   0.1021141   0.1816696
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.3810775   0.3465615   0.4155936
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.4054983   0.3490679   0.4619287
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.4068826   0.3635485   0.4502167
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0588952   0.0449385   0.0728519
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        <48 cm               NA                0.0888889   0.0685016   0.1092762
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.0847724   0.0698837   0.0996610
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0829417   0.0739534   0.0919299
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.1285569   0.1181000   0.1390139
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.1129742   0.1039913   0.1219572
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.1323529   0.0857900   0.1789159
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.2285714   0.1300735   0.3270694
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.1296296   0.0661975   0.1930618
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.1471861   0.1285326   0.1658397
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          <48 cm               NA                0.2277904   0.2117724   0.2438085
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1877119   0.1719566   0.2034672
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.2511500   0.2253647   0.2769352
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.3928571   0.3573742   0.4283401
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.3181004   0.2907708   0.3454299
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.1396495   0.1216628   0.1576362
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.1821921   0.1729041   0.1914801
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1762082   0.1598474   0.1925689
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2261905   0.1793719   0.2730090
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.3187614   0.2703776   0.3671451
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2622378   0.1968918   0.3275837
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                0.2000000   0.0428054   0.3571946
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          <48 cm               NA                0.0769231   0.0255804   0.1282657
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          [48-50) cm           NA                0.2318841   0.1320516   0.3317165
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3571429   0.1048721   0.6094136
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.4222222   0.2771790   0.5672654
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.5250000   0.3694575   0.6805425
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                0.3664122   0.2837922   0.4490322
0-6 months (no birth wast)    ki1000108-IRC              INDIA          <48 cm               NA                0.3119266   0.2248377   0.3990155
0-6 months (no birth wast)    ki1000108-IRC              INDIA          [48-50) cm           NA                0.3636364   0.2814628   0.4458099
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.1071429   0.0354861   0.1787996
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.1708333   0.1113296   0.2303370
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.1513158   0.0495506   0.2530810
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.0542169   0.0197442   0.0886896
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.0632911   0.0322694   0.0943129
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.0428571   0.0191168   0.0665975
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0359281   0.0076825   0.0641738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.0208333   0.0043270   0.0373396
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.0272109   0.0086009   0.0458208
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.1409396   0.1159453   0.1659339
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         <48 cm               NA                0.1378092   0.0976358   0.1779826
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.1411043   0.1102385   0.1719701
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0536256   0.0398849   0.0673663
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        <48 cm               NA                0.0777778   0.0554004   0.1001552
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.0677165   0.0506365   0.0847966
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0295876   0.0238459   0.0353292
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.0363082   0.0302043   0.0424121
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.0448410   0.0387055   0.0509765
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0849881   0.0695830   0.1003932
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          <48 cm               NA                0.0869565   0.0757708   0.0981423
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.0978509   0.0853977   0.1103042
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.1002812   0.0822550   0.1183074
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.0901526   0.0692438   0.1110614
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.1010009   0.0831826   0.1188192
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.0694830   0.0564998   0.0824663
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.0700551   0.0638247   0.0762855
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.0985388   0.0856153   0.1114622
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.0332326   0.0127667   0.0536986
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.0252918   0.0087104   0.0418733
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.0250896   0.0086892   0.0414900
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                0.3098592   0.2337019   0.3860164
6-24 months                   ki1000108-IRC              INDIA          <48 cm               NA                0.3693694   0.2794692   0.4592696
6-24 months                   ki1000108-IRC              INDIA          [48-50) cm           NA                0.2753623   0.2007385   0.3499861
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                0.4000000   0.1840663   0.6159337
6-24 months                   ki1000109-EE               PAKISTAN       <48 cm               NA                0.3953488   0.2483756   0.5423221
6-24 months                   ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.2800000   0.1029870   0.4570130
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.2181818   0.0770820   0.3592816
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.3260870   0.2371548   0.4150191
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.2068966   0.1234863   0.2903068
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.3200000   0.1366347   0.5033653
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.3529412   0.2510653   0.4548171
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.3285714   0.2182338   0.4389090
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.0671141   0.0269045   0.1073237
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.2500000   0.1927348   0.3072652
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.1382114   0.0950489   0.1813738
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0848485   0.0423012   0.1273958
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.1571429   0.1144858   0.1997999
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.1333333   0.0938405   0.1728262
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.3270525   0.2933083   0.3607967
6-24 months                   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.3544776   0.2971879   0.4117673
6-24 months                   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.3424370   0.2997938   0.3850802
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0698517   0.0607828   0.0789206
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.1189844   0.1080801   0.1298887
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.0906461   0.0819085   0.0993837
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.1396648   0.0888103   0.1905193
6-24 months                   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.1818182   0.0886323   0.2750040
6-24 months                   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.1200000   0.0562162   0.1837838
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0797317   0.0652380   0.0942255
6-24 months                   ki1135781-COHORTS          INDIA          <48 cm               NA                0.1626080   0.1482733   0.1769427
6-24 months                   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1065322   0.0938703   0.1191942
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.2005786   0.1762024   0.2249548
6-24 months                   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.3662375   0.3305158   0.4019591
6-24 months                   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.2654784   0.2389651   0.2919917
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.1201001   0.0980818   0.1421184
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.1862927   0.1747317   0.1978538
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1321903   0.1156080   0.1487725
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2089552   0.1643508   0.2535597
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.3063063   0.2597951   0.3528175
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2395833   0.1739875   0.3051792


### Parameter: E(Y)


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.2204724   0.1693889   0.2715560
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          NA                   NA                0.3517588   0.2852458   0.4182718
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.1976744   0.1379846   0.2573643
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.1563786   0.1106168   0.2021404
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.5196078   0.4221710   0.6170447
0-24 months (no birth wast)   ki1000108-IRC              INDIA          NA                   NA                0.5307692   0.4811763   0.5803621
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       NA                   NA                0.4505495   0.3477567   0.5533422
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.3508772   0.2566771   0.4450772
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.3364929   0.2725858   0.4004000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         NA                   NA                0.3939198   0.3695556   0.4182840
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        NA                   NA                0.0612597   0.0474556   0.0750638
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1091366   0.1036313   0.1146419
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.1492147   0.1134379   0.1849914
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          NA                   NA                0.1954545   0.1857233   0.2051858
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.3118390   0.2950654   0.3286125
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.1748553   0.1668952   0.1828153
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2783945   0.2477970   0.3089921
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          NA                   NA                0.1464646   0.0970913   0.1958379
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.4545455   0.3559622   0.5531287
0-6 months (no birth wast)    ki1000108-IRC              INDIA          NA                   NA                0.3494624   0.3009450   0.3979798
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.1562500   0.0949206   0.2175794
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         NA                   NA                0.1404087   0.1229206   0.1578968
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        NA                   NA                0.0550194   0.0412334   0.0688054
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0376159   0.0341115   0.0411202
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          NA                   NA                0.0905846   0.0832504   0.0979189
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0980256   0.0871772   0.1088741
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.0759915   0.0706126   0.0813703
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0275801   0.0176087   0.0375515
6-24 months                   ki1000108-IRC              INDIA          NA                   NA                0.3145780   0.2684931   0.3606629
6-24 months                   ki1000109-EE               PAKISTAN       NA                   NA                0.3636364   0.2625541   0.4647186
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.2720930   0.2192075   0.3249786
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.3388889   0.2695483   0.4082295
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1101329-Keneba           GAMBIA         NA                   NA                0.3369200   0.3128882   0.3609517
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0937559   0.0881988   0.0993131
6-24 months                   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.1420290   0.1051403   0.1789177
6-24 months                   ki1135781-COHORTS          INDIA          NA                   NA                0.1238450   0.1156244   0.1320657
6-24 months                   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.2665953   0.2502200   0.2829706
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.1651770   0.1558486   0.1745053
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2623090   0.2322804   0.2923376


### Parameter: RR


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     <48 cm               >=50 cm           1.2083333   0.5596455   2.608918
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     [48-50) cm           >=50 cm           0.8529412   0.3647694   1.994435
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          <48 cm               >=50 cm           1.1418269   0.6101874   2.136669
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          [48-50) cm           >=50 cm           1.0714286   0.5544890   2.070301
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          <48 cm               >=50 cm           2.3470588   0.9605011   5.735220
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          [48-50) cm           >=50 cm           0.9212121   0.3234374   2.623789
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               >=50 cm           1.3940594   0.5436644   3.574635
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           >=50 cm           1.5265306   0.6002200   3.882403
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.6595745   0.7729083   3.563408
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           1.6500000   0.7621317   3.572217
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.0332640   0.8286690   1.288373
0-24 months (no birth wast)   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.8770354   0.6974481   1.102865
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           1.3430233   0.7115078   2.535055
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           1.2692308   0.6333362   2.543589
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.4250000   1.0783744   1.883043
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.0641234   0.6025741   1.879202
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm           1.1442308   0.5980174   2.189341
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm           1.2848101   0.6674695   2.473127
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           2.5331036   1.5378276   4.172518
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           1.4889445   0.8780192   2.524951
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           1.4330309   0.8708053   2.358251
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           1.2546230   0.7548445   2.085302
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           1.0640834   0.9012894   1.256282
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.0677160   0.9284047   1.227932
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.5092720   1.1094557   2.053171
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.4393764   1.1654938   1.777619
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.5499678   1.3535552   1.774882
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.3620925   1.1907840   1.558046
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.7269841   0.9901264   3.012216
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           0.9794239   0.5360832   1.789407
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           1.5476350   1.3388248   1.789012
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.2753365   1.0954904   1.484708
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.5642334   1.3643158   1.793446
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.2665754   1.1078739   1.448011
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           1.3046384   1.1378307   1.495901
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.2617888   1.0864638   1.465406
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.4092609   1.0852393   1.830026
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.1593669   0.8436821   1.593173
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          <48 cm               >=50 cm           0.3846154   0.1371540   1.078561
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          [48-50) cm           >=50 cm           1.1594203   0.4731975   2.840791
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.1822222   0.5389860   2.593109
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           1.4700000   0.6833739   3.162105
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA          <48 cm               >=50 cm           0.8512997   0.5945981   1.218825
0-6 months (no birth wast)    ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.9924242   0.7212020   1.365645
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.5944444   0.6323945   4.020043
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.4122807   0.5462680   3.651205
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           1.1673699   0.5230561   2.605366
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           0.7904762   0.3401375   1.837059
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           0.5798611   0.1899253   1.770375
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           0.7573696   0.2671556   2.147096
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           0.9777890   0.6951131   1.375418
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.0011686   0.7554568   1.326798
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.4503856   1.0249484   2.052414
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.2627654   1.0305262   1.547342
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.2271439   0.9492729   1.586353
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.5155351   1.1952125   1.921706
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           1.0231613   0.8192459   1.277832
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.1513489   0.9226137   1.436792
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           0.8989980   0.6703826   1.205576
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.0071773   0.7829296   1.295654
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           1.0082332   0.8215354   1.237359
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.4181701   1.1283654   1.782407
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           0.7610541   0.3013885   1.921783
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           0.7549690   0.3039950   1.874959
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.1920557   0.8434799   1.684684
6-24 months                   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.8886693   0.6163839   1.281236
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           0.9883721   0.5131677   1.903626
6-24 months                   ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           0.7000000   0.3048335   1.607435
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.4945652   0.7448300   2.998973
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           0.9482759   0.3735794   2.407057
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm           1.1029412   0.5806358   2.095082
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm           1.0267857   0.5284892   1.994911
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           3.7250000   1.9613815   7.074414
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           2.0593496   1.0478715   4.047176
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           1.8520408   1.0471556   3.275593
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           1.5714286   0.8777346   2.813365
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           1.0838554   0.8947427   1.312939
6-24 months                   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.0470398   0.8906967   1.230826
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.7033845   1.4531008   1.996777
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.2976929   1.1039409   1.525450
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.3018182   0.6942411   2.441127
6-24 months                   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           0.8592000   0.4511108   1.636460
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           2.0394388   1.6663669   2.496035
6-24 months                   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.3361331   1.0752905   1.660251
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.8259051   1.5624361   2.133802
6-24 months                   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.3235631   1.1309149   1.549028
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           1.5511456   1.2816495   1.877309
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.1006676   0.8926574   1.357149
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.4658945   1.1267994   1.907036
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.1465774   0.8120864   1.618842


### Parameter: PAR


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.0135759   -0.1258822   0.1530339
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                 0.0317588   -0.1402454   0.2037630
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                 0.0660955   -0.0341432   0.1663342
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.0427422   -0.0451582   0.1306427
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.1862745   -0.0374749   0.4100239
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0185265   -0.0839823   0.0469292
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.0869131   -0.0910399   0.2648661
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.0701754   -0.0367104   0.1770613
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0507786   -0.1065428   0.2081000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.0751741    0.0313717   0.1189764
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.0301408   -0.0134394   0.0737211
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0128423   -0.0118986   0.0375831
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0023645    0.0010137   0.0037153
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0261950    0.0182153   0.0341747
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0168617   -0.0167896   0.0505130
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0482684    0.0311958   0.0653409
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0606890    0.0394035   0.0819745
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0352058    0.0187116   0.0517000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0522041    0.0095406   0.0948675
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                -0.0535354   -0.1981311   0.0910604
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.0974026   -0.1378841   0.3326893
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                -0.0169498   -0.0830740   0.0491743
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.0491071   -0.0509653   0.1491796
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                -0.0015082   -0.0313738   0.0283573
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                -0.0092259   -0.0332159   0.0147641
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                -0.0005309   -0.0183340   0.0172722
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0013938    0.0001449   0.0026427
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0080283    0.0029522   0.0131044
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0055966   -0.0081712   0.0193643
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                -0.0022555   -0.0164837   0.0119727
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0065084   -0.0056026   0.0186194
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                -0.0056526   -0.0228546   0.0115495
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0047189   -0.0561992   0.0656369
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.0363636   -0.2251776   0.1524504
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.0539112   -0.0991452   0.2069676
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0188889   -0.1516728   0.1894506
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.0938615    0.0528933   0.1348297
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.0466584    0.0067363   0.0865805
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0098675   -0.0141802   0.0339151
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0239042    0.0157865   0.0320218
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0023642   -0.0331791   0.0379075
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0441133    0.0304659   0.0577607
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0660167    0.0454611   0.0865723
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0450769    0.0249809   0.0651729
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0533538    0.0121999   0.0945076


### Parameter: PAF


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.0615764   -0.8411916   0.5217016
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                 0.0902857   -0.5571922   0.4685434
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                 0.3343653   -0.4114022   0.6860785
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.2733254   -0.5659685   0.6627927
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.3584906   -0.2592056   0.6731794
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0349051   -0.1659411   0.0814043
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.1929047   -0.3179000   0.5057266
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2000000   -0.1023779   0.4194369
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1509054   -0.4724043   0.5103508
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.4233162    0.1264523   0.6192948
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.2104277   -0.1583561   0.4618024
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0326012   -0.0322982   0.0934205
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0385980    0.0140688   0.0625169
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2400200    0.1641735   0.3089839
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1130031   -0.1423339   0.3112666
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.2469546    0.1549571   0.3289366
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1946165    0.1236189   0.2598624
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.2013423    0.1011812   0.2903417
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1875183    0.0226016   0.3246085
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                -0.3655172   -1.8053088   0.3353183
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.2142857   -0.5196227   0.5937499
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                -0.0485026   -0.2558860   0.1246357
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.3142857   -0.5528914   0.6972074
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                -0.0286144   -0.7842598   0.4070103
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                -0.3455090   -1.6009534   0.3039497
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                -0.0037811   -0.1389317   0.1153320
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0253336    0.0019922   0.0481291
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2134291    0.0678548   0.3362689
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0617826   -0.1031298   0.2020414
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                -0.0230096   -0.1789391   0.1122963
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0856465   -0.0882067   0.2317248
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                -0.2049508   -1.0208128   0.2815236
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0150006   -0.1989951   0.1908025
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.1000000   -0.7638855   0.3140144
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.1981352   -0.5894576   0.5954676
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0557377   -0.6090591   0.4458679
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.5830791    0.2665679   0.7630005
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.3547980   -0.0235052   0.5932745
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0292873   -0.0447768   0.0981010
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2549619    0.1644075   0.3357027
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0166458   -0.2683017   0.2375745
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.3561975    0.2384891   0.4557114
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2476289    0.1671914   0.3202973
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.2729006    0.1396086   0.3855429
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.2034005    0.0348900   0.3424886
