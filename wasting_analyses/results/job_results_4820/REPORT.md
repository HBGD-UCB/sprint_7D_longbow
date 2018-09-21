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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        birthlen      swasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       25     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        4     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      126     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       82     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        2     241
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       34     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       73     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       76     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             0       25     203
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              0       98     203
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              1        6     203
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       73     203
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        1     203
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       36     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              0       62     168
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     168
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     168
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             0       34     279
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     279
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              0      134     279
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          0      111     279
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       44     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0      109     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0      103     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       14     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       52     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       12      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        0      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       31      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        1      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0      84
Birth       ki1000108-IRC              INDIA                          >=50 cm             0       82     343
Birth       ki1000108-IRC              INDIA                          >=50 cm             1       38     343
Birth       ki1000108-IRC              INDIA                          <48 cm              0       80     343
Birth       ki1000108-IRC              INDIA                          <48 cm              1        7     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm          0      127     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm          1        9     343
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             0        0       2
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             1        0       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm              0        2       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm              1        0       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          0        0       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             0        3       6
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0        9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0       99     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0       53     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1        1     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0       10      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0        9      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        1      23
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             0      709    1423
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             1        6    1423
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              0      249    1423
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          0      454    1423
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          1        3    1423
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              0        3       8
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       8
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm             0       62     111
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm             1        1     111
Birth       ki1114097-CMIN             BRAZIL                         <48 cm              0       12     111
Birth       ki1114097-CMIN             BRAZIL                         <48 cm              1        0     111
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm          0       36     111
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm          1        0     111
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
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             0    11654   13824
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             1      910   13824
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              0      140   13824
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              1        0   13824
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1119   13824
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          1        1   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     3585   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1      411   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     3499   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      142   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5041   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      238   12916
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      351     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       45     756
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              0      129     756
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              1        3     756
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      216     756
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1       12     756
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             0     1310    6193
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             1       94    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm              0     2258    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm              1       96    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          0     2305    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          1      130    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1042    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1       68    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      626    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              1       25    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0     1110    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1       28    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     1848   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       44   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    20536   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1      306   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     8526   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      158   31418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0       72    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0      914    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1        6    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      370    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1        4    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       27     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        2     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      122     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1        0     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       83     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        0     234
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30     173
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       69     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       74     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0     173
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             0       24     193
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              0       99     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              1        2     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       66     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        2     193
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     171
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              0       67     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              1        0     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     171
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             0       30     261
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              0      132     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              1        0     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          0       99     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       39     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       84     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        2     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       88     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        1     214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       14     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       54     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       14     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       48     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        0     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       39     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        1     103
6 months    ki1000108-IRC              INDIA                          >=50 cm             0      135     389
6 months    ki1000108-IRC              INDIA                          >=50 cm             1        6     389
6 months    ki1000108-IRC              INDIA                          <48 cm              0      107     389
6 months    ki1000108-IRC              INDIA                          <48 cm              1        3     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm          0      125     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm          1       13     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             0       44     180
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             1        0     180
6 months    ki1000109-EE               PAKISTAN                       <48 cm              0       86     180
6 months    ki1000109-EE               PAKISTAN                       <48 cm              1        0     180
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          0       48     180
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          1        2     180
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             0        4      17
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             1        0      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              0        6      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              1        0      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        6      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        1      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      194    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        2    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      676    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1       32    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      410    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1        8    1322
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       25     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        0     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       83     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1        0     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       70     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        0     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      139     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        1     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      203     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1        3     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      235     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1        1     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      164     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      270     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      281     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        0     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             0      673    1347
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             1        4    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              0      231    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              1        3    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          0      424    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          1       12    1347
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              0        1       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       1
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             0       58     104
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             1        0     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm              0       13     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm              1        0     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          0       33     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          1        0     104
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
6 months    ki1114097-CMIN             PERU                           [48-50) cm          0        1      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm          1        0      14
6 months    ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
6 months    ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
6 months    ki1114097-CONTENT          PERU                           <48 cm              0        1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm              1        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             0    14279   15757
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             1       13   15757
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              0      172   15757
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              1        0   15757
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1290   15757
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          1        3   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     2371    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       21    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     2559    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1       23    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     3166    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1       35    8175
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      350     689
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             1        1     689
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              0      133     689
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              1        1     689
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      203     689
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1        1     689
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             0     1307    6127
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             1       22    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm              0     2410    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm              1      117    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          0     2209    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          1       62    6127
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      980    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1        9    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      667    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              1       10    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0     1017    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1       16    2699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     4789   32959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       56   32959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    20264   32959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1      300   32959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     7454   32959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1       96   32959
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     2188    8048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1       14    8048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     3820    8048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1       34    8048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0     1984    8048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1        8    8048
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       28     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      102     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1        0     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       77     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        0     207
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       21     139
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       57     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       61     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0     139
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0       23     184
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       95     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1        0     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       65     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        1     184
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       36     165
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0       65     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1        0     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       64     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     165
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       23     191
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0       99     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1        1     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       68     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     191
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       35     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       83     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       83     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       12     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       49     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        0     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       42     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       15     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        0     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       49     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        0     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0     104
24 months   ki1000108-IRC              INDIA                          >=50 cm             0      142     390
24 months   ki1000108-IRC              INDIA                          >=50 cm             1        0     390
24 months   ki1000108-IRC              INDIA                          <48 cm              0      109     390
24 months   ki1000108-IRC              INDIA                          <48 cm              1        1     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm          0      134     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm          1        4     390
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       20     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        0     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       61     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1        1     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       53     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        1     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      202     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1        4     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      230     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1        3     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      128     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      197     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      185     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        1     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      530    1066
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1        5    1066
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      191    1066
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1        6    1066
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      324    1066
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1       10    1066
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        1       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm             0        3       4
24 months   ki1114097-CMIN             PERU                           >=50 cm             1        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm              0        1       4
24 months   ki1114097-CMIN             PERU                           <48 cm              1        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm          0        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm          1        0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0     3620    3971
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0       44    3971
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0      303    3971
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1        1    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0       38     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1        4     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0      236     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1       14     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0      113     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1       12     417
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      263     564
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1        1     564
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0      122     564
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1        0     564
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      178     564
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1        0     564
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0     1028    4722
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1        7    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm              0     1895    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm              1       33    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0     1749    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1       10    4722
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      891    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1        4    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      601    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1        8    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      929    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1       13    2446
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     2264   16830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       68   16830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    10080   16830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1      474   16830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     3834   16830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      110   16830
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     2096    7948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1       52    7948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     3742    7948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      132    7948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0     1888    7948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1       38    7948


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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/de4c2e01-0a7b-4e28-9e38-48475940b302/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/de4c2e01-0a7b-4e28-9e38-48475940b302/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/de4c2e01-0a7b-4e28-9e38-48475940b302/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/de4c2e01-0a7b-4e28-9e38-48475940b302/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC        INDIA         >=50 cm              NA                0.3166667    0.2333160   0.4000173
Birth       ki1000108-IRC        INDIA         <48 cm               NA                0.0804598    0.0232201   0.1376995
Birth       ki1000108-IRC        INDIA         [48-50) cm           NA                0.0661765    0.0243360   0.1080170
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                0.1037275    0.0944345   0.1130206
Birth       ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               NA                0.0382052    0.0320695   0.0443410
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           NA                0.0451153    0.0395446   0.0506860
Birth       ki1135781-COHORTS    INDIA         >=50 cm              NA                0.0663215    0.0539160   0.0787270
Birth       ki1135781-COHORTS    INDIA         <48 cm               NA                0.0387465    0.0311659   0.0463270
Birth       ki1135781-COHORTS    INDIA         [48-50) cm           NA                0.0532311    0.0444675   0.0619946
Birth       ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                0.0604607    0.0464886   0.0744329
Birth       ki1135781-COHORTS    PHILIPPINES   <48 cm               NA                0.0329679    0.0191125   0.0468232
Birth       ki1135781-COHORTS    PHILIPPINES   [48-50) cm           NA                0.0240492    0.0151352   0.0329633
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                0.0247834    0.0144168   0.0351499
Birth       kiGH5241-JiVitA-3    BANGLADESH    <48 cm               NA                0.0144623    0.0120196   0.0169050
Birth       kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           NA                0.0185396    0.0136563   0.0234228
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                0.0092542    0.0055395   0.0129688
6 months    ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               NA                0.0095408    0.0059123   0.0131692
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           NA                0.0113255    0.0077192   0.0149318
6 months    ki1135781-COHORTS    INDIA         >=50 cm              NA                0.0162014    0.0095664   0.0228364
6 months    ki1135781-COHORTS    INDIA         <48 cm               NA                0.0464578    0.0382887   0.0546268
6 months    ki1135781-COHORTS    INDIA         [48-50) cm           NA                0.0273332    0.0206260   0.0340404
6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                0.0091001    0.0031808   0.0150194
6 months    ki1135781-COHORTS    PHILIPPINES   <48 cm               NA                0.0147710    0.0056822   0.0238599
6 months    ki1135781-COHORTS    PHILIPPINES   [48-50) cm           NA                0.0154889    0.0079571   0.0230207
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                0.0113909    0.0066436   0.0161382
6 months    kiGH5241-JiVitA-3    BANGLADESH    <48 cm               NA                0.0146870    0.0119362   0.0174378
6 months    kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           NA                0.0128114    0.0089840   0.0166388
6 months    kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                0.0063579    0.0010178   0.0116979
6 months    kiGH5241-JiVitA-4    BANGLADESH    <48 cm               NA                0.0088220    0.0001687   0.0174753
6 months    kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           NA                0.0040161   -0.0002890   0.0083211
24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                0.0093458    0.0011885   0.0175031
24 months   ki1101329-Keneba     GAMBIA        <48 cm               NA                0.0304569    0.0064495   0.0544642
24 months   ki1101329-Keneba     GAMBIA        [48-50) cm           NA                0.0299401    0.0116547   0.0482255
24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                0.0067633    0.0017695   0.0117571
24 months   ki1135781-COHORTS    INDIA         <48 cm               NA                0.0171162    0.0113260   0.0229064
24 months   ki1135781-COHORTS    INDIA         [48-50) cm           NA                0.0056850    0.0021711   0.0091990
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                0.0309880    0.0218546   0.0401213
24 months   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               NA                0.0458603    0.0398430   0.0518777
24 months   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           NA                0.0299397    0.0224920   0.0373875
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                0.0244074    0.0150600   0.0337547
24 months   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               NA                0.0347615    0.0250574   0.0444656
24 months   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           NA                0.0199153    0.0096176   0.0302129


