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
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                 0       28     182
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                 1       16     182
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                  0       44     182
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                  1       42     182
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm              0       28     182
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm              1       24     182
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     6456   52132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1     1084   52132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0    27156   52132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     5806   52132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     9654   52132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1     1976   52132
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0     1902    8928
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1      558    8928
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     2996    8928
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1     1326    8928
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0     1652    8928
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1      494    8928
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
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                 0       38     180
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                 1        6     180
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                  0       72     180
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                  1       12     180
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm              0       40     180
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm              1       12     180
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     6928   51658
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      526   51658
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0    30528   51658
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     2146   51658
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0    10466   51658
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1     1064   51658
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0     2348    8718
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1       70    8718
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     4064    8718
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      122    8718
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0     2054    8718
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1       60    8718
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
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                 0       24     176
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                 1       16     176
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                  0       52     176
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                  1       34     176
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm              0       36     176
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm              1       14     176
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     4350   33936
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      618   33936
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0    17298   33936
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     3906   33936
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     6726   33936
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1     1038   33936
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0     1930    8948
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1      520    8948
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     3074    8948
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1     1270    8948
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0     1698    8948
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1      456    8948


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9a4d6139-4e9d-4018-b2c1-106cf3425851/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a4d6139-4e9d-4018-b2c1-106cf3425851/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9a4d6139-4e9d-4018-b2c1-106cf3425851/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9a4d6139-4e9d-4018-b2c1-106cf3425851/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                0.2068966    0.0591761   0.3546170
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     <48 cm               NA                0.2464789    0.1754571   0.3175006
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     [48-50) cm           NA                0.1764706    0.0952691   0.2576721
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                0.3200000    0.1366927   0.5033073
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          <48 cm               NA                0.3584906    0.2669723   0.4500089
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          [48-50) cm           NA                0.3333333    0.2241773   0.4424894
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                0.1315789    0.0237902   0.2393677
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          <48 cm               NA                0.3043478    0.1954640   0.4132317
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          [48-50) cm           NA                0.1212121    0.0422443   0.2001799
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                0.1111111    0.0191105   0.2031118
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               NA                0.1454545    0.0794415   0.2114676
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           NA                0.1666667    0.0942017   0.2391317
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3333333    0.0935960   0.5730706
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.5531915    0.4103557   0.6960273
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.5500000    0.3950666   0.7049334
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                0.5492958    0.4673531   0.6312385
0-24 months (no birth wast)   ki1000108-IRC              INDIA          <48 cm               NA                0.5675676    0.4752866   0.6598485
0-24 months (no birth wast)   ki1000108-IRC              INDIA          [48-50) cm           NA                0.4817518    0.3979746   0.5655290
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                0.3636364    0.1615102   0.5657625
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       <48 cm               NA                0.4883721    0.3381389   0.6386053
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.4615385    0.2688560   0.6542209
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.2648402    0.2189696   0.3107108
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.4025157    0.3443976   0.4606338
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.3410526    0.2728394   0.4092659
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.2758621    0.1128131   0.4389110
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.3238095    0.2340986   0.4135204
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.3580247    0.2533761   0.4626733
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.1024096    0.0562545   0.1485648
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.2594142    0.2038046   0.3150239
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.1524823    0.1104944   0.1944701
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.1130952    0.0651724   0.1610180
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.1620690    0.1196274   0.2045105
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.1418919    0.1021141   0.1816696
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.3810775    0.3465615   0.4155936
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.4054983    0.3490679   0.4619287
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.4068826    0.3635485   0.4502167
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0683230    0.0560052   0.0806408
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        <48 cm               NA                0.1058201    0.0584488   0.1531914
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.1040919    0.0887859   0.1193979
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0753012    0.0671070   0.0834954
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.1183072    0.1086276   0.1279869
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.1031184    0.0948737   0.1113631
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0904762    0.0630249   0.1179275
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.1612903    0.1033532   0.2192274
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.1097561    0.0706707   0.1488414
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.1468683    0.1282515   0.1654850
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          <48 cm               NA                0.2269289    0.2109625   0.2428953
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1871567    0.1714427   0.2028708
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.2435326    0.2184026   0.2686625
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.3864865    0.3513965   0.4215765
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.3086957    0.2819920   0.3353993
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.1437666    0.1308339   0.1566993
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.1761422    0.1696876   0.1825969
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1699054    0.1587935   0.1810173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2268293    0.2013265   0.2523321
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.3068024    0.2836348   0.3299700
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2301957    0.2003465   0.2600449
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                0.2000000    0.0428133   0.3571867
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          <48 cm               NA                0.0754717    0.0250607   0.1258827
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          [48-50) cm           NA                0.2253521    0.1279251   0.3227792
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3571429    0.1048721   0.6094136
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.4222222    0.2771790   0.5672654
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.5250000    0.3694575   0.6805425
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                0.3664122    0.2837922   0.4490322
0-6 months (no birth wast)    ki1000108-IRC              INDIA          <48 cm               NA                0.3119266    0.2248377   0.3990155
0-6 months (no birth wast)    ki1000108-IRC              INDIA          [48-50) cm           NA                0.3636364    0.2814628   0.4458099
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       >=50 cm              NA                0.1363636   -0.0078405   0.2805678
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       <48 cm               NA                0.1428571    0.0364362   0.2492781
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.2307692    0.0679128   0.3936257
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.0925926    0.0544210   0.1307642
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.1388175    0.1039478   0.1736872
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.1215352    0.0685965   0.1744738
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.0542169    0.0197442   0.0886896
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.0632911    0.0322694   0.0943129
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.0428571    0.0191168   0.0665975
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0359281    0.0076825   0.0641738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.0208333    0.0043270   0.0373396
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.0272109    0.0086009   0.0458208
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.1407507    0.1157871   0.1657142
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         <48 cm               NA                0.1373239    0.0972807   0.1773672
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.1411043    0.1102385   0.1719701
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0612813    0.0498365   0.0727262
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        <48 cm               NA                0.0846561    0.0393025   0.1300097
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.0877698    0.0721364   0.1034032
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0253586    0.0204269   0.0302903
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.0312873    0.0260139   0.0365608
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.0380509    0.0328260   0.0432758
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0148148    0.0030414   0.0265882
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.0397351    0.0085594   0.0709108
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.0253165    0.0053049   0.0453280
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0825617    0.0675766   0.0975468
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          <48 cm               NA                0.0845970    0.0737007   0.0954932
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.0951111    0.0829882   0.1072340
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.0961366    0.0788157   0.1134574
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.0884354    0.0679056   0.1089651
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.0971979    0.0800144   0.1143814
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.0705661    0.0614043   0.0797280
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.0656791    0.0614210   0.0699373
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.0922810    0.0838520   0.1007100
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.0289495    0.0180590   0.0398400
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.0291448    0.0212712   0.0370183
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.0283822    0.0180002   0.0387642
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                0.3098592    0.2337019   0.3860164
6-24 months                   ki1000108-IRC              INDIA          <48 cm               NA                0.3693694    0.2794692   0.4592696
6-24 months                   ki1000108-IRC              INDIA          [48-50) cm           NA                0.2753623    0.2007385   0.3499861
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                0.4000000    0.1840663   0.6159337
6-24 months                   ki1000109-EE               PAKISTAN       <48 cm               NA                0.3953488    0.2483756   0.5423221
6-24 months                   ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.2800000    0.1029870   0.4570130
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.2095238    0.1392995   0.2797482
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.3452545    0.3010536   0.3894554
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.2870159    0.2284625   0.3455694
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.3200000    0.1366347   0.5033653
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.3529412    0.2510653   0.4548171
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.3285714    0.2182338   0.4389090
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.0671141    0.0269045   0.1073237
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.2500000    0.1927348   0.3072652
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.1382114    0.0950489   0.1813738
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0848485    0.0423012   0.1273958
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.1571429    0.1144858   0.1997999
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.1333333    0.0938405   0.1728262
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.3270525    0.2933083   0.3607967
6-24 months                   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.3544776    0.2971879   0.4117673
6-24 months                   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.3424370    0.2997938   0.3850802
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0698517    0.0607828   0.0789206
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.1189844    0.1080801   0.1298887
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.0906461    0.0819085   0.0993837
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0966851    0.0662207   0.1271494
6-24 months                   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.1338028    0.0777698   0.1898358
6-24 months                   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.1031390    0.0631934   0.1430846
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0797317    0.0652380   0.0942255
6-24 months                   ki1135781-COHORTS          INDIA          <48 cm               NA                0.1626080    0.1482733   0.1769427
6-24 months                   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1065322    0.0938703   0.1191942
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.2005786    0.1762024   0.2249548
6-24 months                   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.3662375    0.3305158   0.4019591
6-24 months                   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.2654784    0.2389651   0.2919917
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.1243961    0.1088781   0.1399141
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.1842105    0.1762413   0.1921798
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1336940    0.1222634   0.1451246
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2122449    0.1871629   0.2373269
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.2923573    0.2696492   0.3150654
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2116992    0.1826714   0.2407269


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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.1700683   0.1646983   0.1754383
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2663530   0.2512746   0.2814315
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          NA                   NA                0.1435644   0.0950890   0.1920397
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.4545455   0.3559622   0.5531287
0-6 months (no birth wast)    ki1000108-IRC              INDIA          NA                   NA                0.3494624   0.3009450   0.3979798
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       NA                   NA                0.1666667   0.0892407   0.2440927
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.1638967   0.1577233   0.1700702
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
0-24 months (no birth wast)   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.0332640   0.8286690   1.288373
0-24 months (no birth wast)   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.8770354   0.6974481   1.102865
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           1.3430233   0.7115078   2.535055
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           1.2692308   0.6333362   2.543589
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.5198439   1.2743105   1.812686
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.2877677   1.0531535   1.574648
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm           1.1738095   0.6110918   2.254700
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm           1.2978395   0.6712075   2.509488
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
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.5488215   0.9252096   2.592762
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.5235267   1.2889575   1.800784
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.5711199   1.3711406   1.800266
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.3694127   1.1964374   1.567396
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.7826825   1.1139570   2.852854
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.2130937   0.7598277   1.936750
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           1.5451188   1.3365951   1.786175
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.2743172   1.0945760   1.483574
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.5870013   1.3832016   1.820829
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.2675745   1.1078857   1.450281
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           1.2251959   1.1119562   1.349968
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.1818144   1.0617722   1.315428
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.3525697   1.1821963   1.547497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.0148413   0.8548892   1.204721
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          <48 cm               >=50 cm           0.3773585   0.1345275   1.058516
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          [48-50) cm           >=50 cm           1.1267606   0.4594847   2.763072
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.1822222   0.5389860   2.593109
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           1.4700000   0.6833739   3.162105
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA          <48 cm               >=50 cm           0.8512997   0.5945981   1.218825
0-6 months (no birth wast)    ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.9924242   0.7212020   1.365645
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           1.0476190   0.2873598   3.819273
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           1.6923077   0.4746128   6.034193
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.4992287   0.8451910   2.659383
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.3125799   0.6803351   2.532378
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           1.1673699   0.5230561   2.605366
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           0.7904762   0.3401375   1.837059
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           0.5798611   0.1899253   1.770375
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           0.7573696   0.2671556   2.147096
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           0.9756539   0.6935397   1.372525
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.0025124   0.7564617   1.328595
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.3814334   0.7605470   2.509192
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.4322433   1.2209821   1.680058
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.2337948   0.9538415   1.595915
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.5005108   1.1826261   1.903842
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           2.6821192   0.8779688   8.193643
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.7088608   0.5570751   5.242031
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           1.0246511   0.8201997   1.280066
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.1520000   0.9228521   1.438046
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           0.9198932   0.6856730   1.234121
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.0110398   0.7854963   1.301345
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           0.9307457   0.8066008   1.073998
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.3077236   1.1157048   1.532790
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.0067436   0.6298565   1.609148
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           0.9804028   0.5778055   1.663517
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.1920557   0.8434799   1.684684
6-24 months                   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.8886693   0.6163839   1.281236
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           0.9883721   0.5131677   1.903626
6-24 months                   ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           0.7000000   0.3048335   1.607435
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.6478054   1.2308546   2.205998
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.3698488   0.9600936   1.954482
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
6-24 months                   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.3839034   0.8194155   2.337262
6-24 months                   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.0667521   0.6474837   1.757511
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           2.0394388   1.6663669   2.496035
6-24 months                   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.3361331   1.0752905   1.660251
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.8259051   1.5624361   2.133802
6-24 months                   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.3235631   1.1309149   1.549028
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           1.4808380   1.2986998   1.688520
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.0747438   0.9269320   1.246126
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.3774525   1.1979028   1.583914
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           0.9974288   0.8320705   1.195649


