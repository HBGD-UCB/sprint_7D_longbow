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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        birthlen      ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       26     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        3     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0      134     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1        6     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       82     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1        3     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       32     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        2     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       78     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        0     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       75     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        1     188
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       24     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        1     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                   0      101     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                   1        3     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       67     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        3     199
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       38     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       68     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        0     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       66     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0     172
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                  0       32     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                  1        1     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                   0      139     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                   1        2     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm               0      111     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm               1        0     285
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       44     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        0     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       94     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1        7     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       94     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1        4     243
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       15     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       58     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        0     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       51     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        2     126
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0       12     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        3     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       35     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       12     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       34     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1        6     102
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                  0      114     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                  1       28     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                   0       91     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                   1       20     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm               0      110     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm               1       27     390
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                  0       21      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                  1        1      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                   0       36      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                   1        7      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm               0       21      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm               1        5      91
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        5      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        1      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                   0        7      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        6      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        2      21
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0       53     456
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1        4     456
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      198     456
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1       47     456
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      146     456
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1        8     456
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       24     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        4     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       94     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       10     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       67     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       12     211
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      164     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1        2     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0      230     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1        9     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      274     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1        8     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      168     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1        0     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0      280     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1       10     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      286     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1       10     754
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                  0      657    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                  1      104    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                   0      247    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                   1       44    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm               0      414    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm               1       80    1546
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                   0        1       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >=50 cm                  0       63     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >=50 cm                  1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         <48 cm                   0       16     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         <48 cm                   1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         [48-50) cm               0       36     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         [48-50) cm               1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >=50 cm                  0       14      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >=50 cm                  1        0      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           <48 cm                   0        1      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           <48 cm                   1        0      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           [48-50) cm               0        1      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           [48-50) cm               1        0      16
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        >=50 cm                  0     7318    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        >=50 cm                  1       68    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        <48 cm                   0       89    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        <48 cm                   1        1    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        [48-50) cm               0      624    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        [48-50) cm               1       13    8113
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3515   12324
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1      102   12324
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     3763   12324
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      173   12324
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     4579   12324
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      192   12324
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      202     382
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1        2     382
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      <48 cm                   0       66     382
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      <48 cm                   1        4     382
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0      105     382
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1        3     382
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          >=50 cm                  0     1346    6380
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          >=50 cm                  1       40    6380
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          <48 cm                   0     2463    6380
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          <48 cm                   1      171    6380
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          [48-50) cm               0     2242    6380
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          [48-50) cm               1      118    6380
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0     1010    2931
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1       77    2931
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0      662    2931
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1       66    2931
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0     1010    2931
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1      106    2931
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     1774   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       52   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     7930   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1      336   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     2589   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      101   12782
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0      329    1171
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1        7    1171
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      517    1171
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1       32    1171
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0      274    1171
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1       12    1171
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       26     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        3     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0      138     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1        1     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       82     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1        3     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       33     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        1     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       78     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        0     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       75     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        1     188
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       25     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        0     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                   0      103     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                   1        1     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       66     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        3     198
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       37     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       68     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        0     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       66     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0     171
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                  0       32     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                  1        1     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                   0      141     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                   1        0     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm               0      111     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm               1        0     285
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       44     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        0     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0      100     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1        1     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       95     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1        2     242
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       15     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       58     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        0     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       51     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        2     126
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0       11      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        3      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       37      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1        8      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       35      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1        5      99
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                  0      111     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                  1       20     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                   0       97     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                   1       12     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm               0      107     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm               1       25     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                  0       22      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                  1        0      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                   0       39      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                   1        3      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm               0       24      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm               1        2      90
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        5      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        1      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                   0        7      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        7      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        1      21
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0       54     448
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1        2     448
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      227     448
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1       13     448
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      151     448
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1        1     448
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       28     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        0     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       98     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1        1     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       72     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1        4     203
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      165     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1        1     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0      235     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1        2     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      277     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1        3     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      167     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1        0     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0      288     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1        0     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      293     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1        1     749
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                  0      717    1517
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                  1       28    1517
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                   0      269    1517
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                   1       14    1517
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm               0      461    1517
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm               1       28    1517
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                   0        1       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >=50 cm                  0       52      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >=50 cm                  1        0      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         <48 cm                   0       15      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         <48 cm                   1        0      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         [48-50) cm               0       30      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         [48-50) cm               1        0      97
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >=50 cm                  0       14      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >=50 cm                  1        0      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           <48 cm                   0        1      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           <48 cm                   1        0      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           [48-50) cm               0        1      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           [48-50) cm               1        0      16
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        >=50 cm                  0     7193    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        >=50 cm                  1       61    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        <48 cm                   0       89    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        <48 cm                   1        1    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        [48-50) cm               0      622    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        [48-50) cm               1       13    7979
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3312   11325
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1       34   11325
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     3566   11325
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1       42   11325
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     4316   11325
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1       55   11325
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      191     353
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1        0     353
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      <48 cm                   0       62     353
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      <48 cm                   1        0     353
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0       99     353
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1        1     353
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          >=50 cm                  0     1242    5884
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          >=50 cm                  1       17    5884
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          <48 cm                   0     2389    5884
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          <48 cm                   1       49    5884
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm               0     2136    5884
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm               1       51    5884
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0     1040    2887
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1       27    2887
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0      709    2887
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1       12    2887
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0     1072    2887
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1       27    2887
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     1776   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       23   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     8012   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1      153   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     2612   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1       57   12633
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0      331    1124
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1        0    1124
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      511    1124
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1        3    1124
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0      278    1124
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1        1    1124
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       28     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        0     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0      119     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1        5     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       82     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1        0     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       29     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        1     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       68     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        0     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       73     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        0     171
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       23     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        1     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                   0       98     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                   1        2     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       68     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        0     192
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       38     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       66     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        0     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       66     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0     170
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                  0       30     258
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                  1        0     258
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                   0      129     258
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                   1        2     258
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm               0       97     258
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm               1        0     258
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       40     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        0     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       85     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1        6     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       86     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1        3     220
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       14     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       53     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        0     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       50     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        0     117
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0       15     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        0     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       44     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1        5     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       39     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1        1     104
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                  0      133     391
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                  1        9     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                   0      102     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                   1        9     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm               0      133     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm               1        5     391
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                  0       19      88
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                  1        1      88
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                   0       38      88
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                   1        5      88
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm               0       22      88
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm               1        3      88
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        5      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        0      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                   0        6      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        4      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        1      16
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0       53     430
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1        2     430
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      192     430
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1       38     430
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      138     430
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1        7     430
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       21     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        4     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       76     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1        9     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       62     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1        8     180
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      148     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1        1     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0      213     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1        7     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      241     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1        5     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      165     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1        0     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0      270     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1       10     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      275     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1       10     730
6-24 months                   ki1101329-Keneba           GAMBIA                         >=50 cm                  0      664    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         >=50 cm                  1       79    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         <48 cm                   0      235    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         <48 cm                   1       33    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         [48-50) cm               0      420    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         [48-50) cm               1       56    1487
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                   0        1       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0       1
6-24 months                   ki1114097-CMIN             BRAZIL                         >=50 cm                  0       63     115
6-24 months                   ki1114097-CMIN             BRAZIL                         >=50 cm                  1        0     115
6-24 months                   ki1114097-CMIN             BRAZIL                         <48 cm                   0       16     115
6-24 months                   ki1114097-CMIN             BRAZIL                         <48 cm                   1        0     115
6-24 months                   ki1114097-CMIN             BRAZIL                         [48-50) cm               0       36     115
6-24 months                   ki1114097-CMIN             BRAZIL                         [48-50) cm               1        0     115
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        0       2
6-24 months                   ki1114097-CMIN             PERU                           >=50 cm                  0       12      14
6-24 months                   ki1114097-CMIN             PERU                           >=50 cm                  1        0      14
6-24 months                   ki1114097-CMIN             PERU                           <48 cm                   0        1      14
6-24 months                   ki1114097-CMIN             PERU                           <48 cm                   1        0      14
6-24 months                   ki1114097-CMIN             PERU                           [48-50) cm               0        1      14
6-24 months                   ki1114097-CMIN             PERU                           [48-50) cm               1        0      14
6-24 months                   ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
6-24 months                   ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
6-24 months                   ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
6-24 months                   ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
6-24 months                   ki1119695-PROBIT           BELARUS                        >=50 cm                  0     7258    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        >=50 cm                  1        8    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        <48 cm                   0       86    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        <48 cm                   1        0    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        [48-50) cm               0      623    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        [48-50) cm               1        0    7975
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     2965   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1       70   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     3253   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      134   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     4006   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      142   10570
6-24 months                   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      177     345
6-24 months                   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1        2     345
6-24 months                   ki1135781-COHORTS          GUATEMALA                      <48 cm                   0       61     345
6-24 months                   ki1135781-COHORTS          GUATEMALA                      <48 cm                   1        5     345
6-24 months                   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0       98     345
6-24 months                   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1        2     345
6-24 months                   ki1135781-COHORTS          INDIA                          >=50 cm                  0     1319    6169
6-24 months                   ki1135781-COHORTS          INDIA                          >=50 cm                  1       23    6169
6-24 months                   ki1135781-COHORTS          INDIA                          <48 cm                   0     2407    6169
6-24 months                   ki1135781-COHORTS          INDIA                          <48 cm                   1      139    6169
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm               0     2209    6169
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm               1       72    6169
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0      986    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1       51    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0      644    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1       55    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0      984    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1       82    2802
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     1168    8391
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       31    8391
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     5186    8391
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1      198    8391
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     1760    8391
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1       48    8391
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0      327    1178
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1        8    1178
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      523    1178
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1       32    1178
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0      277    1178
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1       11    1178


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
![](/tmp/dc05cae4-ff11-4f5f-b628-b1a33d17d415/4f05111c-6c18-48c0-8943-5ca7767d1b8b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dc05cae4-ff11-4f5f-b628-b1a33d17d415/4f05111c-6c18-48c0-8943-5ca7767d1b8b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dc05cae4-ff11-4f5f-b628-b1a33d17d415/4f05111c-6c18-48c0-8943-5ca7767d1b8b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dc05cae4-ff11-4f5f-b628-b1a33d17d415/4f05111c-6c18-48c0-8943-5ca7767d1b8b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-IRC        INDIA         >=50 cm              NA                0.1971831   0.1316585   0.2627077
0-24 months (no birth wast)   ki1000108-IRC        INDIA         <48 cm               NA                0.1801802   0.1085894   0.2517709
0-24 months (no birth wast)   ki1000108-IRC        INDIA         [48-50) cm           NA                0.1970803   0.1303838   0.2637768
0-24 months (no birth wast)   ki1101329-Keneba     GAMBIA        >=50 cm              NA                0.1366623   0.1122499   0.1610747
0-24 months (no birth wast)   ki1101329-Keneba     GAMBIA        <48 cm               NA                0.1512027   0.1100287   0.1923768
0-24 months (no birth wast)   ki1101329-Keneba     GAMBIA        [48-50) cm           NA                0.1619433   0.1294463   0.1944403
0-24 months (no birth wast)   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                0.0282002   0.0228050   0.0335953
0-24 months (no birth wast)   ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               NA                0.0439533   0.0375489   0.0503576
0-24 months (no birth wast)   ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           NA                0.0402431   0.0346663   0.0458200
0-24 months (no birth wast)   ki1135781-COHORTS    INDIA         >=50 cm              NA                0.0288600   0.0200457   0.0376744
0-24 months (no birth wast)   ki1135781-COHORTS    INDIA         <48 cm               NA                0.0649203   0.0555103   0.0743303
0-24 months (no birth wast)   ki1135781-COHORTS    INDIA         [48-50) cm           NA                0.0500000   0.0412063   0.0587937
0-24 months (no birth wast)   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                0.0708372   0.0555832   0.0860912
0-24 months (no birth wast)   ki1135781-COHORTS    PHILIPPINES   <48 cm               NA                0.0906593   0.0697988   0.1115199
0-24 months (no birth wast)   ki1135781-COHORTS    PHILIPPINES   [48-50) cm           NA                0.0949821   0.0777777   0.1121865
0-24 months (no birth wast)   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                0.0284775   0.0191702   0.0377849
0-24 months (no birth wast)   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               NA                0.0406484   0.0357768   0.0455201
0-24 months (no birth wast)   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           NA                0.0375465   0.0296285   0.0454644
0-24 months (no birth wast)   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                0.0208333   0.0037874   0.0378793
0-24 months (no birth wast)   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               NA                0.0582878   0.0361702   0.0804054
0-24 months (no birth wast)   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           NA                0.0419580   0.0191218   0.0647943
0-6 months (no birth wast)    ki1000108-IRC        INDIA         >=50 cm              NA                0.1526718   0.0909978   0.2143458
0-6 months (no birth wast)    ki1000108-IRC        INDIA         <48 cm               NA                0.1100917   0.0512522   0.1689313
0-6 months (no birth wast)    ki1000108-IRC        INDIA         [48-50) cm           NA                0.1893939   0.1224620   0.2563259
0-6 months (no birth wast)    ki1101329-Keneba     GAMBIA        >=50 cm              NA                0.0375839   0.0239225   0.0512453
0-6 months (no birth wast)    ki1101329-Keneba     GAMBIA        <48 cm               NA                0.0494700   0.0241973   0.0747427
0-6 months (no birth wast)    ki1101329-Keneba     GAMBIA        [48-50) cm           NA                0.0572597   0.0366602   0.0778593
0-6 months (no birth wast)    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                0.0101614   0.0067631   0.0135597
0-6 months (no birth wast)    ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               NA                0.0116408   0.0081407   0.0151409
0-6 months (no birth wast)    ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           NA                0.0125829   0.0092783   0.0158875
0-6 months (no birth wast)    ki1135781-COHORTS    INDIA         >=50 cm              NA                0.0135028   0.0071270   0.0198785
0-6 months (no birth wast)    ki1135781-COHORTS    INDIA         <48 cm               NA                0.0200984   0.0145273   0.0256695
0-6 months (no birth wast)    ki1135781-COHORTS    INDIA         [48-50) cm           NA                0.0233196   0.0169941   0.0296452
0-6 months (no birth wast)    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                0.0253046   0.0158797   0.0347295
0-6 months (no birth wast)    ki1135781-COHORTS    PHILIPPINES   <48 cm               NA                0.0166436   0.0073038   0.0259833
0-6 months (no birth wast)    ki1135781-COHORTS    PHILIPPINES   [48-50) cm           NA                0.0245678   0.0154139   0.0337217
0-6 months (no birth wast)    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                0.0127849   0.0066415   0.0189282
0-6 months (no birth wast)    kiGH5241-JiVitA-3    BANGLADESH    <48 cm               NA                0.0187385   0.0153614   0.0221156
0-6 months (no birth wast)    kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           NA                0.0213563   0.0151735   0.0275391
6-24 months                   ki1000108-IRC        INDIA         >=50 cm              NA                0.0633803   0.0232549   0.1035056
6-24 months                   ki1000108-IRC        INDIA         <48 cm               NA                0.0810811   0.0302369   0.1319252
6-24 months                   ki1000108-IRC        INDIA         [48-50) cm           NA                0.0362319   0.0050145   0.0674493
6-24 months                   ki1101329-Keneba     GAMBIA        >=50 cm              NA                0.1063257   0.0841535   0.1284979
6-24 months                   ki1101329-Keneba     GAMBIA        <48 cm               NA                0.1231343   0.0837809   0.1624878
6-24 months                   ki1101329-Keneba     GAMBIA        [48-50) cm           NA                0.1176471   0.0886935   0.1466006
6-24 months                   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                0.0230643   0.0177236   0.0284049
6-24 months                   ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               NA                0.0395630   0.0329980   0.0461281
6-24 months                   ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           NA                0.0342334   0.0286997   0.0397670
6-24 months                   ki1135781-COHORTS    INDIA         >=50 cm              NA                0.0171386   0.0101941   0.0240831
6-24 months                   ki1135781-COHORTS    INDIA         <48 cm               NA                0.0545954   0.0457699   0.0634210
6-24 months                   ki1135781-COHORTS    INDIA         [48-50) cm           NA                0.0315651   0.0243895   0.0387407
6-24 months                   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                0.0491803   0.0360165   0.0623441
6-24 months                   ki1135781-COHORTS    PHILIPPINES   <48 cm               NA                0.0786838   0.0587205   0.0986472
6-24 months                   ki1135781-COHORTS    PHILIPPINES   [48-50) cm           NA                0.0769231   0.0609240   0.0929221
6-24 months                   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                0.0258549   0.0143136   0.0373962
6-24 months                   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               NA                0.0367756   0.0310730   0.0424783
6-24 months                   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           NA                0.0265487   0.0183763   0.0347210
6-24 months                   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                0.0238806   0.0046308   0.0431304
6-24 months                   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               NA                0.0576577   0.0364632   0.0788521
6-24 months                   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           NA                0.0381944   0.0167939   0.0595950


### Parameter: E(Y)


agecat                        studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-IRC        INDIA         NA                   NA                0.1923077   0.1531430   0.2314724
0-24 months (no birth wast)   ki1101329-Keneba     GAMBIA        NA                   NA                0.1474774   0.1297967   0.1651581
0-24 months (no birth wast)   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0378935   0.0345223   0.0412647
0-24 months (no birth wast)   ki1135781-COHORTS    INDIA         NA                   NA                0.0515674   0.0461404   0.0569944
0-24 months (no birth wast)   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0849539   0.0748584   0.0950494
0-24 months (no birth wast)   kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0382569   0.0343814   0.0421325
0-24 months (no birth wast)   kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.0435525   0.0313774   0.0557276
0-6 months (no birth wast)    ki1000108-IRC        INDIA         NA                   NA                0.1532258   0.1165727   0.1898789
0-6 months (no birth wast)    ki1101329-Keneba     GAMBIA        NA                   NA                0.0461437   0.0355829   0.0567045
0-6 months (no birth wast)    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0115673   0.0095979   0.0135367
0-6 months (no birth wast)    ki1135781-COHORTS    INDIA         NA                   NA                0.0198844   0.0163171   0.0234518
0-6 months (no birth wast)    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0228611   0.0174082   0.0283140
0-6 months (no birth wast)    kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0184438   0.0156672   0.0212203
6-24 months                   ki1000108-IRC        INDIA         NA                   NA                0.0588235   0.0354714   0.0821757
6-24 months                   ki1101329-Keneba     GAMBIA        NA                   NA                0.1129792   0.0968836   0.1290747
6-24 months                   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0327342   0.0293418   0.0361265
6-24 months                   ki1135781-COHORTS    INDIA         NA                   NA                0.0379316   0.0331642   0.0426990
6-24 months                   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0670949   0.0578297   0.0763601
6-24 months                   kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0330116   0.0286477   0.0373755
6-24 months                   kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.0432937   0.0313994   0.0551881


### Parameter: RR


agecat                        studyid              country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-IRC        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC        INDIA         <48 cm               >=50 cm           0.9137709   0.5443581   1.533875
0-24 months (no birth wast)   ki1000108-IRC        INDIA         [48-50) cm           >=50 cm           0.9994786   0.6219992   1.606043
0-24 months (no birth wast)   ki1101329-Keneba     GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba     GAMBIA        <48 cm               >=50 cm           1.1063970   0.7988644   1.532318
0-24 months (no birth wast)   ki1101329-Keneba     GAMBIA        [48-50) cm           >=50 cm           1.1849891   0.9058099   1.550214
0-24 months (no birth wast)   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               >=50 cm           1.5586168   1.2254570   1.982351
0-24 months (no birth wast)   ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           >=50 cm           1.4270532   1.1267959   1.807320
0-24 months (no birth wast)   ki1135781-COHORTS    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS    INDIA         <48 cm               >=50 cm           2.2494875   1.6042170   3.154308
0-24 months (no birth wast)   ki1135781-COHORTS    INDIA         [48-50) cm           >=50 cm           1.7325000   1.2179014   2.464532
0-24 months (no birth wast)   ki1135781-COHORTS    PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS    PHILIPPINES   <48 cm               >=50 cm           1.2798273   0.9338686   1.753949
0-24 months (no birth wast)   ki1135781-COHORTS    PHILIPPINES   [48-50) cm           >=50 cm           1.3408509   1.0119861   1.776587
0-24 months (no birth wast)   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               >=50 cm           1.4273856   1.0134735   2.010343
0-24 months (no birth wast)   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           >=50 cm           1.3184587   0.8882263   1.957084
0-24 months (no birth wast)   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               >=50 cm           2.7978142   1.1060241   7.077390
0-24 months (no birth wast)   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           >=50 cm           2.0139860   0.7432113   5.457586
0-6 months (no birth wast)    ki1000108-IRC        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC        INDIA         <48 cm               >=50 cm           0.7211009   0.3690116   1.409133
0-6 months (no birth wast)    ki1000108-IRC        INDIA         [48-50) cm           >=50 cm           1.2405303   0.7252843   2.121810
0-6 months (no birth wast)    ki1101329-Keneba     GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba     GAMBIA        <48 cm               >=50 cm           1.3162544   0.7031412   2.463980
0-6 months (no birth wast)    ki1101329-Keneba     GAMBIA        [48-50) cm           >=50 cm           1.5235174   0.9135674   2.540705
0-6 months (no birth wast)    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               >=50 cm           1.1455915   0.7306624   1.796151
0-6 months (no birth wast)    ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           >=50 cm           1.2383086   0.8093852   1.894535
0-6 months (no birth wast)    ki1135781-COHORTS    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS    INDIA         <48 cm               >=50 cm           1.4884669   0.8608943   2.573526
0-6 months (no birth wast)    ki1135781-COHORTS    INDIA         [48-50) cm           >=50 cm           1.7270233   1.0018520   2.977096
0-6 months (no birth wast)    ki1135781-COHORTS    PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS    PHILIPPINES   <48 cm               >=50 cm           0.6577285   0.3353833   1.289888
0-6 months (no birth wast)    ki1135781-COHORTS    PHILIPPINES   [48-50) cm           >=50 cm           0.9708826   0.5732790   1.644248
0-6 months (no birth wast)    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3    BANGLADESH    <48 cm               >=50 cm           1.4656780   0.8908535   2.411409
0-6 months (no birth wast)    kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           >=50 cm           1.6704351   0.9417822   2.962844
6-24 months                   ki1000108-IRC        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC        INDIA         <48 cm               >=50 cm           1.2792793   0.5247750   3.118585
6-24 months                   ki1000108-IRC        INDIA         [48-50) cm           >=50 cm           0.5716586   0.1962438   1.665243
6-24 months                   ki1101329-Keneba     GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba     GAMBIA        <48 cm               >=50 cm           1.1580861   0.7906947   1.696184
6-24 months                   ki1101329-Keneba     GAMBIA        [48-50) cm           >=50 cm           1.1064780   0.8014037   1.527687
6-24 months                   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               >=50 cm           1.7153402   1.2901224   2.280708
6-24 months                   ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           >=50 cm           1.4842609   1.1190982   1.968576
6-24 months                   ki1135781-COHORTS    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS    INDIA         <48 cm               >=50 cm           3.1855253   2.0592980   4.927685
6-24 months                   ki1135781-COHORTS    INDIA         [48-50) cm           >=50 cm           1.8417550   1.1573229   2.930955
6-24 months                   ki1135781-COHORTS    PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS    PHILIPPINES   <48 cm               >=50 cm           1.5999046   1.1064322   2.313467
6-24 months                   ki1135781-COHORTS    PHILIPPINES   [48-50) cm           >=50 cm           1.5641026   1.1144256   2.195227
6-24 months                   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               >=50 cm           1.4223865   0.8871231   2.280612
6-24 months                   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           >=50 cm           1.0268341   0.6116247   1.723914
6-24 months                   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               >=50 cm           2.4144144   0.9645124   6.043880
6-24 months                   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           >=50 cm           1.5993924   0.5899713   4.335899


### Parameter: PAR


agecat                        studyid              country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-IRC        INDIA         >=50 cm              NA                -0.0048754   -0.0568448   0.0470940
0-24 months (no birth wast)   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.0108151   -0.0071254   0.0287555
0-24 months (no birth wast)   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.0096934    0.0048574   0.0145294
0-24 months (no birth wast)   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.0227074    0.0141406   0.0312741
0-24 months (no birth wast)   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.0141168    0.0013883   0.0268453
0-24 months (no birth wast)   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.0097794    0.0011189   0.0184399
0-24 months (no birth wast)   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.0227192    0.0053293   0.0401091
0-6 months (no birth wast)    ki1000108-IRC        INDIA         >=50 cm              NA                 0.0005541   -0.0491269   0.0502350
0-6 months (no birth wast)    ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.0085598   -0.0021571   0.0192767
0-6 months (no birth wast)    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.0014059   -0.0015272   0.0043390
0-6 months (no birth wast)    ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.0063817    0.0003833   0.0123800
0-6 months (no birth wast)    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                -0.0024435   -0.0097169   0.0048299
0-6 months (no birth wast)    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.0056589   -0.0000914   0.0114092
6-24 months                   ki1000108-IRC        INDIA         >=50 cm              NA                -0.0045568   -0.0359562   0.0268427
6-24 months                   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.0066534   -0.0094523   0.0227592
6-24 months                   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.0096699    0.0048067   0.0145331
6-24 months                   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.0207930    0.0137239   0.0278621
6-24 months                   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.0179146    0.0064749   0.0293543
6-24 months                   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.0071567   -0.0033533   0.0176667
6-24 months                   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.0194131    0.0009294   0.0378968


### Parameter: PAF


agecat                        studyid              country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-IRC        INDIA         >=50 cm              NA                -0.0253521   -0.3345184   0.2121900
0-24 months (no birth wast)   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.0733338   -0.0564145   0.1871465
0-24 months (no birth wast)   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.2558055    0.1188702   0.3714598
0-24 months (no birth wast)   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.4403435    0.2552053   0.5794608
0-24 months (no birth wast)   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.1661697    0.0033566   0.3023855
0-24 months (no birth wast)   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.2556237   -0.0091800   0.4509443
0-24 months (no birth wast)   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.5216503   -0.0360694   0.7791476
0-6 months (no birth wast)    ki1000108-IRC        INDIA         >=50 cm              NA                 0.0036159   -0.3795908   0.2803799
0-6 months (no birth wast)    ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.1855034   -0.0784642   0.3848616
0-6 months (no birth wast)    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.1215442   -0.1713048   0.3411753
0-6 months (no birth wast)    ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.3209371   -0.0504827   0.5610338
0-6 months (no birth wast)    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                -0.1068842   -0.4741878   0.1689033
0-6 months (no birth wast)    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.3068180   -0.0853617   0.5572893
6-24 months                   ki1000108-IRC        INDIA         >=50 cm              NA                -0.0774648   -0.7670506   0.3430124
6-24 months                   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.0588909   -0.0948091   0.1910131
6-24 months                   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.2954071    0.1337538   0.4268938
6-24 months                   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.5481708    0.3364341   0.6923446
6-24 months                   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.2670038    0.0795803   0.4162626
6-24 months                   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.2167932   -0.1796891   0.4800216
6-24 months                   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.4484050   -0.1661346   0.7390893
