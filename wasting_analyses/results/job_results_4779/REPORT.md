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
![](/tmp/ca0927f3-379d-4aea-a626-8d37567f4fd9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ca0927f3-379d-4aea-a626-8d37567f4fd9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ca0927f3-379d-4aea-a626-8d37567f4fd9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ca0927f3-379d-4aea-a626-8d37567f4fd9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                0.3349399    0.1691263   0.5007535
Birth       ki0047075b-MAL-ED         BANGLADESH     <48 cm               NA                0.1410068    0.0811255   0.2008881
Birth       ki0047075b-MAL-ED         BANGLADESH     [48-50) cm           NA                0.1411975    0.0687817   0.2136132
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                0.1304348    0.0329223   0.2279473
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   <48 cm               NA                0.0458716    0.0065208   0.0852223
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   [48-50) cm           NA                0.0679612    0.0192621   0.1166602
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                0.4859668    0.3990430   0.5728907
Birth       ki1000108-IRC             INDIA          <48 cm               NA                0.1305589    0.0604576   0.2006603
Birth       ki1000108-IRC             INDIA          [48-50) cm           NA                0.1533336    0.0932153   0.2134520
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0209790    0.0104706   0.0314874
Birth       ki1101329-Keneba          GAMBIA         <48 cm               NA                0.0239044    0.0050006   0.0428082
Birth       ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.0153173    0.0040536   0.0265810
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.2524698    0.2393004   0.2656393
Birth       ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.0966878    0.0872456   0.1061301
Birth       ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.1330105    0.1239389   0.1420821
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                0.3438158    0.2972970   0.3903345
Birth       ki1135781-COHORTS         GUATEMALA      <48 cm               NA                0.0900362    0.0415722   0.1385003
Birth       ki1135781-COHORTS         GUATEMALA      [48-50) cm           NA                0.1934093    0.1424392   0.2443794
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                0.2240785    0.2036802   0.2444768
Birth       ki1135781-COHORTS         INDIA          <48 cm               NA                0.1534780    0.1393339   0.1676221
Birth       ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.1781387    0.1633285   0.1929488
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.2228387    0.1989381   0.2467393
Birth       ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.1143620    0.0909161   0.1378080
Birth       ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.1096926    0.0917454   0.1276398
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.1341278    0.1139944   0.1542613
Birth       kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.0915471    0.0854282   0.0976661
Birth       kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0987970    0.0890736   0.1085205
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.1383704   -0.0237916   0.3005324
Birth       kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.0522099    0.0314755   0.0729443
Birth       kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0373988    0.0020595   0.0727382
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                0.1631206    0.1020568   0.2241843
6 months    ki1000108-IRC             INDIA          <48 cm               NA                0.1090909    0.0507569   0.1674249
6 months    ki1000108-IRC             INDIA          [48-50) cm           NA                0.1304348    0.0741728   0.1866968
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                0.1265810    0.0914772   0.1616847
6 months    ki1000304b-SAS-CompFeed   INDIA          <48 cm               NA                0.1630342    0.1323253   0.1937432
6 months    ki1000304b-SAS-CompFeed   INDIA          [48-50) cm           NA                0.0729259    0.0394556   0.1063962
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0349509    0.0210564   0.0488454
6 months    ki1101329-Keneba          GAMBIA         <48 cm               NA                0.0559128    0.0273061   0.0845196
6 months    ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.0853953    0.0594632   0.1113275
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.0271629    0.0208531   0.0334728
6 months    ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.0334910    0.0268210   0.0401610
6 months    ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.0370349    0.0306276   0.0434421
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                0.0903669    0.0756711   0.1050627
6 months    ki1135781-COHORTS         INDIA          <48 cm               NA                0.1596631    0.1458099   0.1735163
6 months    ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.1179850    0.1050673   0.1309027
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.0446373    0.0321335   0.0571410
6 months    ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.0700720    0.0519480   0.0881961
6 months    ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.0699330    0.0547567   0.0851093
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.0746803    0.0632957   0.0860648
6 months    kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.0905444    0.0844032   0.0966857
6 months    kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0727626    0.0643933   0.0811319
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.0473389    0.0323228   0.0623549
6 months    kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.0582956    0.0421473   0.0744440
6 months    kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0499581    0.0346879   0.0652284
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                0.0704225    0.0282859   0.1125592
24 months   ki1000108-IRC             INDIA          <48 cm               NA                0.0818182    0.0305322   0.1331041
24 months   ki1000108-IRC             INDIA          [48-50) cm           NA                0.0797101    0.0344636   0.1249567
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                0.0679221    0.0288813   0.1069628
24 months   ki1017093b-PROVIDE        BANGLADESH     <48 cm               NA                0.1516258    0.1040091   0.1992425
24 months   ki1017093b-PROVIDE        BANGLADESH     [48-50) cm           NA                0.1057733    0.0668810   0.1446656
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                0.0625000    0.0205249   0.1044751
24 months   ki1017093c-NIH-Crypto     BANGLADESH     <48 cm               NA                0.1100000    0.0665942   0.1534058
24 months   ki1017093c-NIH-Crypto     BANGLADESH     [48-50) cm           NA                0.0806452    0.0414759   0.1198144
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0810359    0.0580340   0.1040377
24 months   ki1101329-Keneba          GAMBIA         <48 cm               NA                0.1393100    0.0930677   0.1855522
24 months   ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.1213629    0.0870301   0.1556958
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.2142857    0.0900422   0.3385292
24 months   ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.1640000    0.1180459   0.2099541
24 months   ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.2000000    0.1297940   0.2702060
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                0.0501931    0.0374315   0.0629548
24 months   ki1135781-COHORTS         INDIA          <48 cm               NA                0.1271869    0.1126712   0.1417027
24 months   ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.0766545    0.0644202   0.0888889
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.0406072    0.0275207   0.0536936
24 months   ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.0971022    0.0735252   0.1206792
24 months   ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.0652783    0.0494937   0.0810630
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.1844571    0.1621403   0.2067739
24 months   kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.2444823    0.2316449   0.2573196
24 months   kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.1767507    0.1598245   0.1936769
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.1777126    0.1503339   0.2050913
24 months   kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.2338565    0.2117770   0.2559361
24 months   kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.1681175    0.1412972   0.1949379


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
Birth       ki0047075b-MAL-ED         BANGLADESH     <48 cm               >=50 cm           0.4209913   0.2192975   0.8081885
Birth       ki0047075b-MAL-ED         BANGLADESH     [48-50) cm           >=50 cm           0.4215606   0.2073892   0.8569074
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   <48 cm               >=50 cm           0.3516820   0.1127118   1.0973137
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   [48-50) cm           >=50 cm           0.5210356   0.1849829   1.4675846
Birth       ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC             INDIA          <48 cm               >=50 cm           0.2686581   0.1527708   0.4724540
Birth       ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           0.3155228   0.2049936   0.4856478
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.1394422   0.4468382   2.9055903
Birth       ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           0.7301240   0.2999046   1.7775020
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           0.3829679   0.3428687   0.4277567
Birth       ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           0.5268371   0.4835829   0.5739603
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA      <48 cm               >=50 cm           0.2618735   0.1502916   0.4562978
Birth       ki1135781-COHORTS         GUATEMALA      [48-50) cm           >=50 cm           0.5625377   0.4185457   0.7560671
Birth       ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           0.6849295   0.6019878   0.7792988
Birth       ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           0.7949831   0.7030989   0.8988753
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           0.5132056   0.4074095   0.6464747
Birth       ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           0.4922511   0.4049613   0.5983563
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           0.6825366   0.5808382   0.8020412
Birth       kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.7365885   0.6182395   0.8775930
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           0.3773199   0.1094762   1.3004687
Birth       kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           0.2702807   0.0598437   1.2207069
6 months    ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC             INDIA          <48 cm               >=50 cm           0.6687747   0.3481756   1.2845807
6 months    ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           0.7996219   0.4516949   1.4155467
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA          <48 cm               >=50 cm           1.2879837   0.8752691   1.8953050
6 months    ki1000304b-SAS-CompFeed   INDIA          [48-50) cm           >=50 cm           0.5761206   0.3420365   0.9704079
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.5997540   0.8378315   3.0545675
6 months    ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           2.4432943   1.4832212   4.0248123
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           1.2329685   0.9082476   1.6737850
6 months    ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           1.3634347   1.0208619   1.8209655
6 months    ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           1.7668315   1.4698946   2.1237534
6 months    ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           1.3056215   1.0737193   1.5876100
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           1.5698105   1.0728645   2.2969398
6 months    ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           1.5666953   1.0999906   2.2314136
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           1.2124279   1.0317174   1.4247906
6 months    kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.9743217   0.8045972   1.1798486
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           1.2314539   0.8069197   1.8793430
6 months    kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           1.0553306   0.6917007   1.6101222
24 months   ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC             INDIA          <48 cm               >=50 cm           1.1618182   0.4884231   2.7636315
24 months   ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           1.1318841   0.4961517   2.5821974
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH     <48 cm               >=50 cm           2.2323494   1.1600995   4.2956522
24 months   ki1017093b-PROVIDE        BANGLADESH     [48-50) cm           >=50 cm           1.5572743   0.7868656   3.0819791
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH     <48 cm               >=50 cm           1.7600000   0.8076459   3.8353442
24 months   ki1017093c-NIH-Crypto     BANGLADESH     [48-50) cm           >=50 cm           1.2903226   0.5633055   2.9556475
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.7191150   1.1129250   2.6554856
24 months   ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           1.4976445   1.0046579   2.2325400
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           0.7653333   0.4019584   1.4572033
24 months   ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           0.9333333   0.4738906   1.8382115
24 months   ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           2.5339522   1.9184717   3.3468899
24 months   ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           1.5271923   1.1315632   2.0611454
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           2.3912572   1.5977191   3.5789212
24 months   ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           1.6075567   1.0744306   2.4052167
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           1.3254152   1.1589597   1.5157777
24 months   kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.9582211   0.8199760   1.1197737
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           1.3159254   1.0965711   1.5791586
24 months   kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           0.9460079   0.7582722   1.1802237


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                -0.1689648   -0.3198116   -0.0181179
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                -0.0606673   -0.1448580    0.0235233
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                -0.2177453   -0.2835718   -0.1519188
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                -0.0013023   -0.0084833    0.0058787
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.0929777   -0.1032121   -0.0827433
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                -0.0898475   -0.1189680   -0.0607270
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                -0.0471045   -0.0646933   -0.0295157
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                -0.0672678   -0.0845303   -0.0500052
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                -0.0382592   -0.0573130   -0.0192054
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                -0.0856618   -0.2401006    0.0687770
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                -0.0268738   -0.0736798    0.0199322
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                -0.0025265   -0.0446929    0.0396399
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.0199860    0.0079287    0.0320433
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                 0.0048860   -0.0006515    0.0104236
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.0385706    0.0247646    0.0523766
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.0146440    0.0038473    0.0254406
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.0099704   -0.0003817    0.0203224
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0058421   -0.0077987    0.0194828
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                 0.0065005   -0.0279054    0.0409065
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                 0.0445347    0.0072740    0.0817953
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                 0.0250486   -0.0134555    0.0635528
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.0249679    0.0068217    0.0431141
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.0344296   -0.1514299    0.0825707
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.0406582    0.0281865    0.0531300
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.0276676    0.0157608    0.0395743
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.0338435    0.0120313    0.0556558
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0235959   -0.0000380    0.0472298


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                -1.0180129   -2.1574790   -0.2897555
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                -0.8695652   -2.4787419   -0.0047523
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                -0.8118111   -1.0943527   -0.5673862
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                -0.0661838   -0.5002825    0.2423108
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.5829614   -0.6474040   -0.5210397
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                -0.3537746   -0.4731478   -0.2440745
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                -0.2661663   -0.3699125   -0.1702771
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                -0.4323932   -0.5456787   -0.3274105
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                -0.3990797   -0.6120719   -0.2142288
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                -1.6251944   -6.5610270    0.0885305
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                -0.1972434   -0.5921885    0.0997348
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                -0.0203660   -0.4268983    0.2703427
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.3637991    0.1201437    0.5399799
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                 0.1524550   -0.0375083    0.3076368
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.2991418    0.1858230    0.3966886
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.2470253    0.0459437    0.4057259
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1177827   -0.0135154    0.2320714
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1098526   -0.1829914    0.3302044
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                 0.0845070   -0.4909232    0.4378467
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                 0.3960160   -0.0234595    0.6435651
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                 0.2861111   -0.3102198    0.6110291
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.2355378    0.0484248    0.3858579
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.1914286   -1.0558290    0.3095233
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.4475248    0.2993650    0.5643539
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.4052386    0.2127529    0.5506607
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1550318    0.0501105    0.2483639
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1172126   -0.0084026    0.2271802
