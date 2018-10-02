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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        birthlen      wasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            1       10     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm             0      110     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm             1       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         0       72     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         1       12     241
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm            0       31     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm            1        3     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm             0       72     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm             1        1     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         0       74     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         1        2     183
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm            0       22     203
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm            1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm             0       87     203
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm             1       17     203
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm         0       61     203
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm         1       13     203
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm            0       33     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm            1        5     168
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm             0       53     168
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm             1       11     168
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm         0       62     168
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm         1        4     168
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm            0       33     279
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm            1        1     279
Birth       ki0047075b-MAL-ED          PERU                           <48 cm             0      131     279
Birth       ki0047075b-MAL-ED          PERU                           <48 cm             1        3     279
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm         0      109     279
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm         1        2     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            0       40     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            1        6     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             0      104     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             1        5     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         0       96     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         1        7     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       14     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             0       51     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       51     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        0     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            0       11      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            1        1      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             0       27      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             1        5      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         0       36      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         1        4      84
Birth       ki1000108-IRC              INDIA                          >=50 cm            0       61     343
Birth       ki1000108-IRC              INDIA                          >=50 cm            1       59     343
Birth       ki1000108-IRC              INDIA                          <48 cm             0       75     343
Birth       ki1000108-IRC              INDIA                          <48 cm             1       12     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm         0      115     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm         1       21     343
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            0        0       2
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            1        0       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm             0        2       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm             1        0       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         0        0       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm            0        3       6
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm            1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm             0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm         0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm         1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            0        9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm             0       97     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm             1        6     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         0       49     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         1        5     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            1        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm             0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm             1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             0        9      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         0        8      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         1        2      23
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm            0      700    1423
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm            1       15    1423
Birth       ki1101329-Keneba           GAMBIA                         <48 cm             0      245    1423
Birth       ki1101329-Keneba           GAMBIA                         <48 cm             1        6    1423
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm         0      450    1423
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm         1        7    1423
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             1        2       8
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         1        0       8
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm            0       56     111
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm            1        7     111
Birth       ki1114097-CMIN             BRAZIL                         <48 cm             0       12     111
Birth       ki1114097-CMIN             BRAZIL                         <48 cm             1        0     111
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm         0       35     111
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm         1        1     111
Birth       ki1114097-CMIN             PERU                           >=50 cm            0       10      10
Birth       ki1114097-CMIN             PERU                           >=50 cm            1        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm             0        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm             1        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm         0        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm         1        0      10
Birth       ki1114097-CONTENT          PERU                           >=50 cm            0        1       2
Birth       ki1114097-CONTENT          PERU                           >=50 cm            1        0       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             0        1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             1        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         0        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         1        0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm            0     9767   13824
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm            1     2797   13824
Birth       ki1119695-PROBIT           BELARUS                        <48 cm             0      140   13824
Birth       ki1119695-PROBIT           BELARUS                        <48 cm             1        0   13824
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm         0     1029   13824
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm         1       91   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            0     3006   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            1      990   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             0     3276   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             1      365   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         0     4574   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         1      705   12916
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm            0      260     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm            1      136     756
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm             0      120     756
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm             1       12     756
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm         0      184     756
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm         1       44     756
Birth       ki1135781-COHORTS          INDIA                          >=50 cm            0     1102    6193
Birth       ki1135781-COHORTS          INDIA                          >=50 cm            1      302    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm             0     1992    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm             1      362    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm         0     2003    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm         1      432    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm            0      864    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm            1      246    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm             0      571    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm             1       80    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         0     1013    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         1      125    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0     1644   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1      248   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0    18908   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1     1934   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     7854   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      830   31418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            0       62    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            1       10    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             0      872    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             1       48    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         0      360    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         1       14    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            0       27     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            1        2     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm             0      119     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm             1        3     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         0       80     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         1        3     234
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm            0       30     173
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm            1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm             0       69     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm             1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         0       74     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         1        0     173
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            0       24     193
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            1        0     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm             0       97     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm             1        4     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm         0       59     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm         1        9     193
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            0       36     171
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            1        2     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm             0       67     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm             1        0     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         0       66     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         1        0     171
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm            0       30     261
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm            1        0     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm             0      132     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm             1        0     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm         0       99     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm         1        0     261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            0       39     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            1        0     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             0       82     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             1        4     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         0       86     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         1        3     214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       14     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             0       54     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       51     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        0     119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            0       14     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            1        1     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             0       40     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             1        8     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         0       36     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         1        4     103
6 months    ki1000108-IRC              INDIA                          >=50 cm            0      118     389
6 months    ki1000108-IRC              INDIA                          >=50 cm            1       23     389
6 months    ki1000108-IRC              INDIA                          <48 cm             0       98     389
6 months    ki1000108-IRC              INDIA                          <48 cm             1       12     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm         0      120     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm         1       18     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm            0       40     180
6 months    ki1000109-EE               PAKISTAN                       >=50 cm            1        4     180
6 months    ki1000109-EE               PAKISTAN                       <48 cm             0       80     180
6 months    ki1000109-EE               PAKISTAN                       <48 cm             1        6     180
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm         0       42     180
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm         1        8     180
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            0        4      17
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            1        0      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm             0        6      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm             1        0      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         0        6      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         1        1      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            0      176    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            1       20    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm             0      594    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm             1      114    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         0      388    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         1       30    1322
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            0       24     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            1        1     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm             0       76     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm             1        7     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         0       62     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         1        8     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            0      138     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm             0      191     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm             1       15     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         0      229     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         1        7     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            0      161     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            1        3     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             0      260     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             1       10     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         0      273     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         1        8     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm            0      653    1347
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm            1       24    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm             0      221    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm             1       13    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm         0      399    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm         1       37    1347
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm             0        1       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm             1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         1        0       1
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm            0       57     104
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm            1        1     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm             0       13     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm             1        0     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm         0       33     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm         1        0     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm            0        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm            1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm             0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm             1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm         0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm         1        0       2
6 months    ki1114097-CMIN             PERU                           >=50 cm            0       12      14
6 months    ki1114097-CMIN             PERU                           >=50 cm            1        0      14
6 months    ki1114097-CMIN             PERU                           <48 cm             0        0      14
6 months    ki1114097-CMIN             PERU                           <48 cm             1        1      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm         0        1      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm         1        0      14
6 months    ki1114097-CONTENT          PERU                           >=50 cm            0        1       2
6 months    ki1114097-CONTENT          PERU                           >=50 cm            1        0       2
6 months    ki1114097-CONTENT          PERU                           <48 cm             0        1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm             1        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm         0        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm         1        0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm            0    14181   15757
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm            1      111   15757
6 months    ki1119695-PROBIT           BELARUS                        <48 cm             0      171   15757
6 months    ki1119695-PROBIT           BELARUS                        <48 cm             1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm         0     1275   15757
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm         1       18   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            0     2329    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            1       63    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             0     2500    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             1       82    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         0     3084    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         1      117    8175
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm            0      343     689
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm            1        8     689
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm             0      130     689
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm             1        4     689
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm         0      194     689
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm         1       10     689
6 months    ki1135781-COHORTS          INDIA                          >=50 cm            0     1213    6127
6 months    ki1135781-COHORTS          INDIA                          >=50 cm            1      116    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm             0     2121    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm             1      406    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm         0     2003    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm         1      268    6127
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm            0      944    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm            1       45    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm             0      633    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm             1       44    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         0      962    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         1       71    2699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0     4487   32959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1      358   32959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0    18698   32959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1     1866   32959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     6984   32959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      566   32959
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            0     2098    8048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            1      104    8048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             0     3630    8048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             1      224    8048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         0     1892    8048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         1      100    8048
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            0       25     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            1        3     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm             0       92     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm             1       10     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         0       70     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         1        7     207
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm            0       21     139
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm            1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             0       56     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             1        1     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         0       60     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         1        1     139
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            0       23     184
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            1        0     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm             0       78     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm             1       17     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm         0       59     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm         1        7     184
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            0       36     165
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            1        0     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm             0       63     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm             1        2     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         0       62     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         1        2     165
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm            0       23     191
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm            1        0     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm             0       97     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm             1        3     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm         0       68     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm         1        0     191
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            0       35     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             0       83     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         0       82     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         1        1     201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       12     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        0     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             0       49     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             1        0     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       41     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        1     103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            0       15     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            1        0     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             0       45     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             1        4     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         0       39     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         1        1     104
24 months   ki1000108-IRC              INDIA                          >=50 cm            0      132     390
24 months   ki1000108-IRC              INDIA                          >=50 cm            1       10     390
24 months   ki1000108-IRC              INDIA                          <48 cm             0      101     390
24 months   ki1000108-IRC              INDIA                          <48 cm             1        9     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm         0      127     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm         1       11     390
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            0       18     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            1        2     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm             0       54     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm             1        8     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         0       48     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         1        6     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            0      129     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            1       10     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm             0      175     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm             1       31     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         0      209     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         1       24     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            0      120     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            1        8     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             0      178     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             1       22     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         0      171     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         1       15     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm            0      491    1066
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm            1       44    1066
24 months   ki1101329-Keneba           GAMBIA                         <48 cm             0      169    1066
24 months   ki1101329-Keneba           GAMBIA                         <48 cm             1       28    1066
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm         0      293    1066
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm         1       41    1066
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             0        1       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         1        0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm            0        3       4
24 months   ki1114097-CMIN             PERU                           >=50 cm            1        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm             0        1       4
24 months   ki1114097-CMIN             PERU                           <48 cm             1        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm         0        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm         1        0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm            0        1       2
24 months   ki1114097-CONTENT          PERU                           >=50 cm            1        0       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             0        1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             1        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         0        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         1        0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm            0     3585    3971
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm            1       38    3971
24 months   ki1119695-PROBIT           BELARUS                        <48 cm             0       44    3971
24 months   ki1119695-PROBIT           BELARUS                        <48 cm             1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm         0      298    3971
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm         1        6    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            0       33     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            1        9     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             0      209     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             1       41     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         0      100     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         1       25     417
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm            0      261     564
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm            1        3     564
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm             0      110     564
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm             1       12     564
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm         0      174     564
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm         1        4     564
24 months   ki1135781-COHORTS          INDIA                          >=50 cm            0      983    4722
24 months   ki1135781-COHORTS          INDIA                          >=50 cm            1       52    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm             0     1686    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm             1      242    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm         0     1624    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm         1      135    4722
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm            0      855    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm            1       40    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm             0      546    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm             1       63    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         0      878    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         1       64    2446
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0     1916   16830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1      416   16830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0     7990   16830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1     2564   16830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     3250   16830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      694   16830
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            0     1766    7948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            1      382    7948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             0     2978    7948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             1      896    7948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         0     1604    7948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         1      322    7948


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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
![](/tmp/18141820-3397-4708-8074-b3c3754d76b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/18141820-3397-4708-8074-b3c3754d76b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/18141820-3397-4708-8074-b3c3754d76b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/18141820-3397-4708-8074-b3c3754d76b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                0.3448276    0.1714748   0.5181804
Birth       ki0047075b-MAL-ED         BANGLADESH     <48 cm               NA                0.1406250    0.0802762   0.2009738
Birth       ki0047075b-MAL-ED         BANGLADESH     [48-50) cm           NA                0.1428571    0.0678696   0.2178447
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                0.1304348    0.0329223   0.2279473
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   <48 cm               NA                0.0458716    0.0065208   0.0852223
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   [48-50) cm           NA                0.0679612    0.0192621   0.1166602
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                0.4916667    0.4020887   0.5812446
Birth       ki1000108-IRC             INDIA          <48 cm               NA                0.1379310    0.0653665   0.2104956
Birth       ki1000108-IRC             INDIA          [48-50) cm           NA                0.1544118    0.0935937   0.2152298
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0209790    0.0104706   0.0314874
Birth       ki1101329-Keneba          GAMBIA         <48 cm               NA                0.0239044    0.0050006   0.0428082
Birth       ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.0153173    0.0040536   0.0265810
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.2477477    0.2343621   0.2611334
Birth       ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.1002472    0.0904916   0.1100027
Birth       ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.1335480    0.1243715   0.1427246
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                0.3434343    0.2966340   0.3902347
Birth       ki1135781-COHORTS         GUATEMALA      <48 cm               NA                0.0909091    0.0418346   0.1399836
Birth       ki1135781-COHORTS         GUATEMALA      [48-50) cm           NA                0.1929825    0.1417236   0.2442413
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                0.2150997    0.1936052   0.2365942
Birth       ki1135781-COHORTS         INDIA          <48 cm               NA                0.1537808    0.1392070   0.1683546
Birth       ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.1774127    0.1622381   0.1925873
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.2216216    0.1971838   0.2460595
Birth       ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.1228879    0.0976638   0.1481119
Birth       ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.1098418    0.0916712   0.1280124
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.1310782    0.1062832   0.1558733
Birth       kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.0927934    0.0865675   0.0990193
Birth       kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0955781    0.0859383   0.1052179
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.1388889   -0.0232300   0.3010078
Birth       kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.0521739    0.0314379   0.0729099
Birth       kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0374332    0.0020896   0.0727768
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                0.1631206    0.1020568   0.2241843
6 months    ki1000108-IRC             INDIA          <48 cm               NA                0.1090909    0.0507569   0.1674249
6 months    ki1000108-IRC             INDIA          [48-50) cm           NA                0.1304348    0.0741728   0.1866968
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                0.1020408    0.0635152   0.1405664
6 months    ki1000304b-SAS-CompFeed   INDIA          <48 cm               NA                0.1610169    0.1297444   0.1922895
6 months    ki1000304b-SAS-CompFeed   INDIA          [48-50) cm           NA                0.0717703    0.0385034   0.1050373
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0354505    0.0215161   0.0493849
6 months    ki1101329-Keneba          GAMBIA         <48 cm               NA                0.0555556    0.0261957   0.0849154
6 months    ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.0848624    0.0586946   0.1110302
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.0263378    0.0199200   0.0327556
6 months    ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.0317583    0.0249941   0.0385225
6 months    ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.0365511    0.0300498   0.0430523
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                0.0872837    0.0721077   0.1024596
6 months    ki1135781-COHORTS         INDIA          <48 cm               NA                0.1606648    0.1463459   0.1749837
6 months    ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.1180097    0.1047398   0.1312795
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.0455005    0.0325100   0.0584910
6 months    ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.0649926    0.0464200   0.0835653
6 months    ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.0687318    0.0533008   0.0841629
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.0738906    0.0617015   0.0860797
6 months    kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.0907411    0.0846173   0.0968649
6 months    kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0749669    0.0662619   0.0836719
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.0472298    0.0319292   0.0625303
6 months    kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.0581214    0.0418992   0.0743437
6 months    kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0502008    0.0348097   0.0655919
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                0.0704225    0.0282859   0.1125592
24 months   ki1000108-IRC             INDIA          <48 cm               NA                0.0818182    0.0305322   0.1331041
24 months   ki1000108-IRC             INDIA          [48-50) cm           NA                0.0797101    0.0344636   0.1249567
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                0.0719424    0.0289495   0.1149353
24 months   ki1017093b-PROVIDE        BANGLADESH     <48 cm               NA                0.1504854    0.1016176   0.1993533
24 months   ki1017093b-PROVIDE        BANGLADESH     [48-50) cm           NA                0.1030043    0.0639410   0.1420676
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                0.0625000    0.0205249   0.1044751
24 months   ki1017093c-NIH-Crypto     BANGLADESH     <48 cm               NA                0.1100000    0.0665942   0.1534058
24 months   ki1017093c-NIH-Crypto     BANGLADESH     [48-50) cm           NA                0.0806452    0.0414759   0.1198144
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0822430    0.0589520   0.1055340
24 months   ki1101329-Keneba          GAMBIA         <48 cm               NA                0.1421320    0.0933483   0.1909157
24 months   ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.1227545    0.0875451   0.1579638
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.2142857    0.0900422   0.3385292
24 months   ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.1640000    0.1180459   0.2099541
24 months   ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.2000000    0.1297940   0.2702060
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                0.0502415    0.0369320   0.0635511
24 months   ki1135781-COHORTS         INDIA          <48 cm               NA                0.1255187    0.1107286   0.1403087
24 months   ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.0767482    0.0643072   0.0891892
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.0446927    0.0311528   0.0582326
24 months   ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.1034483    0.0792560   0.1276406
24 months   ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.0679406    0.0518675   0.0840136
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.1783877    0.1542714   0.2025039
24 months   kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.2429411    0.2300353   0.2558468
24 months   kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.1759635    0.1582529   0.1936741
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.1778399    0.1500639   0.2056158
24 months   kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.2312855    0.2090328   0.2535382
24 months   kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.1671859    0.1400359   0.1943358


### Parameter: E(Y)


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1659751   0.1189041   0.2130461
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0697674   0.0386213   0.1009135
Birth       ki1000108-IRC             INDIA          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1101329-Keneba          GAMBIA         NA                   NA                0.0196767   0.0124580   0.0268954
Birth       ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1594921   0.1531776   0.1658066
Birth       ki1135781-COHORTS         GUATEMALA      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS         INDIA          NA                   NA                0.1769740   0.1674681   0.1864799
Birth       ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0958686   0.0906699   0.1010673
Birth       kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki1000108-IRC             INDIA          NA                   NA                0.1362468   0.1021125   0.1703810
6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1240545   0.0993302   0.1487787
6 months    ki1101329-Keneba          GAMBIA         NA                   NA                0.0549369   0.0427642   0.0671096
6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0320489   0.0282307   0.0358672
6 months    ki1135781-COHORTS         INDIA          NA                   NA                0.1289375   0.1205453   0.1373297
6 months    ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.0592812   0.0503704   0.0681920
6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0846506   0.0797924   0.0895088
6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0531809   0.0435210   0.0628408
24 months   ki1000108-IRC             INDIA          NA                   NA                0.0769231   0.0504429   0.1034032
24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba          GAMBIA         NA                   NA                0.1060038   0.0875152   0.1244923
24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1798561   0.1429491   0.2167631
24 months   ki1135781-COHORTS         INDIA          NA                   NA                0.0908513   0.0826532   0.0990495
24 months   ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.0682747   0.0582774   0.0782720
24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.2183007   0.2083024   0.2282989
24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2013085   0.1867334   0.2158836


### Parameter: RR


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH     <48 cm               >=50 cm           0.4078125   0.2105715   0.7898080
Birth       ki0047075b-MAL-ED         BANGLADESH     [48-50) cm           >=50 cm           0.4142857   0.2002844   0.8569447
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   <48 cm               >=50 cm           0.3516820   0.1127118   1.0973137
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   [48-50) cm           >=50 cm           0.5210356   0.1849829   1.4675846
Birth       ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC             INDIA          <48 cm               >=50 cm           0.2805377   0.1607677   0.4895349
Birth       ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           0.3140578   0.2034887   0.4847066
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.1394422   0.4468382   2.9055903
Birth       ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           0.7301240   0.2999046   1.7775020
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           0.4046341   0.3620114   0.4522752
Birth       ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           0.5390484   0.4939302   0.5882879
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA      <48 cm               >=50 cm           0.2647059   0.1516940   0.4619115
Birth       ki1135781-COHORTS         GUATEMALA      [48-50) cm           >=50 cm           0.5619195   0.4168923   0.7573984
Birth       ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           0.7149280   0.6229469   0.8204904
Birth       ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           0.8247930   0.7231361   0.9407405
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           0.5544940   0.4392425   0.6999860
Birth       ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           0.4956278   0.4062697   0.6046399
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           0.7079238   0.5803017   0.8636131
Birth       kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.7291682   0.5912094   0.8993197
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           0.3756522   0.1094653   1.2891256
Birth       kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           0.2695187   0.0599227   1.2122333
6 months    ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC             INDIA          <48 cm               >=50 cm           0.6687747   0.3481756   1.2845807
6 months    ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           0.7996219   0.4516949   1.4155467
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA          <48 cm               >=50 cm           1.5779661   0.9805499   2.5393679
6 months    ki1000304b-SAS-CompFeed   INDIA          [48-50) cm           >=50 cm           0.7033493   0.3954062   1.2511191
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.5671296   0.8110863   3.0279088
6 months    ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           2.3938265   1.4525330   3.9451118
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           1.2058082   0.8724167   1.6666043
6 months    ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           1.3877806   1.0263627   1.8764663
6 months    ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           1.8407202   1.5140330   2.2378976
6 months    ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           1.3520248   1.0991542   1.6630706
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           1.4283932   0.9537083   2.1393409
6 months    ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           1.5105733   1.0505205   2.1720962
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           1.2280465   1.0348871   1.4572586
6 months    kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           1.0145658   0.8278474   1.2433981
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           1.2306095   0.8012937   1.8899436
6 months    kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           1.0629055   0.6919273   1.6327843
24 months   ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC             INDIA          <48 cm               >=50 cm           1.1618182   0.4884231   2.7636315
24 months   ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           1.1318841   0.4961517   2.5821974
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH     <48 cm               >=50 cm           2.0917476   1.0595747   4.1294003
24 months   ki1017093b-PROVIDE        BANGLADESH     [48-50) cm           >=50 cm           1.4317597   0.7054820   2.9057236
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH     <48 cm               >=50 cm           1.7600000   0.8076459   3.8353442
24 months   ki1017093c-NIH-Crypto     BANGLADESH     [48-50) cm           >=50 cm           1.2903226   0.5633055   2.9556475
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.7281957   1.1074928   2.6967763
24 months   ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           1.4925830   0.9974349   2.2335333
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           0.7653333   0.4019584   1.4572033
24 months   ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           0.9333333   0.4738906   1.8382115
24 months   ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           2.4983043   1.8695133   3.3385826
24 months   ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           1.5275834   1.1197617   2.0839355
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           2.3146551   1.5786091   3.3938916
24 months   ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           1.5201698   1.0350399   2.2326832
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           1.3618715   1.1758368   1.5773397
24 months   kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.9864107   0.8301582   1.1720731
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           1.3005268   1.0805234   1.5653247
24 months   kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           0.9400923   0.7511525   1.1765567


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                -0.1788525   -0.3370758   -0.0206291
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                -0.0606673   -0.1448580    0.0235233
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                -0.2234451   -0.2913735   -0.1555167
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                -0.0013023   -0.0084833    0.0058787
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.0882556   -0.0986566   -0.0778546
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                -0.0894661   -0.1187871   -0.0601451
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                -0.0381257   -0.0566430   -0.0196084
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                -0.0660507   -0.0837712   -0.0483303
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                -0.0352096   -0.0587515   -0.0116677
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                -0.0861803   -0.2405764    0.0682159
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                -0.0268738   -0.0736798    0.0199322
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                 0.0220136   -0.0225790    0.0666063
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.0194864    0.0073552    0.0316176
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                 0.0057111    0.0000841    0.0113382
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.0416538    0.0274825    0.0558251
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.0137807    0.0026236    0.0249379
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.0107600   -0.0001604    0.0216805
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0059511   -0.0079145    0.0198168
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                 0.0065005   -0.0279054    0.0409065
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                 0.0405143    0.0002170    0.0808116
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                 0.0250486   -0.0134555    0.0635528
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.0237608    0.0053274    0.0421941
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.0344296   -0.1514299    0.0825707
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.0406098    0.0276987    0.0535209
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.0235820    0.0113708    0.0357932
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.0399130    0.0165858    0.0632402
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0234687   -0.0004869    0.0474243


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                -1.0775862   -2.2738111   -0.3184525
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                -0.8695652   -2.4787419   -0.0047523
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                -0.8330616   -1.1208325   -0.5843377
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                -0.0661838   -0.5002825    0.2423108
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.5533543   -0.6183626   -0.4909574
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                -0.3522727   -0.4721003   -0.2421990
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                -0.2154311   -0.3243667   -0.1154560
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                -0.4245700   -0.5401908   -0.3176288
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                -0.3672695   -0.6339594   -0.1441079
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                -1.6350309   -6.5555927    0.0810267
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                -0.1972434   -0.5921885    0.0997348
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                 0.1774515   -0.2480226    0.4578735
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.3547048    0.1099869    0.5321351
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                 0.1782006   -0.0160368    0.3353052
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.3230544    0.2056243    0.4231251
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.2324633    0.0229399    0.3970560
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1271109   -0.0126090    0.2475522
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1119034   -0.1869392    0.3355046
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                 0.0845070   -0.4909232    0.4378467
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                 0.3602656   -0.1060831    0.6299916
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                 0.2861111   -0.3102198    0.6110291
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.2241502    0.0337514    0.3770310
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.1914286   -1.0558290    0.3095233
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.4469917    0.2916230    0.5682832
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.3453986    0.1483370    0.4968632
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1828350    0.0695836    0.2823014
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1165805   -0.0109438    0.2280185