### Parameter: E(Y)


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0612419   0.0571066   0.0653771
Birth       ki1135781-COHORTS    INDIA         NA                   NA                0.0516712   0.0461576   0.0571849
Birth       ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0161691   0.0138058   0.0185324
6 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0096636   0.0075428   0.0117844
6 months    ki1135781-COHORTS    INDIA         NA                   NA                0.0328056   0.0283450   0.0372662
6 months    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0129678   0.0086988   0.0172368
6 months    kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0137140   0.0115860   0.0158421
6 months    kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.0069583   0.0024545   0.0114620
24 months   ki1101329-Keneba     GAMBIA        NA                   NA                0.0196998   0.0113537   0.0280459
24 months   ki1135781-COHORTS    INDIA         NA                   NA                0.0105887   0.0076690   0.0135085
24 months   kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0387403   0.0343586   0.0431221
24 months   kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.0279316   0.0220494   0.0338137


### Parameter: RR


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000108-IRC        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       ki1000108-IRC        INDIA         <48 cm               >=50 cm           0.2540835   0.1190000    0.5425075
Birth       ki1000108-IRC        INDIA         [48-50) cm           >=50 cm           0.2089783   0.1053590    0.4145060
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               >=50 cm           0.3683228   0.3064642    0.4426672
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           >=50 cm           0.4349404   0.3734375    0.5065725
Birth       ki1135781-COHORTS    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS    INDIA         <48 cm               >=50 cm           0.5842216   0.4457772    0.7656626
Birth       ki1135781-COHORTS    INDIA         [48-50) cm           >=50 cm           0.8026213   0.6258650    1.0292969
Birth       ki1135781-COHORTS    PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS    PHILIPPINES   <48 cm               >=50 cm           0.5452774   0.3376361    0.8806148
Birth       ki1135781-COHORTS    PHILIPPINES   [48-50) cm           >=50 cm           0.3977660   0.2569868    0.6156651
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3    BANGLADESH    <48 cm               >=50 cm           0.5835475   0.3726263    0.9138583
Birth       kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           >=50 cm           0.7480657   0.4674444    1.1971525
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               >=50 cm           1.0309710   0.5932031    1.7917997
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           >=50 cm           1.2238314   0.7332899    2.0425255
6 months    ki1135781-COHORTS    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS    INDIA         <48 cm               >=50 cm           2.8675132   1.8363465    4.4777125
6 months    ki1135781-COHORTS    INDIA         [48-50) cm           >=50 cm           1.6870848   1.0466136    2.7194901
6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS    PHILIPPINES   <48 cm               >=50 cm           1.6231741   0.6629864    3.9739795
6 months    ki1135781-COHORTS    PHILIPPINES   [48-50) cm           >=50 cm           1.7020544   0.7555587    3.8342347
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3    BANGLADESH    <48 cm               >=50 cm           1.2893609   0.8154943    2.0385815
6 months    kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           >=50 cm           1.1246992   0.6869126    1.8414984
6 months    kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4    BANGLADESH    <48 cm               >=50 cm           1.3875751   0.3788527    5.0820928
6 months    kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           >=50 cm           0.6316695   0.1613043    2.4736247
24 months   ki1101329-Keneba     GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba     GAMBIA        <48 cm               >=50 cm           3.2588832   1.0053237   10.5640797
24 months   ki1101329-Keneba     GAMBIA        [48-50) cm           >=50 cm           3.2035928   1.1040590    9.2957052
24 months   ki1135781-COHORTS    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS    INDIA         <48 cm               >=50 cm           2.5307499   1.1233819    5.7012625
24 months   ki1135781-COHORTS    INDIA         [48-50) cm           >=50 cm           0.8405750   0.3209098    2.2017599
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               >=50 cm           1.4799393   1.0675261    2.0516786
24 months   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           >=50 cm           0.9661725   0.6545304    1.4261971
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               >=50 cm           1.4242223   0.8930351    2.2713657
24 months   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           >=50 cm           0.8159536   0.4273672    1.5578648