### Parameter: PAR


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.0118534   -0.1276167   0.1513236
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                 0.0248276   -0.1472820   0.1969372
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                 0.0649528   -0.0352523   0.1651580
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.0367488   -0.0492204   0.1227180
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.1862745   -0.0374749   0.4100239
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0185265   -0.0839823   0.0469292
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.0869131   -0.0910399   0.2648661
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.0978193    0.0523505   0.1432881
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0543705   -0.0985463   0.2072873
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.0751741    0.0313717   0.1189764
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.0301408   -0.0134394   0.0737211
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0128423   -0.0118986   0.0375831
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0033722    0.0018145   0.0049299
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0244171    0.0171336   0.0317006
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0191462   -0.0018255   0.0401179
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0479755    0.0309367   0.0650143
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0600211    0.0392583   0.0807839
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0263017    0.0143682   0.0382352
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0395238    0.0170406   0.0620069
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                -0.0564356   -0.2011483   0.0882770
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.0974026   -0.1378841   0.3326893
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                -0.0169498   -0.0830740   0.0491743
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.0303030   -0.0986282   0.1592342
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.0338599   -0.0192183   0.0869381
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                -0.0015082   -0.0313738   0.0283573
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                -0.0092259   -0.0332159   0.0147641
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                -0.0005268   -0.0183080   0.0172543
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0024756    0.0012407   0.0037106
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0068118    0.0024513   0.0111722
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0078838   -0.0023448   0.0181124
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0055083   -0.0078844   0.0189011
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                -0.0014877   -0.0151548   0.0121793
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0017557   -0.0067067   0.0102181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                -0.0000438   -0.0092041   0.0091164
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0047189   -0.0561992   0.0656369
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.0363636   -0.2251776   0.1524504
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.0964355    0.0396946   0.1531764
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0188889   -0.1516728   0.1894506
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.0938615    0.0528933   0.1348297
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.0466584    0.0067363   0.0865805
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0098675   -0.0141802   0.0339151
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0239042    0.0157865   0.0320218
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0092296   -0.0132402   0.0316995
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0441133    0.0304659   0.0577607
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0660167    0.0454611   0.0865723
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0395006    0.0252826   0.0537186
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0387609    0.0167400   0.0607819


