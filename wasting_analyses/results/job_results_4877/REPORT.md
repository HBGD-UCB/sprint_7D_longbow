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
![](/tmp/6cb97413-d980-48ee-a21f-f3b36f7acac6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6cb97413-d980-48ee-a21f-f3b36f7acac6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6cb97413-d980-48ee-a21f-f3b36f7acac6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6cb97413-d980-48ee-a21f-f3b36f7acac6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                0.5472132    0.4664015   0.6280248
0-24 months (no birth wast)   ki1000108-IRC              INDIA          <48 cm               NA                0.5680077    0.4777283   0.6582871
0-24 months (no birth wast)   ki1000108-IRC              INDIA          [48-50) cm           NA                0.4837454    0.4014084   0.5660824
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                0.3557293    0.1565269   0.5549316
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       <48 cm               NA                0.4868464    0.3390739   0.6346188
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.4558019    0.2634426   0.6481612
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.2314143    0.1887119   0.2741167
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.3996734    0.3422934   0.4570535
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.3358931    0.2684309   0.4033554
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.2758621    0.1128131   0.4389110
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.3238095    0.2340986   0.4135204
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.3580247    0.2533761   0.4626733
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.1046651    0.0597669   0.1495633
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.2622762    0.2079953   0.3165571
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.1567170    0.1151752   0.1982588
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.1130952    0.0651724   0.1610180
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.1620690    0.1196274   0.2045105
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.1418919    0.1021141   0.1816696
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.3751057    0.3419682   0.4082431
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.4303680    0.3801854   0.4805506
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.4158566    0.3750948   0.4566184
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0688501    0.0564502   0.0812500
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        <48 cm               NA                0.0958870    0.0577604   0.1340136
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.0967801    0.0822018   0.1113584
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0755114    0.0675075   0.0835153
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.1223202    0.1127809   0.1318595
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.1033177    0.0951887   0.1114468
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0893098    0.0619757   0.1166439
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.1637796    0.1072823   0.2202770
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.1115660    0.0728151   0.1503169
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.1476421    0.1299561   0.1653281
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          <48 cm               NA                0.2305043    0.2148428   0.2461657
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1871685    0.1718330   0.2025039
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.2304131    0.2062114   0.2546148
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.3683034    0.3347892   0.4018176
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.3021735    0.2759603   0.3283866
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.1504974    0.1373924   0.1636024
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.1763457    0.1699255   0.1827659
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1681509    0.1572211   0.1790807
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2286660    0.2033994   0.2539326
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.3110558    0.2881843   0.3339273
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2313455    0.2018908   0.2608001
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                0.2000000    0.0428133   0.3571867
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          <48 cm               NA                0.0754717    0.0250607   0.1258827
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          [48-50) cm           NA                0.2253521    0.1279251   0.3227792
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3571429    0.1048721   0.6094136
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.4222222    0.2771790   0.5672654
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.5250000    0.3694575   0.6805425
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                0.3658511    0.2832699   0.4484323
0-6 months (no birth wast)    ki1000108-IRC              INDIA          <48 cm               NA                0.3133172    0.2264071   0.4002273
0-6 months (no birth wast)    ki1000108-IRC              INDIA          [48-50) cm           NA                0.3629615    0.2809437   0.4449793
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       >=50 cm              NA                0.1363636   -0.0078405   0.2805678
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       <48 cm               NA                0.1428571    0.0364362   0.2492781
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.2307692    0.0679128   0.3936257
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.0959873    0.0568673   0.1351074
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.1375787    0.1032531   0.1719044
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.1214064    0.0680742   0.1747386
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.0542169    0.0197442   0.0886896
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.0632911    0.0322694   0.0943129
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.0428571    0.0191168   0.0665975
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0359281    0.0076825   0.0641738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.0208333    0.0043270   0.0373396
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.0272109    0.0086009   0.0458208
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.1385669    0.1143984   0.1627354
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         <48 cm               NA                0.1504959    0.1137642   0.1872276
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.1457915    0.1160937   0.1754893
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0612569    0.0498218   0.0726920
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        <48 cm               NA                0.0794858    0.0435345   0.1154371
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.0882214    0.0721907   0.1042521
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0253751    0.0205485   0.0302018
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.0325281    0.0272985   0.0377577
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.0380499    0.0329021   0.0431977
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0148148    0.0030414   0.0265882
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.0397351    0.0085594   0.0709108
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.0253165    0.0053049   0.0453280
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0823662    0.0680362   0.0966962
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          <48 cm               NA                0.0840890    0.0734349   0.0947430
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.0944920    0.0826406   0.1063433
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.0911600    0.0744546   0.1078653
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.0846591    0.0648800   0.1044381
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.0959255    0.0789760   0.1128750
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.0767870    0.0667816   0.0867925
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.0653728    0.0611738   0.0695719
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.0914692    0.0830316   0.0999069
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.0279274    0.0171408   0.0387140
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.0291969    0.0213626   0.0370312
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.0275274    0.0173550   0.0376997
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                0.3127065    0.2384473   0.3869658
6-24 months                   ki1000108-IRC              INDIA          <48 cm               NA                0.3755434    0.2881332   0.4629536
6-24 months                   ki1000108-IRC              INDIA          [48-50) cm           NA                0.2800468    0.2068960   0.3531976
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                0.4004095    0.1874975   0.6133214
6-24 months                   ki1000109-EE               PAKISTAN       <48 cm               NA                0.3954769    0.2494402   0.5415136
6-24 months                   ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.2812771    0.1057049   0.4568493
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.1831055    0.1149471   0.2512639
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.3444366    0.3010526   0.3878206
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.2846433    0.2255616   0.3437250
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.3200000    0.1366347   0.5033653
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.3529412    0.2510653   0.4548171
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.3285714    0.2182338   0.4389090
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.0719072    0.0323925   0.1114219
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.2584283    0.2023059   0.3145507
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.1472605    0.1042265   0.1902944
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0848683    0.0423190   0.1274177
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.1571282    0.1144722   0.1997843
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.1333288    0.0938367   0.1728208
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.3235503    0.2907621   0.3563386
6-24 months                   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.3802146    0.3278284   0.4326007
6-24 months                   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.3490075    0.3082718   0.3897432
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0693381    0.0604678   0.0782084
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.1216838    0.1109790   0.1323887
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.0907238    0.0820906   0.0993571
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0967162    0.0664451   0.1269874
6-24 months                   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.1361627    0.0800899   0.1922355
6-24 months                   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.1051600    0.0648018   0.1455183
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0800614    0.0664255   0.0936972
6-24 months                   ki1135781-COHORTS          INDIA          <48 cm               NA                0.1664477    0.1523628   0.1805326
6-24 months                   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1068911    0.0945067   0.1192755
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.1895410    0.1660197   0.2130622
6-24 months                   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.3469712    0.3133231   0.3806194
6-24 months                   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.2590558    0.2331423   0.2849692
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.1267024    0.1120215   0.1413833
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.1845778    0.1766007   0.1925549
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1310115    0.1198646   0.1421584
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2151082    0.1901913   0.2400251
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.2966504    0.2743011   0.3189997
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2138629    0.1852852   0.2424406


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
0-24 months (no birth wast)   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.0380008   0.8366127   1.287867
0-24 months (no birth wast)   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.8840165   0.7064070   1.106282
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           1.3685868   0.7251697   2.582885
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           1.2813169   0.6359815   2.581479
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.7270902   1.4324122   2.082390
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.4514793   1.1664502   1.806157
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm           1.1738095   0.6110918   2.254700
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm           1.2978395   0.6712075   2.509488
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           2.5058608   1.5572502   4.032325
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           1.4973183   0.9051420   2.476917
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           1.4330309   0.8708053   2.358251
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           1.2546230   0.7548445   2.085302
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           1.1473247   0.9926841   1.326055
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.1086386   0.9729415   1.263262
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.3926915   0.8715519   2.225444
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.4056636   1.1967567   1.651037
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.6198906   1.4203913   1.847410
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.3682402   1.1992119   1.561093
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.8338371   1.1575100   2.905339
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.2492023   0.7867683   1.983438
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           1.5612367   1.3608039   1.791191
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.2677175   1.0968362   1.465221
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.5984481   1.3913311   1.836397
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.3114420   1.1447789   1.502369
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           1.1717525   1.0652632   1.288887
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.1173007   1.0050601   1.242076
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.3603064   1.1920458   1.552318
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.0117178   0.8548864   1.197320
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          <48 cm               >=50 cm           0.3773585   0.1345275   1.058516
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          [48-50) cm           >=50 cm           1.1267606   0.4594847   2.763072
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.1822222   0.5389860   2.593109
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           1.4700000   0.6833739   3.162105
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA          <48 cm               >=50 cm           0.8564064   0.5990429   1.224340
0-6 months (no birth wast)    ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.9921017   0.7209970   1.365146
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           1.0476190   0.2873598   3.819273
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           1.6923077   0.4746128   6.034193
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.4333012   0.8116776   2.530996
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.2648173   0.6521469   2.453071
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           1.1673699   0.5230561   2.605366
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           0.7904762   0.3401375   1.837059
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           0.5798611   0.1899253   1.770375
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           0.7573696   0.2671556   2.147096
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           1.0860887   0.8052932   1.464794
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.0521380   0.8052220   1.374769
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.2975812   0.7748818   2.172870
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.4401868   1.2318502   1.683758
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.2818911   0.9996118   1.643883
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.4994963   1.1874545   1.893537
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           2.6821192   0.8779688   8.193643
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.7088608   0.5570751   5.242031
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           1.0209158   0.8232550   1.266034
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.1472179   0.9258195   1.421561
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           0.9286870   0.6901217   1.249721
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.0522764   0.8160241   1.356928
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           0.8513524   0.7367629   0.983764
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.1912067   1.0135483   1.400006
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.0454567   0.6489427   1.684247
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           0.9856768   0.5755327   1.688103
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.2009452   0.8624370   1.672319
6-24 months                   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.8955579   0.6300341   1.272985
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           0.9876811   0.5170424   1.886719
6-24 months                   ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           0.7024736   0.3093891   1.594979
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.8810829   1.3468020   2.627315
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.5545318   1.0475387   2.306902
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm           1.1029412   0.5806358   2.095082
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm           1.0267857   0.5284892   1.994911
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           3.5939147   1.9920849   6.483771
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           2.0479248   1.0992511   3.815321
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           1.8514357   1.0468866   3.274294
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           1.5710075   0.8775654   2.812400
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           1.1751328   0.9913430   1.392996
6-24 months                   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.0786807   0.9249576   1.257952
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.7549349   1.5027384   2.049456
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.3084269   1.1158585   1.534228
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.4078582   0.8391630   2.361954
6-24 months                   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.0873052   0.6626118   1.784201
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           2.0790017   1.7199654   2.512985
6-24 months                   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.3351143   1.0872427   1.639496
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.8305870   1.5644800   2.141957
6-24 months                   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.3667533   1.1659842   1.602093
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           1.4567821   1.2886038   1.646910
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.0340096   0.8981845   1.190374
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.3790754   1.2028285   1.581147
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           0.9942109   0.8331343   1.186430


### Parameter: PAR


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.0118534   -0.1276167   0.1513236
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                 0.0248276   -0.1472820   0.1969372
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                 0.0649528   -0.0352523   0.1651580
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.0367488   -0.0492204   0.1227180
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.1862745   -0.0374749   0.4100239
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0164439   -0.0806006   0.0477128
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.0948202   -0.0801327   0.2697731
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.1312452    0.0845608   0.1779295
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0543705   -0.0985463   0.2072873
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.0729186    0.0301339   0.1157033
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.0301408   -0.0134394   0.0737211
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0188141   -0.0047090   0.0423372
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0028451    0.0013100   0.0043802
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0242069    0.0170686   0.0313451
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0203126   -0.0005245   0.0411497
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0472017    0.0309196   0.0634837
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0731405    0.0530238   0.0932573
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0195709    0.0071780   0.0319637
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0376871    0.0153353   0.0600388
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                -0.0564356   -0.2011483   0.0882770
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.0974026   -0.1378841   0.3326893
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                -0.0163887   -0.0824096   0.0496321
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.0303030   -0.0986282   0.1592342
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.0304652   -0.0235285   0.0844588
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                -0.0015082   -0.0313738   0.0283573
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                -0.0092259   -0.0332159   0.0147641
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0016569   -0.0155830   0.0188969
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0025001    0.0012539   0.0037463
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0067953    0.0025122   0.0110783
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0078838   -0.0023448   0.0181124
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0057039   -0.0071728   0.0185805
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0034888   -0.0097071   0.0166848
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                -0.0044652   -0.0139063   0.0049758
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0009783   -0.0081176   0.0100743
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0018715   -0.0574286   0.0611715
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.0367731   -0.2228738   0.1493276
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.1228538    0.0652463   0.1804613
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0188889   -0.1516728   0.1894506
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.0890684    0.0486765   0.1294603
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.0466385    0.0067151   0.0865620
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0133696   -0.0098774   0.0366167
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0244178    0.0164628   0.0323728
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0091985   -0.0131880   0.0315850
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0437837    0.0308391   0.0567282
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0770543    0.0571316   0.0969770
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0371943    0.0236306   0.0507581
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0358976    0.0139732   0.0578220


### Parameter: PAF


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.0541872   -0.8558332   0.5179729
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                 0.0720000   -0.5890148   0.4580390
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                 0.3304954   -0.4197127   0.6842766
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.2485380   -0.6216695   0.6517816
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.3584906   -0.2592056   0.6731794
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0309813   -0.1592894   0.0831258
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.2104546   -0.2927223   0.5177758
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.3618964    0.2474049   0.4589704
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1646430   -0.4538312   0.5200122
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.4106153    0.1251793   0.6029194
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.2104277   -0.1583561   0.4618024
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0477613   -0.0138100   0.1055932
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0396830    0.0156496   0.0631297
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2427525    0.1688560   0.3100790
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1852962   -0.0257232   0.3529031
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.2422539    0.1549214   0.3205613
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2409476    0.1722108   0.3039766
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1150766    0.0393410   0.1848414
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1414929    0.0540784   0.2208291
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                -0.3931034   -1.8626455   0.3220477
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.2142857   -0.5196227   0.5937499
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                -0.0468970   -0.2539419   0.1259616
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.1818182   -1.0980867   0.6809372
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2409219   -0.2663561   0.5449940
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                -0.0286144   -0.7842598   0.4070103
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                -0.3455090   -1.6009534   0.3039497
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0118164   -0.1190647   0.1273903
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0392124    0.0179472   0.0600172
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2112271    0.0681778   0.3323160
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.3473251   -0.2471956   0.6584461
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0647650   -0.0932201   0.1999191
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0368610   -0.1131361   0.1666457
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                -0.0617413   -0.2008275   0.0612352
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0338458   -0.3387043   0.3027183
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0059491   -0.2015949   0.1776453
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.1011261   -0.7532731   0.3084485
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.4015364    0.1768853   0.5648740
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0557377   -0.6090591   0.4458679
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.5533039    0.2506411   0.7337225
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.3546471   -0.0236529   0.5931430
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0396819   -0.0318017   0.1062132
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2604403    0.1720005   0.3394337
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0868482   -0.1499999   0.2749162
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.3535360    0.2434085   0.4476336
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2890311    0.2112751   0.3591215
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.2269376    0.1394688   0.3055155
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1430151    0.0517862   0.2254669
