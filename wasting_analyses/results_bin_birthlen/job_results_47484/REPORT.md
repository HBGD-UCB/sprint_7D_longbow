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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0       23     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        6     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0      107     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       35     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       70     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       15     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0       32     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        2     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0       74     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        6     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0       73     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        4     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0       17     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        8     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                  0       68     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                  1       38     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       48     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       24     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0       33     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        5     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0       48     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1       21     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0       58     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        8     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                 0       32     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        2     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                  0      129     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                  1       13     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm              0      107     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        5     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0       40     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        5     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0       94     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1       16     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0       85     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1       17     257
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
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        3      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        4      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        5      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        2      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        5      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        3      22
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0      161    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       58    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      475    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      320    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      313    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1      162    1489
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       21     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1        8     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       71     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       34     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       52     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       29     215
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
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                  0        3       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        2       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0       6
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
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >=50 cm                 0       14      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >=50 cm                 1        1      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           <48 cm                  0        0      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           <48 cm                  1        1      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           [48-50) cm              0        1      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           [48-50) cm              1        0      17
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >=50 cm                 0        1       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >=50 cm                 1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           <48 cm                  0        1       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           <48 cm                  1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           [48-50) cm              0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           [48-50) cm              1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        >=50 cm                 0    14250   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        >=50 cm                 1     1045   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        <48 cm                  0      169   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        <48 cm                  1       20   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        [48-50) cm              0     1248   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        [48-50) cm              1      145   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     3684   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      300   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     3771   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      506   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     4688   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      539   13488
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0      382     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1       38     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      <48 cm                  0      130     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      <48 cm                  1       25     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0      219     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1       27     821
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          >=50 cm                 0     1185    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          >=50 cm                 1      204    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          <48 cm                  0     2044    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          <48 cm                  1      600    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          [48-50) cm              0     1924    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          [48-50) cm              1      443    6400
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      848    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      273    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      454    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      286    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      795    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      355    3011
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     3229   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      542   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0    13578   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     2903   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     4827   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      988   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      951    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1      279    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     1498    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      663    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      826    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1      247    4464
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0       25     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        4     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0      132     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1        9     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       79     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1        6     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0       32     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        2     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0       78     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        2     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0       74     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        3     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                 0       20     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        5     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                  0       98     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                  1        8     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       55     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       16     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0       33     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        4     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                  0       65     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                  1        4     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0       64     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        2     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                 0       32     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                 1        2     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                  0      140     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                  1        2     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm              0      111     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm              1        1     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0       43     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        2     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0      105     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1        5     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0       97     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1        4     256
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
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        4      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        3      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                  0        6      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                  1        1      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        7      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        1      22
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0      196    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       20    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      670    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      108    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      412    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       57    1463
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       26     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1        3     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       91     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1        9     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       68     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       10     207
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
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                 0      641    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                 1      105    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                  0      245    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                  1       39    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm              0      420    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm              1       69    1519
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                  0        3       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        2       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >=50 cm                 0       62     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >=50 cm                 1        0     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         <48 cm                  0       16     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         <48 cm                  1        0     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         [48-50) cm              0       34     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         [48-50) cm              1        1     113
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 0        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >=50 cm                 0       14      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >=50 cm                 1        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           <48 cm                  0        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           <48 cm                  1        0      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           [48-50) cm              0        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           [48-50) cm              1        0      17
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >=50 cm                 0        1       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >=50 cm                 1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           <48 cm                  0        1       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           <48 cm                  1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           [48-50) cm              0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           [48-50) cm              1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        >=50 cm                 0    14154   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        >=50 cm                 1      924   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        <48 cm                  0      173   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        <48 cm                  1       16   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        [48-50) cm              0     1268   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        [48-50) cm              1      122   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     3805   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1       99   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     4056   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      131   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     4955   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      196   13242
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0      399     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1        6     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      <48 cm                  0      145     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      <48 cm                  1        6     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0      231     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1        6     793
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          >=50 cm                 0     1189    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          >=50 cm                 1      107    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          <48 cm                  0     2294    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          <48 cm                  1      212    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm              0     2036    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm              1      214    6052
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0     1006    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      107    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      670    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1       65    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0     1031    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      111    2990
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     3464   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      263   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0    15264   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1073   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     5233   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      532   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0     1174    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1       35    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     2032    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1       61    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0     1027    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1       30    4359
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
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0      166    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       44    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      476    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      251    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      313    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1      126    1376
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
6-24 months                   ki1119695-PROBIT           BELARUS                        >=50 cm                 0    14916   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        >=50 cm                 1      136   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        <48 cm                  0      175   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        <48 cm                  1        4   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        [48-50) cm              0     1340   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        [48-50) cm              1       27   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     2823   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      212   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     2984   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      403   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     3772   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      376   10570
6-24 months                   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0      327     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1       35     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      <48 cm                  0      123     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      <48 cm                  1       19     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0      200     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1       23     727
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     2176   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      309   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     8649   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1953   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     3363   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      519   16969
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      965    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1      260    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     1537    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      635    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      849    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1      228    4474


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




