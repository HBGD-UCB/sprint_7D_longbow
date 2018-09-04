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
![](/tmp/8a73442a-5ced-4917-82d2-0aeb47c864fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8a73442a-5ced-4917-82d2-0aeb47c864fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8a73442a-5ced-4917-82d2-0aeb47c864fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8a73442a-5ced-4917-82d2-0aeb47c864fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.0115642   0.0065819   0.0165466
6 months    ki1119695-PROBIT          BELARUS       <48 cm               NA                0.0855341   0.0468636   0.1242046
6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.0430863   0.0275484   0.0586241
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0140441   0.0093023   0.0187858
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0771838   0.0671347   0.0872330
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0360549   0.0296564   0.0424533
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0283892   0.0109795   0.0457989
6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.3241676   0.2453400   0.4029951
6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.1182457   0.0741499   0.1623414
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0045113   0.0009094   0.0081131
6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.0901186   0.0789596   0.1012775
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0162637   0.0110657   0.0214618
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0124879   0.0057118   0.0192639
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.1263968   0.1019776   0.1508160
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0337916   0.0228921   0.0446912
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0170481   0.0123488   0.0217474
6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0887205   0.0830156   0.0944255
6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0108869   0.0070325   0.0147413
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0248321   0.0158531   0.0338112
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0928087   0.0767665   0.1088508
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0139100   0.0064706   0.0213493
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0845070   0.0386997   0.1303144
24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.1727273   0.1019956   0.2434590
24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.0579710   0.0189316   0.0970105
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0376335   0.0211324   0.0541347
24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1178419   0.0734410   0.1622428
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1022292   0.0702076   0.1342508
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.1730769   0.0701373   0.2760166
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.3230769   0.2661696   0.3799843
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.2627737   0.1889895   0.3365579
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.2436024   0.1923455   0.2948593
24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.6700181   0.5930586   0.7469777
24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.5003392   0.4312257   0.5694528
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0537753   0.0408160   0.0667346
24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.2998661   0.2805237   0.3192085
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.1280428   0.1131315   0.1429540
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1526320   0.1295588   0.1757052
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.4340086   0.3968856   0.4711315
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.2892879   0.2612746   0.3173013
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0567170   0.0433196   0.0701144
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.2145274   0.2021868   0.2268679
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0502492   0.0408335   0.0596649
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0435461   0.0286413   0.0584509
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1360280   0.1188692   0.1531868
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0522715   0.0364665   0.0680765


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


agecat      studyid                   country       intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  ----------  -----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            6.0265162   3.2342085   11.2296091
6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            1.1226730   0.4128721    3.0527484
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            3.9452214   1.8377214    8.4696038
6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.1292744   0.4577236    2.7860931
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm            7.3964323   4.7458774   11.5273123
6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm            3.7258232   2.4851204    5.5859501
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            5.4958219   3.8277417    7.8908298
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            2.5672637   1.7533840    3.7589273
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           11.4186970   5.9057659   22.0778545
6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            4.1651648   2.0331241    8.5329755
6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           19.9762846   8.9048026   44.8131154
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.6051282   1.5255447    8.5195470
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           10.1215686   5.6938216   17.9925117
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            2.7059582   1.4403560    5.0836111
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            5.2041250   3.9253841    6.8994313
6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            0.6385993   0.4127793    0.9879591
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            3.7374440   2.5095183    5.5662027
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            0.5601596   0.2919608    1.0747294
24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            2.0439394   1.0361710    4.0318521
24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.6859903   0.2889866    1.6283892
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            3.1313022   1.7571517    5.5800836
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            2.7164394   1.5868957    4.6499859
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            1.8666667   1.0038648    3.4710296
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.5182482   0.7865059    2.9307822
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.7504581   2.1704997    3.4853817
24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            2.0539178   1.6033591    2.6310877
24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            5.5762819   4.3482163    7.1511898
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            2.3810718   1.8242682    3.1078231
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            2.8434961   2.3924974    3.3795106
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.8953293   1.5863500    2.2644896
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            3.7824179   2.9659845    4.8235873
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            0.8859637   0.6539570    1.2002804
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            3.1237674   2.1752828    4.4858178
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.2003703   0.7579954    1.9009202


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0696560    0.0518817   0.0874302
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0089931    0.0006416   0.0173447
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.0038536    0.0024903   0.0052168
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0276327    0.0223563   0.0329091
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0835294    0.0601270   0.1069318
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0396615    0.0338486   0.0454744
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0363829    0.0276228   0.0451431
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0428640    0.0374806   0.0482475
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0284017    0.0182845   0.0385189
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0154930   -0.0227050   0.0536909
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0393618    0.0234968   0.0552268
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.1142282    0.0147400   0.2137164
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.1727677    0.1316814   0.2138541
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.1285394    0.1141047   0.1429740
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1291043    0.1081483   0.1500603
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0977122    0.0831774   0.1122470
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0464965    0.0323964   0.0605966


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.7319404    0.5143576   0.8520394
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3562864   -0.0415418   0.6021598
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.2499429    0.1482690   0.3394797
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6630240    0.5362568   0.7551386
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.7463407    0.5524063   0.8562468
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.8978720    0.7751591   0.9536111
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7444718    0.5727372   0.8471791
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.7154481    0.6276342   0.7825532
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.5335274    0.3414867   0.6695637
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1549296   -0.3244291   0.4607910
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.5112232    0.2895397   0.6637353
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.3975850   -0.0659346   0.6595440
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.4149379    0.3079447   0.5053897
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.7050414    0.6282444   0.7659737
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4582450    0.3821118   0.5249975
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.6327314    0.5369066   0.7087278
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.5163833    0.3392404   0.6460360
