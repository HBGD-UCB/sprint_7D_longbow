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
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

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
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            0        0       1
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            1        0       1
Birth       ki1000109-EE               PAKISTAN                       <48 cm             0        1       1
Birth       ki1000109-EE               PAKISTAN                       <48 cm             1        0       1
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         0        0       1
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         1        0       1
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0      822   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1      124   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0     9454   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1      967   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     3927   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      415   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            0       31     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            1        5     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             0      436     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             1       24     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         0      180     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         1        7     683
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
6 months    ki1000109-EE               PAKISTAN                       >=50 cm            0       20      90
6 months    ki1000109-EE               PAKISTAN                       >=50 cm            1        2      90
6 months    ki1000109-EE               PAKISTAN                       <48 cm             0       40      90
6 months    ki1000109-EE               PAKISTAN                       <48 cm             1        3      90
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm         0       21      90
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm         1        4      90
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0     2244   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1      179   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0     9349   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1      933   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     3492   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      283   16480
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            0     1049    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            1       52    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             0     1815    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             1      112    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         0      946    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         1       50    4024
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0      958    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1      208    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0     3995    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1     1282    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     1625    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      347    8415
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            0      883    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            1      191    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             0     1489    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             1      448    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         0      802    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         1      161    3974


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/6546e14d-2bcb-4c0a-be6d-914da56fec85/bb3eb3d3-a2da-45b2-9451-59321fd71d2f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6546e14d-2bcb-4c0a-be6d-914da56fec85/bb3eb3d3-a2da-45b2-9451-59321fd71d2f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6546e14d-2bcb-4c0a-be6d-914da56fec85/bb3eb3d3-a2da-45b2-9451-59321fd71d2f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6546e14d-2bcb-4c0a-be6d-914da56fec85/bb3eb3d3-a2da-45b2-9451-59321fd71d2f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                0.2865662    0.0942445   0.4788879
Birth       ki0047075b-MAL-ED         BANGLADESH     <48 cm               NA                0.1384056    0.0773541   0.1994570
Birth       ki0047075b-MAL-ED         BANGLADESH     [48-50) cm           NA                0.1366657    0.0605092   0.2128222
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                0.1304348    0.0329223   0.2279473
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   <48 cm               NA                0.0458716    0.0065208   0.0852223
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   [48-50) cm           NA                0.0679612    0.0192621   0.1166602
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                0.4969215    0.4077342   0.5861089
Birth       ki1000108-IRC             INDIA          <48 cm               NA                0.1381116    0.0681484   0.2080747
Birth       ki1000108-IRC             INDIA          [48-50) cm           NA                0.1592966    0.0972915   0.2213017
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0209790    0.0104706   0.0314874
Birth       ki1101329-Keneba          GAMBIA         <48 cm               NA                0.0239044    0.0050006   0.0428082
Birth       ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.0153173    0.0040536   0.0265810
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.2537491    0.2402389   0.2672594
Birth       ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.0972775    0.0875861   0.1069689
Birth       ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.1332984    0.1240879   0.1425089
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                0.3481137    0.3011595   0.3950678
Birth       ki1135781-COHORTS         GUATEMALA      <48 cm               NA                0.0919853    0.0428410   0.1411296
Birth       ki1135781-COHORTS         GUATEMALA      [48-50) cm           NA                0.1981659    0.1465769   0.2497549
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                0.2204717    0.1986795   0.2422639
Birth       ki1135781-COHORTS         INDIA          <48 cm               NA                0.1535659    0.1388166   0.1683152
Birth       ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.1773743    0.1619461   0.1928025
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.2246056    0.2001434   0.2490678
Birth       ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.1178760    0.0930956   0.1426564
Birth       ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.1102700    0.0920258   0.1285142
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.1328695    0.1105696   0.1551694
Birth       kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.0920459    0.0858377   0.0982541
Birth       kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0979857    0.0880204   0.1079509
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.1388889   -0.0232300   0.3010078
Birth       kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.0521739    0.0314379   0.0729099
Birth       kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0374332    0.0020896   0.0727768
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                0.1602329    0.0987154   0.2217503
6 months    ki1000108-IRC             INDIA          <48 cm               NA                0.1081869    0.0487588   0.1676150
6 months    ki1000108-IRC             INDIA          [48-50) cm           NA                0.1277768    0.0708234   0.1847302
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                0.1020626    0.0636422   0.1404830
6 months    ki1000304b-SAS-CompFeed   INDIA          <48 cm               NA                0.1571129    0.1279289   0.1862969
6 months    ki1000304b-SAS-CompFeed   INDIA          [48-50) cm           NA                0.0710854    0.0360939   0.1060770
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0353604    0.0213694   0.0493513
6 months    ki1101329-Keneba          GAMBIA         <48 cm               NA                0.0540754    0.0253262   0.0828246
6 months    ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.0874817    0.0604329   0.1145305
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.0265515    0.0200587   0.0330444
6 months    ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.0330039    0.0260506   0.0399573
6 months    ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.0362830    0.0297523   0.0428138
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                0.0878951    0.0724251   0.1033652
6 months    ki1135781-COHORTS         INDIA          <48 cm               NA                0.1615511    0.1470775   0.1760246
6 months    ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.1179840    0.1045205   0.1314476
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.0436850    0.0308290   0.0565411
6 months    ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.0679654    0.0491999   0.0867310
6 months    ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.0689123    0.0534297   0.0843948
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.0741367    0.0620227   0.0862506
6 months    kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.0913098    0.0850435   0.0975760
6 months    kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0721450    0.0634529   0.0808372
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.0466891    0.0315010   0.0618773
6 months    kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.0581765    0.0415371   0.0748158
6 months    kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0503917    0.0347087   0.0660746
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                0.0704225    0.0282859   0.1125592
24 months   ki1000108-IRC             INDIA          <48 cm               NA                0.0818182    0.0305322   0.1331041
24 months   ki1000108-IRC             INDIA          [48-50) cm           NA                0.0797101    0.0344636   0.1249567
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                0.0719351    0.0293332   0.1145370
24 months   ki1017093b-PROVIDE        BANGLADESH     <48 cm               NA                0.1502357    0.1010809   0.1993904
24 months   ki1017093b-PROVIDE        BANGLADESH     [48-50) cm           NA                0.1044849    0.0647079   0.1442620
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                0.0625000    0.0205249   0.1044751
24 months   ki1017093c-NIH-Crypto     BANGLADESH     <48 cm               NA                0.1100000    0.0665942   0.1534058
24 months   ki1017093c-NIH-Crypto     BANGLADESH     [48-50) cm           NA                0.0806452    0.0414759   0.1198144
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0815721    0.0582483   0.1048959
24 months   ki1101329-Keneba          GAMBIA         <48 cm               NA                0.1428533    0.0936082   0.1920984
24 months   ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.1234945    0.0882654   0.1587237
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.2142857    0.0900422   0.3385292
24 months   ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.1640000    0.1180459   0.2099541
24 months   ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.2000000    0.1297940   0.2702060
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                0.0481485    0.0350342   0.0612628
24 months   ki1135781-COHORTS         INDIA          <48 cm               NA                0.1286175    0.1137336   0.1435013
24 months   ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.0766865    0.0641053   0.0892678
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.0433208    0.0298939   0.0567477
24 months   ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.1058388    0.0815665   0.1301112
24 months   ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.0683692    0.0522588   0.0844795
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.1772721    0.1522875   0.2022567
24 months   kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.2443089    0.2312077   0.2574102
24 months   kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.1735795    0.1557961   0.1913628
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.1775604    0.1494179   0.2057029
24 months   kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.2331486    0.2108536   0.2554436
24 months   kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.1665088    0.1391428   0.1938748


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
6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0846481   0.0797900   0.0895061
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
Birth       ki0047075b-MAL-ED         BANGLADESH     <48 cm               >=50 cm           0.4829794   0.2158113   1.0808940
Birth       ki0047075b-MAL-ED         BANGLADESH     [48-50) cm           >=50 cm           0.4769081   0.1996270   1.1393316
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   <48 cm               >=50 cm           0.3516820   0.1127118   1.0973137
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   [48-50) cm           >=50 cm           0.5210356   0.1849829   1.4675846
Birth       ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC             INDIA          <48 cm               >=50 cm           0.2779344   0.1625781   0.4751409
Birth       ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           0.3205669   0.2083599   0.4932002
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.1394422   0.4468382   2.9055903
Birth       ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           0.7301240   0.2999046   1.7775020
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           0.3833609   0.3424328   0.4291808
Birth       ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           0.5253157   0.4815051   0.5731125
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA      <48 cm               >=50 cm           0.2642393   0.1522062   0.4587354
Birth       ki1135781-COHORTS         GUATEMALA      [48-50) cm           >=50 cm           0.5692564   0.4247568   0.7629140
Birth       ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           0.6965336   0.6069685   0.7993151
Birth       ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           0.8045220   0.7053493   0.9176386
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           0.5248133   0.4143335   0.6647518
Birth       ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           0.4909496   0.4028699   0.5982861
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           0.6927539   0.5795892   0.8280140
Birth       kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.7374578   0.6095800   0.8921619
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           0.3756522   0.1094653   1.2891256
Birth       kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           0.2695187   0.0599227   1.2122333
6 months    ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC             INDIA          <48 cm               >=50 cm           0.6751857   0.3452404   1.3204585
6 months    ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           0.7974442   0.4423225   1.4376780
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA          <48 cm               >=50 cm           1.5393780   0.9456514   2.5058756
6 months    ki1000304b-SAS-CompFeed   INDIA          [48-50) cm           >=50 cm           0.6964887   0.3715238   1.3056942
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.5292658   0.7883897   2.9663678
6 months    ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           2.4740050   1.4972308   4.0880142
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           1.2430151   0.9000474   1.7166722
6 months    ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           1.3665152   1.0086078   1.8514271
6 months    ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           1.8379975   1.5086219   2.2392852
6 months    ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           1.3423271   1.0884157   1.6554723
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           1.5558054   1.0396544   2.3282067
6 months    ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           1.5774792   1.0898298   2.2833298
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           1.2316411   1.0391074   1.4598488
6 months    kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.9731358   0.7937612   1.1930455
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           1.2460385   0.8064442   1.9252564
6 months    kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           1.0793017   0.7005029   1.6629370
24 months   ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC             INDIA          <48 cm               >=50 cm           1.1618182   0.4884231   2.7636315
24 months   ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           1.1318841   0.4961517   2.5821974
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH     <48 cm               >=50 cm           2.0884888   1.0622339   4.1062383
24 months   ki1017093b-PROVIDE        BANGLADESH     [48-50) cm           >=50 cm           1.4524889   0.7168258   2.9431475
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH     <48 cm               >=50 cm           1.7600000   0.8076459   3.8353442
24 months   ki1017093c-NIH-Crypto     BANGLADESH     [48-50) cm           >=50 cm           1.2903226   0.5633055   2.9556475
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.7512517   1.1194305   2.7396809
24 months   ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           1.5139306   1.0110973   2.2668302
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           0.7653333   0.4019584   1.4572033
24 months   ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           0.9333333   0.4738906   1.8382115
24 months   ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           2.6712671   1.9874486   3.5903660
24 months   ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           1.5927093   1.1590861   2.1885544
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           2.4431397   1.6618341   3.5917732
24 months   ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           1.5782060   1.0692542   2.3294128
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           1.3781577   1.1825017   1.6061869
24 months   kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.9791698   0.8200174   1.1692111
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           1.3130664   1.0889946   1.5832433
24 months   kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           0.9377586   0.7467258   1.1776627


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                -0.1205911   -0.2978710    0.0566889
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                -0.0606673   -0.1448580    0.0235233
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                -0.2287000   -0.2970856   -0.1603143
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                -0.0013023   -0.0084833    0.0058787
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.0942570   -0.1048102   -0.0837039
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                -0.0941454   -0.1238020   -0.0644888
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                -0.0434977   -0.0623718   -0.0246235
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                -0.0690347   -0.0867913   -0.0512781
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                -0.0370009   -0.0581251   -0.0158767
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                -0.0861803   -0.2405764    0.0682159
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                -0.0239861   -0.0712492    0.0232770
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                 0.0219919   -0.0257415    0.0697253
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.0195765    0.0074040    0.0317490
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                 0.0054974   -0.0001976    0.0111924
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.0410423    0.0265616    0.0555231
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.0155962    0.0045440    0.0266483
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.0105114   -0.0003784    0.0214012
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0064918   -0.0072986    0.0202822
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                 0.0065005   -0.0279054    0.0409065
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                 0.0405216    0.0004498    0.0805935
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                 0.0250486   -0.0134555    0.0635528
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.0244316    0.0060035    0.0428597
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.0344296   -0.1514299    0.0825707
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.0427028    0.0299369    0.0554687
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.0249539    0.0128137    0.0370942
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.0410286    0.0167965    0.0652606
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0237481   -0.0006227    0.0481189


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                -0.7265612   -2.1652786    0.0582145
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                -0.8695652   -2.4787419   -0.0047523
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                -0.8526532   -1.1468698   -0.5987573
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                -0.0661838   -0.5002825    0.2423108
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.5909825   -0.6571179   -0.5274865
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                -0.3706975   -0.4924868   -0.2588464
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                -0.2457856   -0.3568882   -0.1437801
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                -0.4437509   -0.5597383   -0.3363888
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                -0.3859543   -0.6232588   -0.1833415
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                -1.6350309   -6.5555927    0.0810267
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                -0.1760488   -0.5762082    0.1225202
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                 0.1772760   -0.2816767    0.4718834
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.3563459    0.1101852    0.5344081
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                 0.1715319   -0.0252858    0.3305677
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.3183120    0.1980807    0.4205170
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.2630879    0.0549493    0.4253858
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1241777   -0.0149824    0.2442581
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1220698   -0.1749504    0.3440050
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                 0.0845070   -0.4909232    0.4378467
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                 0.3603310   -0.1014085    0.6284971
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                 0.2861111   -0.3102198    0.6110291
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.2304788    0.0398018    0.3832910
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.1914286   -1.0558290    0.3095233
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.4700299    0.3162568    0.5892197
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.3654926    0.1692940    0.5153524
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1879452    0.0698991    0.2910092
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1179687   -0.0119422    0.2312019