### Parameter: PAR


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC        INDIA         >=50 cm              NA                -0.1592323   -0.2190334   -0.0994311
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                -0.0424857   -0.0495246   -0.0354467
Birth       ki1135781-COHORTS    INDIA         >=50 cm              NA                -0.0146503   -0.0252172   -0.0040833
Birth       ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                -0.0187222   -0.0285964   -0.0088480
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                -0.0086143   -0.0184390    0.0012104
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.0004095   -0.0027801    0.0035990
6 months    ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.0166042    0.0099461    0.0232623
6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.0038677   -0.0013844    0.0091197
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.0023231   -0.0020839    0.0067301
6 months    kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.0006004   -0.0052054    0.0064061
24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.0103540    0.0020229    0.0186852
24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.0038254   -0.0009212    0.0085721
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.0077524   -0.0012899    0.0167946
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.0035242   -0.0049924    0.0120408


### Parameter: PAF


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC        INDIA         >=50 cm              NA                -1.0114198   -1.4046724   -0.6824784
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                -0.6937356   -0.8057181   -0.5886978
Birth       ki1135781-COHORTS    INDIA         >=50 cm              NA                -0.2835285   -0.5042426   -0.0951993
Birth       ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                -0.4485589   -0.6918571   -0.2402483
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                -0.5327628   -1.2725020   -0.0338216
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.0423709   -0.3510386    0.3212233
6 months    ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.5061387    0.2731577    0.6644404
6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.2982522   -0.2288368    0.5992552
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.1693943   -0.2216409    0.4352631
6 months    kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.0862852   -1.2139106    0.6228959
24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.5255897   -0.0150497    0.7782718
24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.3612754   -0.2664726    0.6778697
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.2001106   -0.0656478    0.3995924
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.1261727   -0.2328904    0.3806634
