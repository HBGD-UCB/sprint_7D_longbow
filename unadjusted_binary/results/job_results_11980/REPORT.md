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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        birthlen      stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       29     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       97     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       47     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       84     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        0     257
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       34     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       59     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              1       21     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       77     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0     191
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             0       25     206
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              0       74     206
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              1       33     206
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       74     206
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        0     206
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              0       51     173
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              1       18     173
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     173
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     173
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             0       34     287
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     287
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              0      108     287
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              1       34     287
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          0      111     287
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       47     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       84     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1       28     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0      103     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       15     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       39     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       18     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       21      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       16      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0      90
Birth       ki1000108-IRC              INDIA                          >=50 cm             0      142     388
Birth       ki1000108-IRC              INDIA                          >=50 cm             1        0     388
Birth       ki1000108-IRC              INDIA                          <48 cm              0       63     388
Birth       ki1000108-IRC              INDIA                          <48 cm              1       45     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm          0      138     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm          1        0     388
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             0        1       2
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             1        0       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm              0        0       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm              1        1       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          0        0       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             0        3       7
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              1        2       7
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0        9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0       78     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1       46     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0       54     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1        0     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0        9      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0       10      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        0      27
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             0      763    1541
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             1        0    1541
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              0      201    1541
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              1       82    1541
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          0      495    1541
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          1        0    1541
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              0        3      13
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              1        6      13
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0      13
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm             0       63     115
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm             1        0     115
Birth       ki1114097-CMIN             BRAZIL                         <48 cm              0       11     115
Birth       ki1114097-CMIN             BRAZIL                         <48 cm              1        5     115
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm          0       36     115
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm          1        0     115
Birth       ki1114097-CMIN             PERU                           >=50 cm             0       10      10
Birth       ki1114097-CMIN             PERU                           >=50 cm             1        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm              0        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm              1        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm          0        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm          1        0      10
Birth       ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
Birth       ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
Birth       ki1114097-CONTENT          PERU                           <48 cm              0        1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm              1        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             0    12617   13884
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              0      114   13884
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              1       33   13884
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1120   13884
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4107   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     2964   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1     1432   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5327   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1        0   13830
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      437     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              0      113     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              1       50     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      252     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1        0     852
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             0     1426    6640
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             1        0    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm              0     1982    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm              1      792    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          0     2440    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          1        0    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1129    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      575    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      187    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0     1159    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1        0    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0      957   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     7967   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     6338   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     4351   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1        0   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0       36     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0      352     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      247     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      187     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1        0     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       29     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       86     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       36     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       76     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        7     234
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30     173
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       66     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        3     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       73     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        1     173
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             0       24     193
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              0       67     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              1       34     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       64     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        4     193
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     171
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              0       59     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              1        8     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     171
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             0       29     261
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             1        1     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              0       86     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              1       46     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          0       90     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          1        9     261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       36     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        3     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       64     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1       22     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       72     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1       17     214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       14     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       34     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       20     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       50     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        1     119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       10     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        5     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       31     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       16     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       32     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        8     102
6 months    ki1000108-IRC              INDIA                          >=50 cm             0      123     389
6 months    ki1000108-IRC              INDIA                          >=50 cm             1       19     389
6 months    ki1000108-IRC              INDIA                          <48 cm              0       62     389
6 months    ki1000108-IRC              INDIA                          <48 cm              1       47     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm          0      109     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm          1       29     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             0       20      89
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             1        2      89
6 months    ki1000109-EE               PAKISTAN                       <48 cm              0       11      89
6 months    ki1000109-EE               PAKISTAN                       <48 cm              1       31      89
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          0       15      89
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          1       10      89
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             0        3      17
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              0        3      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              1        3      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        4      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        3      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      184    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       12    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      405    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      304    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      359    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       60    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       23     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        2     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       49     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       34     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       61     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        9     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      138     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        2     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      130     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       76     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      221     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       16     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      162     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        2     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      162     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1      108     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      241     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       40     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             0      629    1347
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             1       48    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              0      176    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              1       58    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          0      362    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          1       74    1347
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              1        1       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       1
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             0       54     104
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             1        4     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm              0       12     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm              1        1     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          0       28     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          1        5     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             0        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          1        0       2
6 months    ki1114097-CMIN             PERU                           >=50 cm             0       12      14
6 months    ki1114097-CMIN             PERU                           >=50 cm             1        0      14
6 months    ki1114097-CMIN             PERU                           <48 cm              0        1      14
6 months    ki1114097-CMIN             PERU                           <48 cm              1        0      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm          0        0      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm          1        1      14
6 months    ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
6 months    ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
6 months    ki1114097-CONTENT          PERU                           <48 cm              0        1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm              1        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             0    13615   15761
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             1      681   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              0      112   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              1       60   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1046   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          1      247   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     2202    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1      203    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     1886    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      697    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     2758    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      460    8206
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      289     688
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       62     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              0       28     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              1      105     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      104     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1      100     688
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             0     1282    6135
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             1       48    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm              0     1678    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm              1      852    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          0     2031    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          1      244    6135
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      913    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1       77    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      394    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      283    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      822    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      212    2701
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     2200   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1      226   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     6686   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     3607   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     3484   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      305   16508
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0      959    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      142    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1200    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      723    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      861    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      135    4020
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       24     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        4     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       41     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       61     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       48     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1       29     207
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       21     139
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       53     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        4     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       59     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        2     139
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0       21     184
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        2     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       45     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1       50     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       45     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1       21     184
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       36     165
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0       43     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1       22     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       50     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1       14     165
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       16     191
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        7     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0       53     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1       47     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       52     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1       16     191
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       24     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1       11     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       51     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1       32     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       54     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1       29     201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       10     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        2     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       12     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       37     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       17     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1       25     103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0        5     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1       10     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       13     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       36     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       10     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1       30     104
24 months   ki1000108-IRC              INDIA                          >=50 cm             0       95     390
24 months   ki1000108-IRC              INDIA                          >=50 cm             1       47     390
24 months   ki1000108-IRC              INDIA                          <48 cm              0       52     390
24 months   ki1000108-IRC              INDIA                          <48 cm              1       58     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm          0       85     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       53     390
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       17     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        3     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       10     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       52     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       28     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       27     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      119     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1       20     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0       95     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1      111     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      173     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       59     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      120     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        8     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      124     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       76     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       48     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      409    1065
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1      126    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      103    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1       93    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      212    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1      122    1065
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        1       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm             0        3       4
24 months   ki1114097-CMIN             PERU                           >=50 cm             1        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm              0        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm              1        1       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm          0        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm          1        0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0     3385    4035
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1      298    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0       37    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        7    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0      269    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1       39    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0       27     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       25     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0       64     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      196     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0       64     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1       73     449
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0       84     562
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1      180     562
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0        8     562
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1      113     562
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0       25     562
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1      152     562
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0      809    4761
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1      238    4761
24 months   ki1135781-COHORTS          INDIA                          <48 cm              0      710    4761
24 months   ki1135781-COHORTS          INDIA                          <48 cm              1     1227    4761
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0     1039    4761
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1      738    4761
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      494    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1      403    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      120    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      484    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      321    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      620    2442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0      825    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1      346    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     2104    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     3189    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     1381    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      599    8444
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0      783    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      294    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0      955    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      989    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      695    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      271    3987


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b7ade53e-1652-49b6-899a-32e1d712c7d5/5fdcfd01-bca6-447d-b2b3-e5fea73dccbb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b7ade53e-1652-49b6-899a-32e1d712c7d5/5fdcfd01-bca6-447d-b2b3-e5fea73dccbb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b7ade53e-1652-49b6-899a-32e1d712c7d5/5fdcfd01-bca6-447d-b2b3-e5fea73dccbb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b7ade53e-1652-49b6-899a-32e1d712c7d5/5fdcfd01-bca6-447d-b2b3-e5fea73dccbb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3333333    0.0935960   0.5730706
6 months    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.3404255    0.2042869   0.4765642
6 months    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.2000000    0.0754288   0.3245712
6 months    ki1000108-IRC              INDIA          >=50 cm              NA                0.1338028    0.0777363   0.1898694
6 months    ki1000108-IRC              INDIA          <48 cm               NA                0.4311927    0.3381007   0.5242846
6 months    ki1000108-IRC              INDIA          [48-50) cm           NA                0.2101449    0.1420836   0.2782063
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.0612245    0.0254605   0.0969884
6 months    ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.4287729    0.4084589   0.4490869
6 months    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.1431981    0.1127119   0.1736842
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.0709010    0.0515603   0.0902417
6 months    ki1101329-Keneba           GAMBIA         <48 cm               NA                0.2478632    0.1925211   0.3032054
6 months    ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.1697248    0.1344755   0.2049740
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0476357    0.0340369   0.0612345
6 months    ki1119695-PROBIT           BELARUS        <48 cm               NA                0.3488372    0.2527273   0.4449472
6 months    ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.1910286    0.1538624   0.2281948
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0844075    0.0732963   0.0955186
6 months    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.2698413    0.2527224   0.2869601
6 months    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.1429459    0.1308519   0.1550400
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.1766382    0.1367129   0.2165635
6 months    ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.7894737    0.7201375   0.8588099
6 months    ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.4901961    0.4215469   0.5588453
6 months    ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0360902    0.0260655   0.0461149
6 months    ki1135781-COHORTS          INDIA          <48 cm               NA                0.3367589    0.3183419   0.3551759
6 months    ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1072527    0.0945364   0.1199691
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.0777778    0.0610916   0.0944639
6 months    ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.4180207    0.3808597   0.4551816
6 months    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.2050290    0.1804168   0.2296413
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.0931575    0.0803132   0.1060017
6 months    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.3504323    0.3399072   0.3609574
6 months    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.0804962    0.0715225   0.0894698
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.1289737    0.1050809   0.1528664
6 months    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.3759750    0.3499611   0.4019890
6 months    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.1355422    0.1099866   0.1610977
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              NA                0.3043478    0.1158071   0.4928886
24 months   ki0047075b-MAL-ED          PERU           <48 cm               NA                0.4700000    0.3719213   0.5680787
24 months   ki0047075b-MAL-ED          PERU           [48-50) cm           NA                0.2352941    0.1342092   0.3363790
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                0.3142857    0.1601047   0.4684668
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               NA                0.3855422    0.2805700   0.4905143
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           NA                0.3493976    0.2465700   0.4522252
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.6666667    0.4269522   0.9063811
24 months   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.7346939    0.6104786   0.8589091
24 months   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.7500000    0.6151606   0.8848394
24 months   ki1000108-IRC              INDIA          >=50 cm              NA                0.3309859    0.2534891   0.4084827
24 months   ki1000108-IRC              INDIA          <48 cm               NA                0.5272727    0.4338544   0.6206911
24 months   ki1000108-IRC              INDIA          [48-50) cm           NA                0.3840580    0.3028059   0.4653100
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.1438849    0.0854878   0.2022820
24 months   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.5388350    0.4707036   0.6069663
24 months   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.2543103    0.1982260   0.3103947
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0625000    0.0205249   0.1044751
24 months   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.3800000    0.3126646   0.4473354
24 months   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.2580645    0.1951194   0.3210096
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.2355140    0.1995417   0.2714863
24 months   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.4744898    0.4045494   0.5444302
24 months   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.3652695    0.3136064   0.4169325
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0809123    0.0513729   0.1104517
24 months   ki1119695-PROBIT           BELARUS        <48 cm               NA                0.1590909   -0.1304727   0.4486545
24 months   ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.1266234    0.0879311   0.1653157
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.4807692    0.3448193   0.6167192
24 months   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.7538462    0.7014270   0.8062653
24 months   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.5328467    0.4492089   0.6164846
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.6818182    0.6255834   0.7380529
24 months   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.9338843    0.8895703   0.9781983
24 months   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.8587571    0.8074040   0.9101102
24 months   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.2273161    0.2019277   0.2527046
24 months   ki1135781-COHORTS          INDIA          <48 cm               NA                0.6334538    0.6119928   0.6549148
24 months   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.4153067    0.3923928   0.4382206
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.4492754    0.4167169   0.4818339
24 months   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.8013245    0.7694976   0.8331514
24 months   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.6588735    0.6285764   0.6891706
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.2954740    0.2625765   0.3283714
24 months   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.6024939    0.5870660   0.6179218
24 months   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.3025253    0.2805333   0.3245172
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2729805    0.2397244   0.3062366
24 months   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.5087449    0.4816806   0.5358091
24 months   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2805383    0.2444702   0.3166064


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.2843137   0.1963411   0.3722864
6 months    ki1000108-IRC              INDIA          NA                   NA                0.2442159   0.2014677   0.2869642
6 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.2839879   0.2652870   0.3026888
6 months    ki1101329-Keneba           GAMBIA         NA                   NA                0.1336303   0.1154530   0.1518076
6 months    ki1119695-PROBIT           BELARUS        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1657324   0.1576867   0.1737781
6 months    ki1135781-COHORTS          GUATEMALA      NA                   NA                0.3880814   0.3516414   0.4245214
6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1864711   0.1767241   0.1962180
6 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.2117734   0.1963625   0.2271843
6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2506663   0.2425523   0.2587804
6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2487562   0.2326103   0.2649022
24 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.3664921   0.2979781   0.4350062
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.3582090   0.2917585   0.4246594
24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.7307692   0.6451085   0.8164300
24 months   ki1000108-IRC              INDIA          NA                   NA                0.4051282   0.3563438   0.4539126
24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA         NA                   NA                0.3201878   0.2921545   0.3482211
24 months   ki1119695-PROBIT           BELARUS        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.6547884   0.6107631   0.6988137
24 months   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.7918149   0.7582177   0.8254122
24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.4627179   0.4485533   0.4768825
24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.6171171   0.5978338   0.6364004
24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.4895784   0.4764028   0.5027539
24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3897667   0.3711087   0.4084248