# Results Detail

## Results Plots
![](/tmp/f780e6ac-6e80-4b67-b2b2-5994f73c4fa7/c896f89d-9705-4ca1-9220-e10a44f01cde/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f780e6ac-6e80-4b67-b2b2-5994f73c4fa7/c896f89d-9705-4ca1-9220-e10a44f01cde/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f780e6ac-6e80-4b67-b2b2-5994f73c4fa7/c896f89d-9705-4ca1-9220-e10a44f01cde/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f780e6ac-6e80-4b67-b2b2-5994f73c4fa7/c896f89d-9705-4ca1-9220-e10a44f01cde/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                0.2068966   0.0591761   0.3546170
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     <48 cm               NA                0.2464789   0.1754571   0.3175006
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     [48-50) cm           NA                0.1764706   0.0952691   0.2576721
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                0.3200000   0.1366927   0.5033073
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          <48 cm               NA                0.3584906   0.2669723   0.4500089
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          [48-50) cm           NA                0.3333333   0.2241773   0.4424894
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                0.1315789   0.0237902   0.2393677
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          <48 cm               NA                0.3043478   0.1954640   0.4132317
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          [48-50) cm           NA                0.1212121   0.0422443   0.2001799
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                0.1111111   0.0191105   0.2031118
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               NA                0.1454545   0.0794415   0.2114676
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           NA                0.1666667   0.0942017   0.2391317
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3333333   0.0935960   0.5730706
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.5531915   0.4103557   0.6960273
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.5500000   0.3950666   0.7049334
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                0.5450958   0.4624233   0.6277682
0-24 months (no birth wast)   ki1000108-IRC              INDIA          <48 cm               NA                0.5677970   0.4749726   0.6606213
0-24 months (no birth wast)   ki1000108-IRC              INDIA          [48-50) cm           NA                0.4821393   0.3976951   0.5665835
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                0.3636364   0.1615102   0.5657625
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       <48 cm               NA                0.4883721   0.3381389   0.6386053
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.4615385   0.2688560   0.6542209
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.2553086   0.2119132   0.2987039
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.4045175   0.3450158   0.4640191
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.3441775   0.2754055   0.4129496
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.2758621   0.1128131   0.4389110
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.3238095   0.2340986   0.4135204
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.3580247   0.2533761   0.4626733
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.1016079   0.0548942   0.1483216
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.2571604   0.2012881   0.3130328
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.1547179   0.1123688   0.1970670
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.1109198   0.0625181   0.1593215
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.1598593   0.1172306   0.2024880
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.1413605   0.1013814   0.1813397
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.3717681   0.3374901   0.4060461
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.4249185   0.3682800   0.4815570
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.4083097   0.3648523   0.4517671
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0688436   0.0564184   0.0812687
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        <48 cm               NA                0.1018646   0.0804555   0.1232737
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.0961131   0.0814111   0.1108152
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0751131   0.0668664   0.0833597
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.1215586   0.1116779   0.1314393
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.1025716   0.0942748   0.1108685
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0899768   0.0624697   0.1174839
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.1671558   0.1092672   0.2250445
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.1134693   0.0741576   0.1527809
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.1415628   0.1231944   0.1599312
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          <48 cm               NA                0.2313847   0.2151948   0.2475746
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1865244   0.1706517   0.2023972
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.2378441   0.2129478   0.2627405
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.3868752   0.3520050   0.4217454
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.3097182   0.2829384   0.3364979
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.1453311   0.1318750   0.1587871
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.1761880   0.1696906   0.1826855
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1673332   0.1560231   0.1786432
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2254582   0.1995396   0.2513769
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.3105943   0.2873524   0.3338362
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2271579   0.1970255   0.2572904
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                0.2000000   0.0428133   0.3571867
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          <48 cm               NA                0.0754717   0.0250607   0.1258827
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          [48-50) cm           NA                0.2253521   0.1279251   0.3227792
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3571429   0.1048721   0.6094136
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.4222222   0.2771790   0.5672654
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.5250000   0.3694575   0.6805425
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                0.3630868   0.2796875   0.4464861
0-6 months (no birth wast)    ki1000108-IRC              INDIA          <48 cm               NA                0.3123111   0.2241693   0.4004530
0-6 months (no birth wast)    ki1000108-IRC              INDIA          [48-50) cm           NA                0.3628536   0.2801099   0.4455973
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.0951832   0.0555614   0.1348050
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.1365927   0.1032717   0.1699136
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.1233237   0.0693453   0.1773020
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.0542169   0.0197442   0.0886896
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.0632911   0.0322694   0.0943129
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.0428571   0.0191168   0.0665975
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0359281   0.0076825   0.0641738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.0208333   0.0043270   0.0373396
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.0272109   0.0086009   0.0458208
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.1369764   0.1120998   0.1618529
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         <48 cm               NA                0.1463529   0.1053520   0.1873538
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.1443645   0.1129353   0.1757937
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0612984   0.0498439   0.0727529
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        <48 cm               NA                0.0838656   0.0635324   0.1041988
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.0878229   0.0714596   0.1041861
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0252636   0.0202672   0.0302601
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.0332363   0.0276869   0.0387856
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.0374375   0.0322105   0.0426645
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0148148   0.0030414   0.0265882
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.0397351   0.0085594   0.0709108
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.0253165   0.0053049   0.0453280
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0796799   0.0649346   0.0944252
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          <48 cm               NA                0.0845261   0.0735298   0.0955223
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.0952922   0.0830286   0.1075558
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.0940681   0.0769126   0.1112237
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.0893933   0.0687767   0.1100099
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.0978689   0.0806764   0.1150614
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.0740564   0.0638661   0.0842466
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.0656150   0.0613562   0.0698738
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.0907951   0.0819902   0.0996000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.0279583   0.0174194   0.0384971
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.0296234   0.0216977   0.0375491
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.0279119   0.0175442   0.0382796
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                0.3120999   0.2352602   0.3889397
6-24 months                   ki1000108-IRC              INDIA          <48 cm               NA                0.3691833   0.2789948   0.4593718
6-24 months                   ki1000108-IRC              INDIA          [48-50) cm           NA                0.2768776   0.2018253   0.3519300
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                0.4000000   0.1840663   0.6159337
6-24 months                   ki1000109-EE               PAKISTAN       <48 cm               NA                0.3953488   0.2483756   0.5423221
6-24 months                   ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.2800000   0.1029870   0.4570130
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.1994500   0.1274665   0.2714335
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.3505070   0.3054701   0.3955439
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.2858789   0.2232278   0.3485300
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.3200000   0.1366347   0.5033653
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.3529412   0.2510653   0.4548171
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.3285714   0.2182338   0.4389090
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.0680184   0.0262806   0.1097561
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.2481763   0.1902156   0.3061369
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.1429470   0.0983189   0.1875752
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0856611   0.0430627   0.1282595
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.1582118   0.1153452   0.2010783
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.1345128   0.0948379   0.1741877
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.3208170   0.2872069   0.3544270
6-24 months                   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.3683671   0.3108181   0.4259161
6-24 months                   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.3441637   0.3012242   0.3871033
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0694399   0.0603388   0.0785410
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.1213665   0.1102319   0.1325011
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.0905340   0.0817318   0.0993362
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0955915   0.0651610   0.1260220
6-24 months                   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.1350030   0.0781125   0.1918936
6-24 months                   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.1053404   0.0644994   0.1461814
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0763902   0.0620358   0.0907445
6-24 months                   ki1135781-COHORTS          INDIA          <48 cm               NA                0.1671500   0.1526064   0.1816935
6-24 months                   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1072428   0.0942630   0.1202227
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.1967593   0.1725610   0.2209576
6-24 months                   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.3657801   0.3303164   0.4012438
6-24 months                   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.2653486   0.2388465   0.2918506
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.1240038   0.1082187   0.1397888
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.1849940   0.1769326   0.1930554
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1310876   0.1196236   0.1425515
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2112491   0.1856821   0.2368162
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.2961877   0.2733354   0.3190400
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2082508   0.1791719   0.2373298


### Parameter: E(Y)


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.2187500   0.1680104   0.2694896
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          NA                   NA                0.3448276   0.2792808   0.4103743
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.1965318   0.1371457   0.2559179
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.1478599   0.1043780   0.1913419
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.5196078   0.4221710   0.6170447
0-24 months (no birth wast)   ki1000108-IRC              INDIA          NA                   NA                0.5307692   0.4811763   0.5803621
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       NA                   NA                0.4505495   0.3477567   0.5533422
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.3626595   0.3120201   0.4132989
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.3302326   0.2672220   0.3932431
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         NA                   NA                0.3939198   0.3695556   0.4182840
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0997183   0.0946616   0.1047750
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.1096224   0.0882390   0.1310059
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          NA                   NA                0.1948438   0.1851392   0.2045483
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.3035536   0.2871278   0.3199794
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.1700618   0.1646915   0.1754320
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2663530   0.2512746   0.2814315
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          NA                   NA                0.1435644   0.0950890   0.1920397
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.4545455   0.3559622   0.5531287
0-6 months (no birth wast)    ki1000108-IRC              INDIA          NA                   NA                0.3494624   0.3009450   0.3979798
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.1264525   0.0961151   0.1567899
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         NA                   NA                0.1402238   0.1227569   0.1576907
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0321704   0.0291649   0.0351759
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      NA                   NA                0.0226986   0.0123257   0.0330715
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          NA                   NA                0.0880701   0.0809295   0.0952106
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0946488   0.0841546   0.1051431
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.0723218   0.0686288   0.0760148
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0289057   0.0236101   0.0342013
6-24 months                   ki1000108-IRC              INDIA          NA                   NA                0.3145780   0.2684931   0.3606629
6-24 months                   ki1000109-EE               PAKISTAN       NA                   NA                0.3636364   0.2625541   0.4647186
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.3059593   0.2629068   0.3490118
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.3388889   0.2695483   0.4082295
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1101329-Keneba           GAMBIA         NA                   NA                0.3369200   0.3128882   0.3609517
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0937559   0.0881988   0.0993131
6-24 months                   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.1059147   0.0835302   0.1282992
6-24 months                   ki1135781-COHORTS          INDIA          NA                   NA                0.1238450   0.1156244   0.1320657
6-24 months                   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.2665953   0.2502200   0.2829706
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.1638871   0.1577133   0.1700609
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2510058   0.2361044   0.2659072


### Parameter: RR


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     <48 cm               >=50 cm           1.1913146   0.5516307   2.572791
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     [48-50) cm           >=50 cm           0.8529412   0.3647742   1.994408
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          <48 cm               >=50 cm           1.1202830   0.5983587   2.097461
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          [48-50) cm           >=50 cm           1.0416667   0.5384782   2.015067
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          <48 cm               >=50 cm           2.3130435   0.9461590   5.654620
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          [48-50) cm           >=50 cm           0.9212121   0.3234432   2.623743
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               >=50 cm           1.3090909   0.5092105   3.365443
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           >=50 cm           1.5000000   0.5887494   3.821660
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.6595745   0.7729083   3.563408
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           1.6500000   0.7621317   3.572217
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.0416463   0.8332583   1.302150
0-24 months (no birth wast)   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.8845038   0.7014457   1.115335
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           1.3430233   0.7115078   2.535055
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           1.2692308   0.6333362   2.543589
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.5844259   1.3228216   1.897766
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.3480845   1.0985599   1.654286
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm           1.1738095   0.6110918   2.254700
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm           1.2978395   0.6712075   2.509488
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           2.5309099   1.5224248   4.207436
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           1.5226955   0.8919531   2.599466
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           1.4412150   0.8640036   2.404042
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           1.2744388   0.7574827   2.144200
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           1.1429665   0.9727366   1.342987
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.0982913   0.9545189   1.263719
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.4796525   1.0914286   2.005969
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.3961091   1.1834825   1.646936
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.6183415   1.4118375   1.855050
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.3655631   1.1914758   1.565086
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.8577660   1.1702518   2.949190
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.2610950   0.7944405   2.001863
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           1.6345028   1.4107636   1.893726
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.3176095   1.1284338   1.538499
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.6265912   1.4170836   1.867073
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.3021897   1.1370595   1.491301
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           1.2123220   1.0960568   1.340920
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.1513929   1.0297158   1.287448
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.3776136   1.2033203   1.577152
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.0075389   0.8454519   1.200701
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          <48 cm               >=50 cm           0.3773585   0.1345275   1.058516
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          [48-50) cm           >=50 cm           1.1267606   0.4594847   2.763072
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.1822222   0.5389860   2.593109
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           1.4700000   0.6833739   3.162105
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA          <48 cm               >=50 cm           0.8601555   0.5977791   1.237694
0-6 months (no birth wast)    ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.9993578   0.7226366   1.382044
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.4350505   0.8072065   2.551230
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.2956457   0.6640331   2.528033
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           1.1673699   0.5230561   2.605366
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           0.7904762   0.3401375   1.837059
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           0.5798611   0.1899253   1.770375
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           0.7573696   0.2671556   2.147096
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           1.0684532   0.7656239   1.491062
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.0539372   0.7941831   1.398649
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.3681533   0.9840121   1.902256
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.4327104   1.2202083   1.682220
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.3155782   1.0156186   1.704130
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.4818727   1.1632011   1.887848
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           2.6821192   0.8779688   8.193643
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.7088608   0.5570751   5.242031
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           1.0608202   0.8460150   1.330165
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.1959372   0.9545909   1.498302
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           0.9503032   0.7081990   1.275173
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.0404044   0.8078056   1.339977
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           0.8860148   0.7610881   1.031447
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.2260271   1.0344799   1.453042
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.0595581   0.6633241   1.692481
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           0.9983425   0.5851721   1.703239
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.1829009   0.8362196   1.673310
6-24 months                   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.8871442   0.6150031   1.279709
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           0.9883721   0.5131677   1.903626
6-24 months                   ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           0.7000000   0.3048335   1.607435
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.7573678   1.2756408   2.421012
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.4333363   0.9743785   2.108475
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm           1.1029412   0.5806358   2.095082
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm           1.0267857   0.5284892   1.994911
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           3.6486660   1.8935426   7.030612
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           2.1015952   1.0557046   4.183653
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           1.8469504   1.0484215   3.253678
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           1.5702906   0.8802655   2.801215
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           1.1482156   0.9520111   1.384857
6-24 months                   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.0727729   0.9120309   1.261845
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.7477910   1.4894380   2.050957
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.3037742   1.1074736   1.534869
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.4122918   0.8328349   2.394914
6-24 months                   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.1019852   0.6669450   1.820797
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           2.1881085   1.7794782   2.690574
6-24 months                   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.4038825   1.1230970   1.754867
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.8590229   1.5899096   2.173687
6-24 months                   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.3485946   1.1513182   1.579674
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           1.4918418   1.3058500   1.704324
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.0571255   0.9087737   1.229695
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.4020775   1.2176520   1.614436
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           0.9858067   0.8192851   1.186174


### Parameter: PAR


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.0118534   -0.1276167   0.1513236
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                 0.0248276   -0.1472820   0.1969372
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                 0.0649528   -0.0352523   0.1651580
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.0367488   -0.0492204   0.1227180
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.1862745   -0.0374749   0.4100239
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0143265   -0.0804710   0.0518180
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.0869131   -0.0910399   0.2648661
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.1073509    0.0612281   0.1534738
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0543705   -0.0985463   0.2072873
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.0759758    0.0316910   0.1202606
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.0323163   -0.0117117   0.0763442
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0221517   -0.0023583   0.0466616
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0028516    0.0013309   0.0043724
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0246052    0.0172622   0.0319482
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0196456   -0.0013657   0.0406570
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0532810    0.0364113   0.0701507
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0657095    0.0450914   0.0863276
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0247307    0.0120111   0.0374502
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0408948    0.0181497   0.0636399
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                -0.0564356   -0.2011483   0.0882770
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.0974026   -0.1378841   0.3326893
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                -0.0136245   -0.0803474   0.0530985
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.0312693   -0.0233813   0.0859199
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                -0.0015082   -0.0313738   0.0283573
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                -0.0092259   -0.0332159   0.0147641
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0032475   -0.0145398   0.0210347
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0024586    0.0012100   0.0037072
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0069067    0.0024794   0.0113340
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0078838   -0.0023448   0.0181124
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0083901   -0.0048469   0.0216272
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0005807   -0.0129742   0.0141356
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                -0.0017346   -0.0113315   0.0078624
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0009475   -0.0079350   0.0098299
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0024781   -0.0590188   0.0639749
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.0363636   -0.2251776   0.1524504
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.1065093    0.0473496   0.1656690
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0188889   -0.1516728   0.1894506
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.0929573    0.0508376   0.1350769
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.0458458    0.0058761   0.0858154
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0161030   -0.0077792   0.0399852
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0243160    0.0161569   0.0324751
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0103233   -0.0121675   0.0328140
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0474549    0.0338917   0.0610180
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0698359    0.0494112   0.0902607
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0398833    0.0253566   0.0544101
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0397567    0.0174126   0.0621007


### Parameter: PAF


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.0541872   -0.8558332   0.5179729
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                 0.0720000   -0.5890148   0.4580390
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                 0.3304954   -0.4197127   0.6842766
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.2485380   -0.6216695   0.6517816
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.3584906   -0.2592056   0.6731794
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0269920   -0.1595171   0.0903864
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.1929047   -0.3179000   0.5057266
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2960103    0.1798369   0.3957281
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1646430   -0.4538312   0.5200122
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.4278309    0.1257433   0.6255363
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.2256154   -0.1495649   0.4783491
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0562340   -0.0081271   0.1164861
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0397743    0.0158053   0.0631595
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2467472    0.1703562   0.3161042
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1792117   -0.0337171   0.3482808
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.2734550    0.1822385   0.3544968
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2164675    0.1458293   0.2812641
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1454218    0.0674546   0.2168705
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1535362    0.0642197   0.2343277
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                -0.3931034   -1.8626455   0.3220477
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.2142857   -0.5196227   0.5937499
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                -0.0389869   -0.2485282   0.1353870
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2472812   -0.2681419   0.5532159
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                -0.0286144   -0.7842598   0.4070103
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                -0.3455090   -1.6009534   0.3039497
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0231591   -0.1123179   0.1421353
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0385615    0.0172037   0.0594552
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2146922    0.0658364   0.3398284
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.3473251   -0.2471956   0.6584461
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0952666   -0.0680512   0.2336111
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0061351   -0.1479130   0.1395102
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                -0.0239838   -0.1657078   0.1005097
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0327776   -0.3293758   0.2962719
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0078774   -0.2082062   0.1853153
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.1000000   -0.7638855   0.3140144
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.3481159    0.1169472   0.5187685
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0557377   -0.6090591   0.4458679
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.5774617    0.2463103   0.7631139
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.3486188   -0.0293700   0.5878086
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0477947   -0.0258240   0.1161302
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2593541    0.1682783   0.3404569
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0974676   -0.1411106   0.2861650
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.3831794    0.2660301   0.4816305
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2619549    0.1820149   0.3340826
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.2433585    0.1487857   0.3274239
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1583895    0.0650038   0.2424479
