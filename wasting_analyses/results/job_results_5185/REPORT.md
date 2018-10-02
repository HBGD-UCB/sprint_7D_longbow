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
![](/tmp/3cbe1862-e05f-437c-87ed-9da4c418b80c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3cbe1862-e05f-437c-87ed-9da4c418b80c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3cbe1862-e05f-437c-87ed-9da4c418b80c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3cbe1862-e05f-437c-87ed-9da4c418b80c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                0.3378521   0.1721841   0.5035201
Birth       ki0047075b-MAL-ED         BANGLADESH     <48 cm               NA                0.1409244   0.0809755   0.2008734
Birth       ki0047075b-MAL-ED         BANGLADESH     [48-50) cm           NA                0.1407552   0.0684755   0.2130349
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                0.1304348   0.0329223   0.2279473
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   <48 cm               NA                0.0458716   0.0065208   0.0852223
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   [48-50) cm           NA                0.0679612   0.0192621   0.1166602
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                0.4884254   0.4008566   0.5759943
Birth       ki1000108-IRC             INDIA          <48 cm               NA                0.1325911   0.0617151   0.2034672
Birth       ki1000108-IRC             INDIA          [48-50) cm           NA                0.1539772   0.0936307   0.2143237
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0209790   0.0104706   0.0314874
Birth       ki1101329-Keneba          GAMBIA         <48 cm               NA                0.0239044   0.0050006   0.0428082
Birth       ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.0153173   0.0040536   0.0265810
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.2525292   0.2393458   0.2657125
Birth       ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.0967001   0.0872518   0.1061484
Birth       ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.1330155   0.1239395   0.1420916
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                0.3437959   0.2972435   0.3903483
Birth       ki1135781-COHORTS         GUATEMALA      <48 cm               NA                0.0901352   0.0415606   0.1387098
Birth       ki1135781-COHORTS         GUATEMALA      [48-50) cm           NA                0.1933318   0.1423221   0.2443416
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                0.2240779   0.2036797   0.2444761
Birth       ki1135781-COHORTS         INDIA          <48 cm               NA                0.1534777   0.1393336   0.1676218
Birth       ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.1781386   0.1633283   0.1929488
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.2226478   0.1987228   0.2465728
Birth       ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.1143574   0.0908354   0.1378794
Birth       ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.1096074   0.0916492   0.1275657
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.1335249   0.1131844   0.1538654
Birth       kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.0916526   0.0855220   0.0977831
Birth       kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0983439   0.0887006   0.1079871
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.1841077   0.0329030   0.3353123
Birth       kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.0527443   0.0316686   0.0738199
Birth       kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0379524   0.0021157   0.0737892
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                0.1631206   0.1020568   0.2241843
6 months    ki1000108-IRC             INDIA          <48 cm               NA                0.1090909   0.0507569   0.1674249
6 months    ki1000108-IRC             INDIA          [48-50) cm           NA                0.1304348   0.0741728   0.1866968
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                0.1265810   0.0914772   0.1616847
6 months    ki1000304b-SAS-CompFeed   INDIA          <48 cm               NA                0.1630342   0.1323253   0.1937432
6 months    ki1000304b-SAS-CompFeed   INDIA          [48-50) cm           NA                0.0729259   0.0394556   0.1063962
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0351388   0.0212415   0.0490361
6 months    ki1101329-Keneba          GAMBIA         <48 cm               NA                0.0549401   0.0267904   0.0830898
6 months    ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.0855906   0.0595034   0.1116778
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.0271139   0.0207889   0.0334388
6 months    ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.0333182   0.0266121   0.0400242
6 months    ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.0372037   0.0307758   0.0436316
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                0.0901647   0.0753858   0.1049436
6 months    ki1135781-COHORTS         INDIA          <48 cm               NA                0.1595863   0.1456574   0.1735153
6 months    ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.1179256   0.1049324   0.1309189
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.0447531   0.0321655   0.0573406
6 months    ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.0700788   0.0519588   0.0881987
6 months    ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.0698758   0.0546774   0.0850743
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.0746703   0.0632960   0.0860447
6 months    kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.0905434   0.0844041   0.0966827
6 months    kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0727789   0.0644107   0.0811472
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.0473422   0.0323087   0.0623756
6 months    kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.0582906   0.0421358   0.0744453
6 months    kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0499962   0.0347182   0.0652742
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                0.0704225   0.0282859   0.1125592
24 months   ki1000108-IRC             INDIA          <48 cm               NA                0.0818182   0.0305322   0.1331041
24 months   ki1000108-IRC             INDIA          [48-50) cm           NA                0.0797101   0.0344636   0.1249567
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                0.0686800   0.0294956   0.1078645
24 months   ki1017093b-PROVIDE        BANGLADESH     <48 cm               NA                0.1513788   0.1039721   0.1987855
24 months   ki1017093b-PROVIDE        BANGLADESH     [48-50) cm           NA                0.1055440   0.0669354   0.1441526
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                0.0625000   0.0205249   0.1044751
24 months   ki1017093c-NIH-Crypto     BANGLADESH     <48 cm               NA                0.1100000   0.0665942   0.1534058
24 months   ki1017093c-NIH-Crypto     BANGLADESH     [48-50) cm           NA                0.0806452   0.0414759   0.1198144
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0805370   0.0577845   0.1032894
24 months   ki1101329-Keneba          GAMBIA         <48 cm               NA                0.1394331   0.0944394   0.1844267
24 months   ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.1212541   0.0874548   0.1550534
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.2142857   0.0900422   0.3385292
24 months   ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.1640000   0.1180459   0.2099541
24 months   ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.2000000   0.1297940   0.2702060
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                0.0500633   0.0372868   0.0628399
24 months   ki1135781-COHORTS         INDIA          <48 cm               NA                0.1269899   0.1124754   0.1415044
24 months   ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.0765994   0.0643571   0.0888417
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.0405615   0.0275182   0.0536048
24 months   ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.0970873   0.0735519   0.1206226
24 months   ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.0652093   0.0494503   0.0809684
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.1844392   0.1621302   0.2067482
24 months   kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.2444769   0.2316407   0.2573131
24 months   kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.1767450   0.1598192   0.1936709
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.1777793   0.1504068   0.2051518
24 months   kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.2338447   0.2117629   0.2559265
24 months   kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.1681753   0.1413606   0.1949900


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
Birth       ki0047075b-MAL-ED         BANGLADESH     <48 cm               >=50 cm           0.4171188   0.2179489   0.7982974
Birth       ki0047075b-MAL-ED         BANGLADESH     [48-50) cm           >=50 cm           0.4166178   0.2056237   0.8441164
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   <48 cm               >=50 cm           0.3516820   0.1127118   1.0973137
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   [48-50) cm           >=50 cm           0.5210356   0.1849829   1.4675846
Birth       ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC             INDIA          <48 cm               >=50 cm           0.2714665   0.1546594   0.4764926
Birth       ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           0.3152522   0.2048477   0.4851603
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.1394422   0.4468382   2.9055903
Birth       ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           0.7301240   0.2999046   1.7775020
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           0.3829266   0.3428081   0.4277403
Birth       ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           0.5267334   0.4834614   0.5738784
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA      <48 cm               >=50 cm           0.2621766   0.1503722   0.4571094
Birth       ki1135781-COHORTS         GUATEMALA      [48-50) cm           >=50 cm           0.5623448   0.4182394   0.7561020
Birth       ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           0.6849302   0.6019884   0.7792997
Birth       ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           0.7949850   0.7031003   0.8988776
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           0.5136247   0.4074577   0.6474547
Birth       ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           0.4922907   0.4048699   0.5985878
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           0.6864080   0.5828304   0.8083928
Birth       kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.7365209   0.6169770   0.8792274
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           0.2864861   0.1147222   0.7154175
Birth       kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           0.2061425   0.0588421   0.7221821
6 months    ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC             INDIA          <48 cm               >=50 cm           0.6687747   0.3481756   1.2845807
6 months    ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           0.7996219   0.4516949   1.4155467
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA          <48 cm               >=50 cm           1.2879837   0.8752691   1.8953050
6 months    ki1000304b-SAS-CompFeed   INDIA          [48-50) cm           >=50 cm           0.5761206   0.3420365   0.9704079
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.5635167   0.8193358   2.9836175
6 months    ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           2.4357852   1.4798739   4.0091589
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           1.2288236   0.9030722   1.6720783
6 months    ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           1.3721290   1.0264820   1.8341655
6 months    ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           1.7699432   1.4702267   2.1307590
6 months    ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           1.3078917   1.0737321   1.5931170
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           1.5658984   1.0694222   2.2928623
6 months    ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           1.5613643   1.0949730   2.2264096
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           1.2125754   1.0319873   1.4247646
6 months    kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.9746697   0.8049597   1.1801597
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           1.2312608   0.8065255   1.8796718
6 months    kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           1.0560606   0.6919494   1.6117711
24 months   ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC             INDIA          <48 cm               >=50 cm           1.1618182   0.4884231   2.7636315
24 months   ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           1.1318841   0.4961517   2.5821974
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH     <48 cm               >=50 cm           2.2041161   1.1503484   4.2231796
24 months   ki1017093b-PROVIDE        BANGLADESH     [48-50) cm           >=50 cm           1.5367489   0.7799812   3.0277617
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH     <48 cm               >=50 cm           1.7600000   0.8076459   3.8353442
24 months   ki1017093c-NIH-Crypto     BANGLADESH     [48-50) cm           >=50 cm           1.2903226   0.5633055   2.9556475
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.7312925   1.1297464   2.6531387
24 months   ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           1.5055703   1.0139216   2.2356185
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           0.7653333   0.4019584   1.4572033
24 months   ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           0.9333333   0.4738906   1.8382115
24 months   ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           2.5365845   1.9186646   3.3535102
24 months   ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           1.5300494   1.1326304   2.0669155
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           2.3935834   1.6005285   3.5795934
24 months   ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           1.6076672   1.0751891   2.4038503
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           1.3255146   1.1590829   1.5158442
24 months   kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.9582833   0.8200436   1.1198269
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           1.3153652   1.0961723   1.5783882
24 months   kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           0.9459781   0.7583668   1.1800023


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                -0.1718770   -0.3225751   -0.0211789
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                -0.0606673   -0.1448580    0.0235233
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                -0.2202039   -0.2864688   -0.1539390
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                -0.0013023   -0.0084833    0.0058787
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.0930370   -0.1032833   -0.0827908
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                -0.0898276   -0.1189729   -0.0606823
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                -0.0471039   -0.0646926   -0.0295152
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                -0.0670769   -0.0843560   -0.0497978
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                -0.0376563   -0.0569012   -0.0184114
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                -0.1313990   -0.2751305    0.0123324
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                -0.0268738   -0.0736798    0.0199322
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                -0.0025265   -0.0446929    0.0396399
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.0197981    0.0077237    0.0318725
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                 0.0049351   -0.0006196    0.0104897
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.0387728    0.0248867    0.0526590
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.0145281    0.0036788    0.0253775
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.0099803   -0.0003591    0.0203197
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0058387   -0.0078143    0.0194918
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                 0.0065005   -0.0279054    0.0409065
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                 0.0437767    0.0064205    0.0811329
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                 0.0250486   -0.0134555    0.0635528
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.0254668    0.0074711    0.0434624
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.0344296   -0.1514299    0.0825707
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.0407880    0.0283092    0.0532667
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.0277133    0.0158337    0.0395928
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.0338614    0.0120570    0.0556659
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0235292   -0.0001009    0.0471593


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                -1.0355588   -2.1724857   -0.3060735
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                -0.8695652   -2.4787419   -0.0047523
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                -0.8209774   -1.1045342   -0.5756260
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                -0.0661838   -0.5002825    0.2423108
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.5833332   -0.6478336   -0.5213576
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                -0.3536962   -0.4731302   -0.2439453
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                -0.2661628   -0.3699082   -0.1702742
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                -0.4311662   -0.5445070   -0.3261426
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                -0.3927907   -0.6080150   -0.2063731
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                -2.4929316   -6.2863131   -0.6744506
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                -0.1972434   -0.5921885    0.0997348
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                -0.0203660   -0.4268983    0.2703427
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.3603789    0.1166465    0.5368613
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                 0.1539852   -0.0366687    0.3095760
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.3007103    0.1866139    0.3988019
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.2450717    0.0426641    0.4046846
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1178997   -0.0132303    0.2320592
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1097903   -0.1833823    0.3303320
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                 0.0845070   -0.4909232    0.4378467
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                 0.3892759   -0.0307082    0.6381285
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                 0.2861111   -0.3102198    0.6110291
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.2402441    0.0552550    0.3890108
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.1914286   -1.0558290    0.3095233
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.4489531    0.3005891    0.5658451
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.4059080    0.2141027    0.5509015
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1551138    0.0502331    0.2484127
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1168813   -0.0087057    0.2268324