### Parameter: PAF


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.0541872   -0.8558332   0.5179729
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                 0.0720000   -0.5890148   0.4580390
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                 0.3304954   -0.4197127   0.6842766
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.2485380   -0.6216695   0.6517816
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.3584906   -0.2592056   0.6731794
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0349051   -0.1659411   0.0814043
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.1929047   -0.3179000   0.5057266
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2697277    0.1517851   0.3712707
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1646430   -0.4538312   0.5200122
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.4233162    0.1264523   0.6192948
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.2104277   -0.1583561   0.4618024
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0326012   -0.0322982   0.0934205
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0470356    0.0224974   0.0709578
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2448605    0.1691441   0.3136768
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1746561   -0.0375791   0.3434789
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.2462255    0.1541172   0.3283041
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1977281    0.1266031   0.2630610
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1546538    0.0814710   0.2220059
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1483887    0.0603211   0.2282025
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                -0.3931034   -1.8626455   0.3220477
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.2142857   -0.5196227   0.5937499
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                -0.0485026   -0.2558860   0.1246357
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.1818182   -1.0980867   0.6809372
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2677677   -0.2253175   0.5624284
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                -0.0286144   -0.7842598   0.4070103
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                -0.3455090   -1.6009534   0.3039497
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                -0.0037571   -0.1389199   0.1153651
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0388293    0.0176997   0.0595045
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2117402    0.0654781   0.3351109
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.3473251   -0.2471956   0.6584461
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0625449   -0.1024721   0.2028623
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                -0.0157185   -0.1708743   0.1188772
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0242758   -0.1000178   0.1345252
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                -0.0015164   -0.3742620   0.2701282
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0150006   -0.1989951   0.1908025
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.1000000   -0.7638855   0.3140144
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.3151906    0.0969709   0.4806768
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0557377   -0.6090591   0.4458679
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.5830791    0.2665679   0.7630005
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.3547980   -0.0235052   0.5932745
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0292873   -0.0447768   0.0981010
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2549619    0.1644075   0.3357027
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0871421   -0.1508955   0.2759469
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.3561975    0.2384891   0.4557114
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2476289    0.1671914   0.3202973
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.2410091    0.1485446   0.3234324
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1544224    0.0626561   0.2372047