### Parameter: RR


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.0212766   0.4484926    2.325581
6 months    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           0.6000000   0.2317135    1.553643
6 months    ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA          <48 cm               >=50 cm           3.2225978   2.0113704    5.163214
6 months    ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           1.5705568   0.9248058    2.667207
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           7.0032910   3.7970374   12.916935
6 months    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           2.3389021   1.1000366    4.972983
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           3.4959046   2.4573443    4.973397
6 months    ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           2.3938265   1.6990100    3.372791
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           7.3230201   5.2108424   10.291354
6 months    ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           4.0101983   3.1403696    5.120955
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           3.1968880   2.7622657    3.699895
6 months    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.6935220   1.4482111    1.980386
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           4.4694397   3.5070357    5.695948
6 months    ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           2.7751423   2.1271962    3.620453
6 months    ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           9.3310277   7.0304119   12.384492
6 months    ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           2.9717949   2.1971317    4.019588
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           5.3745516   4.2607697    6.779481
6 months    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           2.6360873   2.0615500    3.370744
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           3.7617205   3.2731627    4.323201
6 months    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           0.8640872   0.7247643    1.030193
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           2.9151304   2.3897807    3.555969
6 months    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.0509291   0.8110880    1.361692
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU           <48 cm               >=50 cm           1.5442857   0.8032154    2.969090
24 months   ki0047075b-MAL-ED          PERU           [48-50) cm           >=50 cm           0.7731092   0.3637769    1.643034
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               >=50 cm           1.2267251   0.6999689    2.149888
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           >=50 cm           1.1117196   0.6273984    1.969913
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.1020408   0.7406898    1.639679
24 months   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           1.1250000   0.7525933    1.681685
24 months   ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.5930368   1.1877067    2.136694
24 months   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           1.1603454   0.8463310    1.590869
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           3.7449029   2.4480607    5.728738
24 months   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           1.7674569   1.1136413    2.805126
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           6.0800000   3.0356333   12.177492
24 months   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           4.1290323   2.0208559    8.436479
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           2.0146987   1.6293880    2.491126
24 months   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.5509457   1.2594767    1.909867
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.9662142   0.3648546   10.595997
24 months   ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.5649460   1.0753775    2.277392
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.5680000   1.1718702    2.098034
24 months   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.1083212   0.8020592    1.531527
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.3696970   1.2453742    1.506431
24 months   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.2595104   1.1375172    1.394587
24 months   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           2.7866644   2.4796861    3.131646
24 months   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.8270005   1.6130118    2.069378
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.7835932   1.6421243    1.937250
24 months   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.4665250   1.3459083    1.597951
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           2.0390760   1.8210199    2.283243
24 months   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.0238644   0.8972996    1.168281
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.8636674   1.6336639    2.126053
24 months   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.0276862   0.8621095    1.225064


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.0490196   -0.2688128   0.1707736
6 months    ki1000108-IRC              INDIA          >=50 cm              NA                 0.1104131    0.0586840   0.1621422
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2227634    0.1778331   0.2676937
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0627293    0.0446055   0.0808530
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0150507    0.0111680   0.0189333
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0813249    0.0705627   0.0920871
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.2114432    0.1754511   0.2474354
6 months    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.1503808    0.1380551   0.1627066
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1339956    0.1163373   0.1516540
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1575089    0.1445835   0.1704343
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1197826    0.0973379   0.1422272
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.0621443   -0.1158461   0.2401347
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.0439232   -0.0971751   0.1850215
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.0641026   -0.1554992   0.2837043
24 months   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0741423    0.0107999   0.1374846
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.1854045    0.1284826   0.2423265
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.1943093    0.1462097   0.2424089
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0846738    0.0567490   0.1125985
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0043417   -0.0002862   0.0089697
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.1740192    0.0469774   0.3010610
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1099968    0.0736637   0.1463298
24 months   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.2354018    0.2117013   0.2591022
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1678418    0.1422852   0.1933983
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1941044    0.1635302   0.2246787
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1167862    0.0881303   0.1454422


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.1724138   -1.2667265   0.3935951
6 months    ki1000108-IRC              INDIA          >=50 cm              NA                 0.4521127    0.2077826   0.6210882
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.7844116    0.6045629   0.8824634
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.4694239    0.3317404   0.5787401
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.2400948    0.1635108   0.3096673
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.4907001    0.4254984   0.5485019
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.5448425    0.4494865   0.6236815
6 months    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.8064567    0.7462249   0.8523929
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.6327312    0.5526235   0.6984947
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.6283607    0.5760739   0.6741985
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.4815259    0.3865127   0.5618240
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.1695652   -0.4902903   0.5372567
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.1226190   -0.3745408   0.4399604
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.0877193   -0.2691613   0.3442472
24 months   ki1000108-IRC              INDIA          >=50 cm              NA                 0.1830094    0.0104833   0.3254550
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.5630443    0.3616962   0.7008787
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.7566288    0.5354111   0.8725119
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.2644504    0.1729236   0.3458485
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0509269   -0.0054685   0.1041592
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2657640    0.0417863   0.4373880
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1389173    0.0896167   0.1855481
24 months   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.5087371    0.4551571   0.5570480
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2719772    0.2281368   0.3133274
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.3964726    0.3300526   0.4563077
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.2996311    0.2215042   0.3699175
