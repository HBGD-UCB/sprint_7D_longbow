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
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             0        2       4
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             1        0       4
Birth       ki1000109-EE               PAKISTAN                       <48 cm              0        0       4
Birth       ki1000109-EE               PAKISTAN                       <48 cm              1        2       4
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          0        0       4
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          1        0       4
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     1914   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1        0   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    15934   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1    12676   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     8702   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1        0   39226
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0       72    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        0    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0      704    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      494    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      374    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1        0    1644
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
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             0       40     178
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             1        4     178
6 months    ki1000109-EE               PAKISTAN                       <48 cm              0       22     178
6 months    ki1000109-EE               PAKISTAN                       <48 cm              1       62     178
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          0       30     178
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          1       20     178
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     4399   33015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1      452   33015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    13372   33015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     7214   33015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     6968   33015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      610   33015
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1918    8040
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      284    8040
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     2400    8040
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1     1446    8040
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0     1722    8040
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      270    8040
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     1650   16888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1      692   16888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     4208   16888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     6378   16888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     2762   16888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1     1198   16888
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1566    7974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      588    7974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1910    7974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1     1978    7974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0     1390    7974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      542    7974


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a9595491-5a52-4147-9e69-fa2aabf0431a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a9595491-5a52-4147-9e69-fa2aabf0431a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a9595491-5a52-4147-9e69-fa2aabf0431a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a9595491-5a52-4147-9e69-fa2aabf0431a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3333333    0.0935960   0.5730706
6 months    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.3404255    0.2042869   0.4765642
6 months    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.2000000    0.0754288   0.3245712
6 months    ki1000108-IRC              INDIA          >=50 cm              NA                0.1326290    0.0779579   0.1873000
6 months    ki1000108-IRC              INDIA          <48 cm               NA                0.4221703    0.3324969   0.5118438
6 months    ki1000108-IRC              INDIA          [48-50) cm           NA                0.2188791    0.1526819   0.2850762
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.0616201    0.0280603   0.0951798
6 months    ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.4309114    0.4109231   0.4508997
6 months    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.1447931    0.1178532   0.1717331
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.0666179    0.0477340   0.0855018
6 months    ki1101329-Keneba           GAMBIA         <48 cm               NA                0.2326304    0.1844819   0.2807789
6 months    ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.1669163    0.1338179   0.2000147
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0486359    0.0350074   0.0622643
6 months    ki1119695-PROBIT           BELARUS        <48 cm               NA                0.3357426    0.2728929   0.3985924
6 months    ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.1681252    0.1364238   0.1998266
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0818097    0.0709739   0.0926454
6 months    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.2778351    0.2610040   0.2946663
6 months    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.1442967    0.1323221   0.1562713
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.1712721    0.1315811   0.2109630
6 months    ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.7951698    0.7262604   0.8640793
6 months    ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.5000145    0.4322335   0.5677956
6 months    ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0372303    0.0273548   0.0471058
6 months    ki1135781-COHORTS          INDIA          <48 cm               NA                0.3322510    0.3142223   0.3502797
6 months    ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1075334    0.0949780   0.1200888
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.0716097    0.0557197   0.0874997
6 months    ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.4261137    0.3914407   0.4607868
6 months    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.2062872    0.1822974   0.2302770
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.0870720    0.0757002   0.0984437
6 months    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.3516546    0.3412631   0.3620461
6 months    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.0823330    0.0735910   0.0910749
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.1309439    0.1076866   0.1542011
6 months    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.3837490    0.3579967   0.4095014
6 months    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.1351222    0.1100234   0.1602210
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              NA                0.3043478    0.1158071   0.4928886
24 months   ki0047075b-MAL-ED          PERU           <48 cm               NA                0.4700000    0.3719213   0.5680787
24 months   ki0047075b-MAL-ED          PERU           [48-50) cm           NA                0.2352941    0.1342092   0.3363790
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                0.2556960    0.1223121   0.3890799
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               NA                0.4174586    0.3128783   0.5220390
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           NA                0.3497125    0.2480330   0.4513921
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.6666667    0.4269522   0.9063811
24 months   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.7346939    0.6104786   0.8589091
24 months   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.7500000    0.6151606   0.8848394
24 months   ki1000108-IRC              INDIA          >=50 cm              NA                0.3172014    0.2412298   0.3931729
24 months   ki1000108-IRC              INDIA          <48 cm               NA                0.4983482    0.4085410   0.5881554
24 months   ki1000108-IRC              INDIA          [48-50) cm           NA                0.3517850    0.2737272   0.4298429
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.1477873    0.0923895   0.2031850
24 months   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.5533874    0.4872005   0.6195744
24 months   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.2559987    0.2013961   0.3106014
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0625000    0.0205249   0.1044751
24 months   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.3800000    0.3126646   0.4473354
24 months   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.2580645    0.1951194   0.3210096
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.2254584    0.1899221   0.2609948
24 months   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.4531111    0.3870291   0.5191931
24 months   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.3490552    0.3001975   0.3979130
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0809123    0.0513729   0.1104517
24 months   ki1119695-PROBIT           BELARUS        <48 cm               NA                0.1590909   -0.1304727   0.4486545
24 months   ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.1266234    0.0879311   0.1653157
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.4830965    0.3467682   0.6194248
24 months   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.7528916    0.7004626   0.8053207
24 months   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.5342523    0.4510968   0.6174078
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.6818182    0.6255834   0.7380529
24 months   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.9338843    0.8895703   0.9781983
24 months   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.8587571    0.8074040   0.9101102
24 months   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.2291556    0.2059147   0.2523965
24 months   ki1135781-COHORTS          INDIA          <48 cm               NA                0.6254509    0.6050407   0.6458612
24 months   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.4121264    0.3904279   0.4338248
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.4374152    0.4062956   0.4685348
24 months   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.7879619    0.7577405   0.8181833
24 months   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.6502963    0.6209901   0.6796026
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.2971440    0.2669299   0.3273580
24 months   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.5996196    0.5844905   0.6147487
24 months   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.2973782    0.2765962   0.3181602
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2768997    0.2441264   0.3096730
24 months   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.5072851    0.4804974   0.5340728
24 months   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2814848    0.2459091   0.3170606


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.2843137   0.1963411   0.3722864
6 months    ki1000108-IRC              INDIA          NA                   NA                0.2442159   0.2014677   0.2869642
6 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.2839879   0.2652870   0.3026888
6 months    ki1101329-Keneba           GAMBIA         NA                   NA                0.1336303   0.1154530   0.1518076
6 months    ki1119695-PROBIT           BELARUS        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1657324   0.1576867   0.1737781
6 months    ki1135781-COHORTS          GUATEMALA      NA                   NA                0.3880814   0.3516414   0.4245214
6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1864711   0.1767241   0.1962180
6 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.2117734   0.1963625   0.2271843
6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2506739   0.2425598   0.2587881
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
6 months    ki1000108-IRC              INDIA          <48 cm               >=50 cm           3.1830932   1.9987691    5.069161
6 months    ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           1.6503112   0.9921292    2.745133
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           6.9930344   3.9428088   12.402968
6 months    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           2.3497718   1.1676738    4.728570
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           3.4920124   2.4600014    4.956969
6 months    ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           2.5055782   1.7746694    3.537517
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           6.9031905   5.1740841    9.210140
6 months    ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           3.4568154   2.7448394    4.353469
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           3.3961158   2.9363842    3.927825
6 months    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.7638104   1.5089261    2.061749
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           4.6427295   3.6253545    5.945608
6 months    ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           2.9194169   2.2339012    3.815296
6 months    ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           8.9242068   6.8093201   11.695950
6 months    ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           2.8883290   2.1624935    3.857789
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           5.9505027   4.7018950    7.530683
6 months    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           2.8807156   2.2448182    3.696746
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           4.0386660   3.5402663    4.607231
6 months    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           0.9455736   0.8020151    1.114829
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           2.9306380   2.4234233    3.544011
6 months    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.0319094   0.8027417    1.326500
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU           <48 cm               >=50 cm           1.5442857   0.8032154    2.969090
24 months   ki0047075b-MAL-ED          PERU           [48-50) cm           >=50 cm           0.7731092   0.3637769    1.643034
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               >=50 cm           1.6326365   0.9212832    2.893249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           >=50 cm           1.3676887   0.7565610    2.472468
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.1020408   0.7406898    1.639679
24 months   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           1.1250000   0.7525933    1.681685
24 months   ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.5710783   1.1650583    2.118595
24 months   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           1.1090275   0.8011351    1.535249
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           3.7444863   2.5262053    5.550292
24 months   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           1.7322109   1.1263789    2.663895
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           6.0800000   3.0356333   12.177492
24 months   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           4.1290323   2.0208559    8.436479
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           2.0097325   1.6221223    2.489963
24 months   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.5482022   1.2557623    1.908745
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.9662142   0.3648546   10.595997
24 months   ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.5649460   1.0753775    2.277392
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.5584704   1.1653117    2.084275
24 months   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.1058914   0.8013118    1.526242
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.3696970   1.2453742    1.506431
24 months   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.2595104   1.1375172    1.394587
24 months   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           2.7293724   2.4554850    3.033809
24 months   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.7984566   1.6063711    2.013511
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.8014050   1.6626664    1.951721
24 months   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.4866798   1.3679997    1.615656
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           2.0179432   1.8188573    2.238820
24 months   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.0007883   0.8856453    1.130901
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.8320176   1.6117564    2.082380
24 months   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.0165588   0.8566699    1.206289


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.0490196   -0.2688128   0.1707736
6 months    ki1000108-IRC              INDIA          >=50 cm              NA                 0.1115870    0.0608348   0.1623392
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2223678    0.1793711   0.2653646
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0670124    0.0492531   0.0847717
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0140505    0.0104323   0.0176687
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0839227    0.0733748   0.0944707
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.2168093    0.1808619   0.2527568
6 months    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.1492408    0.1370306   0.1614509
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1401637    0.1230209   0.1573065
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1636020    0.1518139   0.1753901
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1178124    0.0958725   0.1397522
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.0621443   -0.1158461   0.2401347
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.1025129   -0.0204700   0.2254959
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.0641026   -0.1554992   0.2837043
24 months   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0879268    0.0257395   0.1501142
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.1815021    0.1269606   0.2360437
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.1943093    0.1462097   0.2424089
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0947294    0.0674053   0.1220535
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0043417   -0.0002862   0.0089697
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.1716919    0.0443379   0.2990459
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1099968    0.0736637   0.1463298
24 months   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.2335623    0.2118409   0.2552838
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1797019    0.1553590   0.2040449
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1924344    0.1639553   0.2209135
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1128670    0.0846924   0.1410417


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.1724138   -1.2667265   0.3935951
6 months    ki1000108-IRC              INDIA          >=50 cm              NA                 0.4569193    0.2196623   0.6220398
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.7830186    0.6172112   0.8770055
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.5014763    0.3668990   0.6074467
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.2241399    0.1524212   0.2897901
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.5063749    0.4428118   0.5626868
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.5586698    0.4632916   0.6370983
6 months    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.8003427    0.7414405   0.8458264
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.6618570    0.5853497   0.7242479
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.6526485    0.6065491   0.6933465
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.4736057    0.3816396   0.5518940
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.1695652   -0.4902903   0.5372567
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.2861820   -0.1521521   0.5577527
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.0877193   -0.2691613   0.3442472
24 months   ki1000108-IRC              INDIA          >=50 cm              NA                 0.2170346    0.0472389   0.3565703
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.5511934    0.3636653   0.6834569
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.7566288    0.5354111   0.8725119
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.2958557    0.2058424   0.3756664
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0509269   -0.0054685   0.1041592
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2622097    0.0377565   0.4343070
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1389173    0.0896167   0.1855481
24 months   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.5047618    0.4563853   0.5488332
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2911958    0.2494954   0.3305793
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.3930615    0.3320668   0.4484863
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.2895758    0.2130045   0.3586971
