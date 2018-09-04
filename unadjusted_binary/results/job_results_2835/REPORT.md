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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        birthlen      sstunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       29     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0      135     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1        9     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       84     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        0     257
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       34     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       72     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        8     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       77     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0     191
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              0       25     206
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               0      100     206
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               1        7     206
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       74     206
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        0     206
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              0       38     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               0       63     173
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               1        6     173
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0       66     173
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        0     173
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              0       34     287
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              1        0     287
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               0      134     287
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               1        8     287
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           0      111     287
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           1        0     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       47     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0      110     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0      103     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1        0     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       15     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       51     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       51     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        0     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       34      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       40      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1        0      90
Birth       ki1000108-IRC              INDIA                          >=50 cm              0      142     388
Birth       ki1000108-IRC              INDIA                          >=50 cm              1        0     388
Birth       ki1000108-IRC              INDIA                          <48 cm               0       92     388
Birth       ki1000108-IRC              INDIA                          <48 cm               1       16     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm           0      138     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm           1        0     388
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              0        2       4
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              1        0       4
Birth       ki1000109-EE               PAKISTAN                       <48 cm               0        2       4
Birth       ki1000109-EE               PAKISTAN                       <48 cm               1        0       4
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           0        0       4
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           1        0       4
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              0        3       7
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              0        9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               0      113     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               1       11     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           0       54     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           1        0     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0       11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0       13      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0       10      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        0      27
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              0      763    1541
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              1        0    1541
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               0      254    1541
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               1       29    1541
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           0      495    1541
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           1        0    1541
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm              0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm               0        4      13
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm               1        5      13
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0      13
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              0       63     115
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         <48 cm               0       13     115
Birth       ki1114097-CMIN             BRAZIL                         <48 cm               1        3     115
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm           0       36     115
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm           1        0     115
Birth       ki1114097-CMIN             PERU                           >=50 cm              0       10      10
Birth       ki1114097-CMIN             PERU                           >=50 cm              1        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm               0        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm               1        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm           0        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm           1        0      10
Birth       ki1114097-CONTENT          PERU                           >=50 cm              0        1       2
Birth       ki1114097-CONTENT          PERU                           >=50 cm              1        0       2
Birth       ki1114097-CONTENT          PERU                           <48 cm               0        1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm               1        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              0    12617   13884
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               0      142   13884
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           0     1120   13884
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0     4107   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0     3955   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1      441   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0     5327   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1        0   13830
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      437     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               0      152     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               1       11     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0      252     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1        0     852
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              0     1426    6640
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              1        0    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm               0     2568    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm               1      206    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           0     2440    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           1        0    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0     1129    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      716    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               1       46    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0     1159    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1        0    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0     1914   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1        0   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0    24528   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1     4082   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     8702   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1        0   39226
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0       72    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1        0    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0     1070    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1      128    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0      374    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1        0    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       29     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        0     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0      114     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1        8     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       83     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        0     234
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       30     173
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       69     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       74     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0     173
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              0       24     193
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               0       94     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               1        7     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       68     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        0     193
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              0       38     171
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               0       66     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               1        1     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0       66     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        0     171
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              0       30     261
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              1        0     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               0      122     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               1       10     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           0       98     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           1        1     261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       39     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        0     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0       81     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        5     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0       89     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1        0     214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       14     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       49     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1        5     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       51     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        0     119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       14     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        1     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       43     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1        4     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       37     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1        3     102
6 months    ki1000108-IRC              INDIA                          >=50 cm              0      140     389
6 months    ki1000108-IRC              INDIA                          >=50 cm              1        2     389
6 months    ki1000108-IRC              INDIA                          <48 cm               0       91     389
6 months    ki1000108-IRC              INDIA                          <48 cm               1       18     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm           0      130     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm           1        8     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              0       42     178
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              1        2     178
6 months    ki1000109-EE               PAKISTAN                       <48 cm               0       44     178
6 months    ki1000109-EE               PAKISTAN                       <48 cm               1       40     178
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           0       42     178
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           1        8     178
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              0        4      17
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              1        0      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               0        4      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               1        2      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           0        6      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           1        1      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              0      191    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              1        5    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               0      600    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               1      109    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           0      407    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           1       12    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0       24     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1        1     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0       72     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1       11     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0       69     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1        1     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              0      140     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              1        0     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               0      195     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               1       11     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           0      234     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           1        3     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0      164     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0      253     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1       17     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0      275     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        6     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              0      666    1347
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              1       11    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               0      219    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               1       15    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           0      428    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           1        8    1347
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm              0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm               0        1       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm               1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0       1
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              0       58     104
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              1        0     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm               0       12     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm               1        1     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           0       31     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           1        2     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm              0        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm              1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm               0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm               1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm           0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm           1        0       2
6 months    ki1114097-CMIN             PERU                           >=50 cm              0       12      14
6 months    ki1114097-CMIN             PERU                           >=50 cm              1        0      14
6 months    ki1114097-CMIN             PERU                           <48 cm               0        1      14
6 months    ki1114097-CMIN             PERU                           <48 cm               1        0      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm           0        1      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm           1        0      14
6 months    ki1114097-CONTENT          PERU                           >=50 cm              0        1       2
6 months    ki1114097-CONTENT          PERU                           >=50 cm              1        0       2
6 months    ki1114097-CONTENT          PERU                           <48 cm               0        1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm               1        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              0    14134   15761
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              1      162   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               0      156   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               1       16   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           0     1228   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           1       65   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0     2370    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1       35    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0     2392    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1      191    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0     3102    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1      116    8206
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      341     688
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              1       10     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               0       90     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               1       43     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0      180     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1       24     688
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              0     1324    6135
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              1        6    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm               0     2302    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm               1      228    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           0     2238    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           1       37    6135
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0      977    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1       13    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      593    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               1       84    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0      999    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1       35    2701
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0     4763   33015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1       88   33015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0    18776   33015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1     1810   33015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     7498   33015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1       80   33015
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0     2146    8040
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1       56    8040
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0     3502    8040
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1      344    8040
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0     1964    8040
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1       28    8040
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       28     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        0     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0       85     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1       17     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       70     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        7     207
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       21     139
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       56     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        1     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       61     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0     139
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              0       23     184
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               0       74     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               1       21     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       64     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        2     184
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              0       36     165
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               0       63     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               1        2     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0       63     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        1     165
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              0       22     191
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              1        1     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               0       88     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               1       12     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           0       68     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           1        0     191
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       35     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0       74     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        9     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0       71     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1       12     201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       12     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       28     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1       21     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       33     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        9     103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       13     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        2     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       32     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1       17     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       28     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1       12     104
24 months   ki1000108-IRC              INDIA                          >=50 cm              0      130     390
24 months   ki1000108-IRC              INDIA                          >=50 cm              1       12     390
24 months   ki1000108-IRC              INDIA                          <48 cm               0       91     390
24 months   ki1000108-IRC              INDIA                          <48 cm               1       19     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm           0      130     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm           1        8     390
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0       19     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1        1     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0       38     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1       24     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0       49     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1        6     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              0      137     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              1        2     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               0      166     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               1       40     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           0      225     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           1        7     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0      128     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0      173     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1       27     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0      178     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        8     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              0      514    1065
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              1       21    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               0      172    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               1       24    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           0      297    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           1       37    1065
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm              0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm               0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm               1        1       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm              0        3       4
24 months   ki1114097-CMIN             PERU                           >=50 cm              1        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm               0        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm               1        1       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm           0        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm           1        0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm              0        1       2
24 months   ki1114097-CONTENT          PERU                           >=50 cm              1        0       2
24 months   ki1114097-CONTENT          PERU                           <48 cm               0        1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm               1        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              0     3628    4035
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              1       55    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               0       41    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               1        3    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           0      301    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           1        7    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0       43     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1        9     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0      176     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1       84     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0      101     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1       36     449
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      193     562
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              1       71     562
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               0       44     562
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               1       77     562
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0       91     562
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1       86     562
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              0      992    4761
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              1       55    4761
24 months   ki1135781-COHORTS          INDIA                          <48 cm               0     1352    4761
24 months   ki1135781-COHORTS          INDIA                          <48 cm               1      585    4761
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           0     1549    4761
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           1      228    4761
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0      756    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1      141    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      335    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               1      269    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0      663    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1      278    2442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0     2210   16888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1      132   16888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0     8310   16888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1     2276   16888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     3760   16888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1      200   16888
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0     2062    7974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1       92    7974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0     3362    7974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1      526    7974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0     1832    7974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1      100    7974


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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
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
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/79e6e78d-1bb8-4a03-8fc0-269a65f26a3c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/79e6e78d-1bb8-4a03-8fc0-269a65f26a3c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/79e6e78d-1bb8-4a03-8fc0-269a65f26a3c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/79e6e78d-1bb8-4a03-8fc0-269a65f26a3c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0255102   0.0084713   0.0425492
6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1537377   0.1251875   0.1822879
6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0286396   0.0129545   0.0443247
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0162482   0.0067211   0.0257752
6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0641026   0.0327081   0.0954970
6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0183486   0.0057464   0.0309508
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.0113318   0.0063909   0.0162728
6 months    ki1119695-PROBIT          BELARUS       <48 cm               NA                0.0930233   0.0437268   0.1423197
6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.0502707   0.0337764   0.0667650
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0145530   0.0097666   0.0193394
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0739450   0.0638528   0.0840372
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0360472   0.0296064   0.0424881
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0284900   0.0110727   0.0459073
6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.3233083   0.2437579   0.4028586
6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.1176471   0.0734024   0.1618917
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0045113   0.0009094   0.0081131
6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.0901186   0.0789596   0.1012775
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0162637   0.0110657   0.0214618
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0131313   0.0060389   0.0202237
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.1240768   0.0992390   0.1489146
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0338491   0.0228245   0.0448738
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0181406   0.0129877   0.0232935
6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0879238   0.0822168   0.0936309
6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0105569   0.0067734   0.0143404
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0254314   0.0162510   0.0346118
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0894436   0.0735971   0.1052901
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0140562   0.0066198   0.0214927
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0845070   0.0386997   0.1303144
24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.1727273   0.1019956   0.2434590
24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.0579710   0.0189316   0.0970105
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0392523   0.0227892   0.0557155
24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1224490   0.0765358   0.1683622
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1107784   0.0771031   0.1444537
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.1730769   0.0701373   0.2760166
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.3230769   0.2661696   0.3799843
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.2627737   0.1889895   0.3365579
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.2689394   0.2154045   0.3224743
24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.6363636   0.5505753   0.7221520
24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.4858757   0.4121795   0.5595719
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0525310   0.0390162   0.0660459
24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.3020134   0.2815647   0.3224621
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.1283061   0.1127552   0.1438570
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1571906   0.1333664   0.1810149
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.4453642   0.4057200   0.4850085
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.2954304   0.2662741   0.3245866
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0563621   0.0424466   0.0702776
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.2150009   0.2024341   0.2275678
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0505051   0.0404331   0.0605770
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0427112   0.0274894   0.0579330
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1352881   0.1179971   0.1525790
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0517598   0.0356714   0.0678483


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0951662   0.0766361   0.1136962
6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0252413   0.0168616   0.0336210
6 months    ki1119695-PROBIT          BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0416768   0.0373526   0.0460011
6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.1119186   0.0883438   0.1354934
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0441728   0.0390306   0.0493149
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0488708   0.0407385   0.0570030
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0599122   0.0560597   0.0637646
6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0532338   0.0448583   0.0616093
24 months   ki1000108-IRC             INDIA         NA                   NA                0.1000000   0.0701878   0.1298122
24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0769953   0.0609772   0.0930134
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.2873051   0.2454033   0.3292069
24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.4163701   0.3755781   0.4571621
24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.1823146   0.1713461   0.1932832
24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.2817363   0.2638908   0.2995817
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1544292   0.1455642   0.1632942
24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0900426   0.0798078   0.1002775


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level      estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            6.0265162   3.2342085   11.229609
6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            1.1226730   0.4128721    3.052748
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            3.9452214   1.8377214    8.469604
6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.1292744   0.4577236    2.786093
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm            8.2090152   4.8438092   13.912177
6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm            4.4362331   3.0055082    6.548032
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            5.0810796   3.5588409    7.254432
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            2.4769600   1.7035857    3.601422
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           11.3481203   5.8711376   21.934392
6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            4.1294118   2.0145065    8.464625
6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           19.9762846   8.9048026   44.813115
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.6051282   1.5255447    8.519547
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            9.4489263   5.3115465   16.809080
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            2.5777414   1.3718991    4.843469
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            4.8468012   3.6273338    6.476239
6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            0.5819477   0.3728206    0.908381
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            3.5170493   2.3592959    5.242935
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            0.5527108   0.2895371    1.055095
24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            2.0439394   1.0361710    4.031852
24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.6859903   0.2889866    1.628389
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            3.1195335   1.7773006    5.475432
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            2.8222127   1.6812289    4.737537
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            1.8666667   1.0038648    3.471030
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.5182482   0.7865059    2.930782
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.3661972   1.8605481    3.009269
24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            1.8066364   1.4066429    2.320372
24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            5.7492373   4.4062918    7.501485
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            2.4424822   1.8378966    3.245949
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            2.8332746   2.3765825    3.377726
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.8794402   1.5684876    2.252039
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            3.8146380   2.9558417    4.922951
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            0.8960820   0.6509973    1.233435
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            3.1675052   2.1737925    4.615477
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.2118552   0.7525294    1.951542


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0696560    0.0518817   0.0874302
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0089931    0.0006416   0.0173447
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.0040860    0.0026878   0.0054842
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0271238    0.0218153   0.0324323
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0834286    0.0599851   0.1068720
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0396615    0.0338486   0.0454744
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0357395    0.0268198   0.0446592
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0417716    0.0361107   0.0474324
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0278024    0.0175702   0.0380346
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0154930   -0.0227050   0.0536909
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0377430    0.0217646   0.0537213
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.1142282    0.0147400   0.2137164
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.1474307    0.1045661   0.1902953
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.1297836    0.1148630   0.1447042
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1245456    0.1028875   0.1462038
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0980671    0.0830828   0.1130514
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0473314    0.0329728   0.0616900


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.7319404    0.5143576   0.8520394
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3562864   -0.0415418   0.6021598
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.2650159    0.1608133   0.3562795
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6508128    0.5233748   0.7441769
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.7454397    0.5513963   0.8555497
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.8978720    0.7751591   0.9536111
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7313055    0.5517329   0.8389426
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.6972136    0.6009427   0.7702595
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.5222695    0.3261277   0.6613209
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1549296   -0.3244291   0.4607910
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.4901983    0.2698030   0.6440717
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.3975850   -0.0659346   0.6595440
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.3540857    0.2430177   0.4488573
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.7118660    0.6308296   0.7751142
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4420646    0.3629892   0.5113240
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.6350296    0.5349033   0.7136006
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.5256554    0.3430579   0.6574998
