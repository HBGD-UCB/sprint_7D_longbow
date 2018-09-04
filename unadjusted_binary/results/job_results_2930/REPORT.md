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

**Outcome Variable:** ever_stunted

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

agecat                       studyid                    country                        birthlen      ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       23     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        6     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0       33     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1       64     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       45     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1       40     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       33     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        1     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       38     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1       21     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       73     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        4     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       21     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        4     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          <48 cm                   0       28     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          <48 cm                   1       47     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       39     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               1       35     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       37     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        1     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       30     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   1       21     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       48     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1       18     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm                  0       21     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm                  1       13     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm                   0       31     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm                   1       78     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm               0       58     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm               1       54     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       30     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1       17     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       35     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1       49     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       53     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1       50     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0        7     108
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        8     108
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0        7     108
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1       33     108
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       12     108
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1       41     108
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0        4      85
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1       11      85
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0        2      85
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       28      85
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0        5      85
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1       35      85
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm                  0       70     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm                  1       72     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm                   0       19     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm                   1       46     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm               0       52     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm               1       86     345
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >=50 cm                  0        8     142
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >=50 cm                  1       36     142
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       <48 cm                   0        2     142
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       <48 cm                   1       42     142
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       [48-50) cm               0       10     142
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       [48-50) cm               1       44     142
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        2      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        5      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       <48 cm                   0        0      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       <48 cm                   1        1      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        3      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        5      16
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      129    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       83    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      124    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1      279    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      216    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1      249    1080
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       24     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        9     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       23     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       43     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       34     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       49     182
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      140     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1       29     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0       71     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1      111     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      185     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1       98     634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      149     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1       19     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0       75     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1      112     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      172     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1      126     653
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm                  0      441    1469
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm                  1      323    1469
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         <48 cm                   0       60    1469
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         <48 cm                   1      150    1469
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         [48-50) cm               0      190    1469
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         [48-50) cm               1      305    1469
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        2       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     <48 cm                   0        3       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        2       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0       7
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm                  0       47     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm                  1       16     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         <48 cm                   0        6     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         <48 cm                   1        5     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         [48-50) cm               0       22     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         [48-50) cm               1       14     110
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        0       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        1       2
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >=50 cm                  0       14      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >=50 cm                  1        1      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           <48 cm                   0        0      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           <48 cm                   1        1      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           [48-50) cm               0        0      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           [48-50) cm               1        1      17
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm                  0    13303   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm                  1     1973   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        <48 cm                   0       53   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        <48 cm                   1       84   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        [48-50) cm               0      711   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        [48-50) cm               1      618   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3196   12480
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1      926   12480
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     1688   12480
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1     1330   12480
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     3527   12480
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1     1813   12480
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      174     802
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1      263     802
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      <48 cm                   0       13     802
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      <48 cm                   1      100     802
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0       47     802
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1      205     802
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm                  0     1267    5848
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm                  1      159    5848
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          <48 cm                   0     1082    5848
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          <48 cm                   1      900    5848
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          [48-50) cm               0     1822    5848
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          [48-50) cm               1      618    5848
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0      538    2863
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1      591    2863
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0       88    2863
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1      487    2863
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0      327    2863
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1      832    2863
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     6188   36310
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1      790   36310
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0    11370   36310
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     6626   36310
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     9512   36310
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1     1824   36310
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0     1474    6360
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1      696    6360
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      990    6360
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1     1232    6360
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0     1178    6360
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1      790    6360
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       28     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        1     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0       63     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1       34     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       76     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1        9     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       34     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        0     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       43     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1       16     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       75     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        2     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       24     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        1     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          <48 cm                   0       46     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          <48 cm                   1       29     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       66     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        8     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       38     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       41     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   1       10     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       66     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >=50 cm                  0       31     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >=50 cm                  1        3     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           <48 cm                   0       51     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           <48 cm                   1       58     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           [48-50) cm               0       85     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           [48-50) cm               1       27     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       41     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        6     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       51     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1       33     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       78     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1       25     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       14     108
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        1     108
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       24     108
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1       16     108
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       44     108
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        9     108
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0        7      84
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        7      84
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       18      84
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       12      84
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       23      84
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1       17      84
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm                  0      109     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm                  1       33     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm                   0       29     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm                   1       36     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm               0       87     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm               1       51     345
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm                  0       28     142
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm                  1       16     142
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm                   0        6     142
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm                   1       38     142
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm               0       18     142
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm               1       36     142
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        3      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        4      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       <48 cm                   0        0      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       <48 cm                   1        1      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        3      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        5      16
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      195    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       16    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      276    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1      127    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      398    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1       67    1079
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       30     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        3     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       38     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       28     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       71     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       12     182
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      165     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1        4     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0      111     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1       71     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      257     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1       26     634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      167     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1        1     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0      115     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1       72     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      247     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1       51     653
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm                  0      646    1469
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm                  1      118    1469
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         <48 cm                   0      103    1469
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         <48 cm                   1      107    1469
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         [48-50) cm               0      345    1469
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         [48-50) cm               1      150    1469
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        2       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     <48 cm                   0        3       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        2       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0       7
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         >=50 cm                  0       59     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         >=50 cm                  1        4     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         <48 cm                   0       10     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         <48 cm                   1        1     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         [48-50) cm               0       31     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         [48-50) cm               1        5     110
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        1       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        0       2
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           >=50 cm                  0       15      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           >=50 cm                  1        0      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           <48 cm                   0        1      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           <48 cm                   1        0      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           [48-50) cm               0        0      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           [48-50) cm               1        1      17
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm                  0    14317   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm                  1      957   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        <48 cm                   0       60   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        <48 cm                   1       77   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        [48-50) cm               0      835   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        [48-50) cm               1      494   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3706   12476
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1      416   12476
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     2247   12476
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      768   12476
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     4381   12476
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      958   12476
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      395     802
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1       42     802
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      <48 cm                   0       42     802
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      <48 cm                   1       71     802
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0      158     802
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1       94     802
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm                  0     1407    5848
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm                  1       19    5848
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          <48 cm                   0     1654    5848
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          <48 cm                   1      328    5848
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          [48-50) cm               0     2325    5848
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          [48-50) cm               1      115    5848
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0     1049    2863
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1       80    2863
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0      342    2863
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1      233    2863
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0      930    2863
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1      229    2863
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     6688   36308
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1      288   36308
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0    14116   36308
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     3880   36308
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0    10706   36308
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      630   36308
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0     2054    6360
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1      116    6360
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0     1878    6360
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      344    6360
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0     1802    6360
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1      166    6360
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       22     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        5     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0       26     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1       30     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       42     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1       31     156
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       29     138
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        1     138
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       32     138
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        5     138
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       69     138
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        2     138
6-24 months                  ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       20     127
6-24 months                  ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        3     127
6-24 months                  ki0047075b-MAL-ED          INDIA                          <48 cm                   0       26     127
6-24 months                  ki0047075b-MAL-ED          INDIA                          <48 cm                   1       18     127
6-24 months                  ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       33     127
6-24 months                  ki0047075b-MAL-ED          INDIA                          [48-50) cm               1       27     127
6-24 months                  ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       37     143
6-24 months                  ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        1     143
6-24 months                  ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       28     143
6-24 months                  ki0047075b-MAL-ED          NEPAL                          <48 cm                   1       11     143
6-24 months                  ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       48     143
6-24 months                  ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1       18     143
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm                  0       18     144
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm                  1       10     144
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm                   0       25     144
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm                   1       20     144
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm               0       44     144
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm               1       27     144
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       23     137
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1       11     137
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       21     137
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1       16     137
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       41     137
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1       25     137
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0        6      75
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        7      75
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0        4      75
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1       17      75
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0        9      75
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1       32      75
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0        4      49
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        4      49
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0        2      49
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       16      49
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0        5      49
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1       18      49
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm                  0       70     225
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm                  1       39     225
6-24 months                  ki1000108-IRC              INDIA                          <48 cm                   0       19     225
6-24 months                  ki1000108-IRC              INDIA                          <48 cm                   1       10     225
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm               0       52     225
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm               1       35     225
6-24 months                  ki1000109-EE               PAKISTAN                       >=50 cm                  0        6      48
6-24 months                  ki1000109-EE               PAKISTAN                       >=50 cm                  1       20      48
6-24 months                  ki1000109-EE               PAKISTAN                       <48 cm                   0        2      48
6-24 months                  ki1000109-EE               PAKISTAN                       <48 cm                   1        4      48
6-24 months                  ki1000109-EE               PAKISTAN                       [48-50) cm               0        8      48
6-24 months                  ki1000109-EE               PAKISTAN                       [48-50) cm               1        8      48
6-24 months                  ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        1       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        1       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       <48 cm                   0        0       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        1       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        0       3
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      118     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       67     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0       98     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1      152     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      184     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1      182     801
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       16     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        6     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0        8     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       15     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       24     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       37     106
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      121     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1       25     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0       51     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1       40     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      148     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1       72     457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      146     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1       18     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0       67     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1       40     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      160     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1       75     506
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm                  0      423    1056
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm                  1      205    1056
6-24 months                  ki1101329-Keneba           GAMBIA                         <48 cm                   0       53    1056
6-24 months                  ki1101329-Keneba           GAMBIA                         <48 cm                   1       43    1056
6-24 months                  ki1101329-Keneba           GAMBIA                         [48-50) cm               0      177    1056
6-24 months                  ki1101329-Keneba           GAMBIA                         [48-50) cm               1      155    1056
6-24 months                  ki1114097-CMIN             BRAZIL                         >=50 cm                  0       47     100
6-24 months                  ki1114097-CMIN             BRAZIL                         >=50 cm                  1       12     100
6-24 months                  ki1114097-CMIN             BRAZIL                         <48 cm                   0        6     100
6-24 months                  ki1114097-CMIN             BRAZIL                         <48 cm                   1        4     100
6-24 months                  ki1114097-CMIN             BRAZIL                         [48-50) cm               0       22     100
6-24 months                  ki1114097-CMIN             BRAZIL                         [48-50) cm               1        9     100
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        0       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        1       2
6-24 months                  ki1114097-CMIN             PERU                           >=50 cm                  0       11      13
6-24 months                  ki1114097-CMIN             PERU                           >=50 cm                  1        1      13
6-24 months                  ki1114097-CMIN             PERU                           <48 cm                   0        0      13
6-24 months                  ki1114097-CMIN             PERU                           <48 cm                   1        1      13
6-24 months                  ki1114097-CMIN             PERU                           [48-50) cm               0        0      13
6-24 months                  ki1114097-CMIN             PERU                           [48-50) cm               1        0      13
6-24 months                  ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
6-24 months                  ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
6-24 months                  ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
6-24 months                  ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
6-24 months                  ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
6-24 months                  ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm                  0    13063   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm                  1     1018   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        <48 cm                   0       47   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        <48 cm                   1        7   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        [48-50) cm               0      692   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        [48-50) cm               1      124   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     2253    7860
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1      510    7860
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     1141    7860
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      563    7860
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     2538    7860
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      855    7860
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      107     499
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1      221     499
6-24 months                  ki1135781-COHORTS          GUATEMALA                      <48 cm                   0        6     499
6-24 months                  ki1135781-COHORTS          GUATEMALA                      <48 cm                   1       29     499
6-24 months                  ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0       25     499
6-24 months                  ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1      111     499
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm                  0     1184    5016
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm                  1      140    5016
6-24 months                  ki1135781-COHORTS          INDIA                          <48 cm                   0      950    5016
6-24 months                  ki1135781-COHORTS          INDIA                          <48 cm                   1      573    5016
6-24 months                  ki1135781-COHORTS          INDIA                          [48-50) cm               0     1666    5016
6-24 months                  ki1135781-COHORTS          INDIA                          [48-50) cm               1      503    5016
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0      448    2116
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1      511    2116
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0       60    2116
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1      254    2116
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0      240    2116
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1      603    2116
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     3878   20616
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1      502   20616
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     6374   20616
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     2758   20616
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     5910   20616
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1     1194   20616
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0     1460    5726
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1      580    5726
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      990    5726
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      894    5726
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0     1178    5726
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1      624    5726


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6af67cca-207a-4f20-9d7e-72bc6740bde3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6af67cca-207a-4f20-9d7e-72bc6740bde3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6af67cca-207a-4f20-9d7e-72bc6740bde3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6af67cca-207a-4f20-9d7e-72bc6740bde3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.2068966    0.0591143   0.3546788
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.6597938    0.5652857   0.7543019
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.4705882    0.3642260   0.5769505
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.3823529    0.2186848   0.5460211
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.7155963    0.6307389   0.8004537
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.4821429    0.3894204   0.5748654
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.3617021    0.2240394   0.4993649
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.5833333    0.4776781   0.6889886
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.4854369    0.3887105   0.5821633
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.5333333    0.2796890   0.7869777
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8250000    0.7067002   0.9432998
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.7735849    0.6603874   0.8867824
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              NA                0.5070423    0.4246927   0.5893918
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm               NA                0.7076923    0.5969626   0.8184220
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm           NA                0.6231884    0.5422209   0.7041559
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.3915094    0.3270302   0.4559886
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.6923077    0.6344443   0.7501711
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.5354839    0.4700695   0.6008983
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.2727273    0.1203569   0.4250976
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.6515152    0.5362424   0.7667879
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.5903614    0.4842738   0.6964491
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.1715976    0.1147092   0.2284860
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.6098901    0.5389692   0.6808110
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.3462898    0.2908131   0.4017664
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.1130952    0.0651675   0.1610230
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.5989305    0.5286300   0.6692309
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.4228188    0.3666874   0.4789502
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.4227749    0.3877339   0.4578159
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.7142857    0.6531650   0.7754064
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.6161616    0.5733053   0.6590179
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              NA                0.2539683    0.1459917   0.3619448
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         <48 cm               NA                0.4545455    0.1589466   0.7501443
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                0.3888889    0.2289136   0.5488641
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.1291568    0.1101303   0.1481834
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.6131387    0.4862845   0.7399929
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.4650113    0.4090901   0.5209325
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.2246482    0.2119070   0.2373895
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.4406892    0.4229759   0.4584025
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.3395131    0.3268116   0.3522146
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.6018307    0.5559056   0.6477557
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.8849558    0.8260886   0.9438229
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.8134921    0.7653700   0.8616141
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.1115007    0.0951629   0.1278385
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          <48 cm               NA                0.4540868    0.4321656   0.4760080
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.2532787    0.2360215   0.2705358
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.5234721    0.4943336   0.5526106
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.8469565    0.8175240   0.8763891
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.7178602    0.6919462   0.7437742
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.1132130    0.1019199   0.1245060
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.3681929    0.3568389   0.3795470
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.1609033    0.1501996   0.1716070
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.3207373    0.2872393   0.3542354
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.5544554    0.5180687   0.5908422
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.4014228    0.3653232   0.4375224
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.1276596    0.0320506   0.2232686
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.3928571    0.2881922   0.4975221
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.2427184    0.1597449   0.3256920
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.5000000    0.2365157   0.7634843
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.4000000    0.2236426   0.5763574
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.4250000    0.2708842   0.5791158
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              NA                0.2323944    0.1628253   0.3019634
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm               NA                0.5538462    0.4328257   0.6748666
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm           NA                0.3695652    0.2889152   0.4502152
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm              NA                0.3636364    0.1611931   0.5660796
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm               NA                0.8636364    0.7192149   1.0080578
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                0.6666667    0.4875895   0.8457438
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.0758294    0.0510899   0.1005689
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.3151365    0.2641340   0.3661390
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.1440860    0.1172759   0.1708961
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.1544503    0.1288165   0.1800841
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.5095238    0.4418879   0.5771597
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.3030303    0.2625314   0.3435292
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.0626555    0.0504687   0.0748423
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.5620438    0.4260437   0.6980439
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.3717081    0.3148161   0.4286000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.1009219    0.0917258   0.1101180
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.2547264    0.2391733   0.2702795
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.1794344    0.1691413   0.1897274
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.0961098    0.0684583   0.1237614
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.6283186    0.5391616   0.7174755
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.3730159    0.3132696   0.4327621
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.0133240    0.0073724   0.0192755
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          <48 cm               NA                0.1654894    0.1491275   0.1818513
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.0471311    0.0387218   0.0555405
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.0708592    0.0558894   0.0858290
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.4052174    0.3650833   0.4453515
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.1975841    0.1746566   0.2205117
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.0412844    0.0343211   0.0482477
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.2156035    0.2062376   0.2249693
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.0555752    0.0490297   0.0621206
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.0534562    0.0356010   0.0713115
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.1548155    0.1285044   0.1811265
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.0843496    0.0643072   0.1043920
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.1851852    0.0381927   0.3321777
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.5357143    0.4046725   0.6667561
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.4246575    0.3109038   0.5384113
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.3571429    0.1790442   0.5352415
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.4444444    0.2987552   0.5901337
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.3802817    0.2669681   0.4935953
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.3235294    0.1657026   0.4813562
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.4324324    0.2722164   0.5926485
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.3787879    0.2613292   0.4962465
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              NA                0.3577982    0.2676085   0.4479879
6-24 months                  ki1000108-IRC              INDIA                          <48 cm               NA                0.3448276    0.1714491   0.5182060
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm           NA                0.4022989    0.2990293   0.5055684
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.3621622    0.2964771   0.4278473
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.6080000    0.5611133   0.6548867
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.4972678    0.4478284   0.5467071
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.2727273    0.0857418   0.4597128
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.6521739    0.4566026   0.8477453
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.6065574    0.4833836   0.7297311
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.1712329    0.1100602   0.2324055
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.4395604    0.3374720   0.5416489
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.3272727    0.2652020   0.3893435
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.1097561    0.0618683   0.1576439
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.3738318    0.2820684   0.4655952
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.3191489    0.2594912   0.3788066
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.3264331    0.2897420   0.3631243
6-24 months                  ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.4479167    0.3483947   0.5474387
6-24 months                  ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.4668675    0.4131768   0.5205582
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.0722960    0.0585717   0.0860203
6-24 months                  ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.1296296   -0.0004819   0.2597412
6-24 months                  ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.1519608    0.1079464   0.1959751
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.1845820    0.1701153   0.1990487
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.3303991    0.3080650   0.3527332
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.2519894    0.2373801   0.2665987
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.6737805    0.6229925   0.7245685
6-24 months                  ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.8285714    0.7035869   0.9535560
6-24 months                  ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.8161765    0.7510126   0.8813403
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.1057402    0.0891749   0.1223055
6-24 months                  ki1135781-COHORTS          INDIA                          <48 cm               NA                0.3762311    0.3518990   0.4005633
6-24 months                  ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.2319041    0.2141408   0.2496674
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.5328467    0.5012623   0.5644311
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.8089172    0.7654213   0.8524131
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.7153025    0.6848324   0.7457726
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.1146119    0.0998940   0.1293298
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.3020149    0.2871964   0.3168334
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.1680743    0.1550128   0.1811359
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.2843137    0.2514352   0.3171922
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.4745223    0.4369346   0.5121099
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.3462819    0.3082664   0.3842974


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5213270   0.4537634   0.5888907
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5686275   0.5077199   0.6295350
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4957265   0.4315281   0.5599249
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7592593   0.6782516   0.8402669
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5913043   0.5393557   0.6432530
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5657407   0.5074689   0.6240126
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5549451   0.4825447   0.6273454
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5296120   0.5040796   0.5551444
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         NA                   NA                0.3181818   0.2307425   0.4056211
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3260417   0.3178171   0.3342662
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7082294   0.6767491   0.7397098
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2867647   0.2751726   0.2983568
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6671324   0.6498678   0.6843969
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2544754   0.2466027   0.2623480
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4273585   0.4069266   0.4477904
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2735043   0.2162683   0.3307402
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4285714   0.3221077   0.5350351
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3478261   0.2974955   0.3981566
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.6338028   0.5209445   0.7466612
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1946247   0.1703263   0.2189230
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2552757   0.2329715   0.2775799
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1716896   0.1650721   0.1783072
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2581047   0.2278007   0.2884088
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0790014   0.0720874   0.0859154
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1893119   0.1749594   0.2036645
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1321472   0.1264309   0.1378635
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0984277   0.0855770   0.1112784
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4230769   0.3453000   0.5008539
6-24 months                  ki0047075b-MAL-ED          PERU                           NA                   NA                0.3958333   0.3156813   0.4759854
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3795620   0.2980035   0.4611205
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3733333   0.3099915   0.4366752
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5006242   0.4555100   0.5457384
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5471698   0.4519599   0.6423797
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3816288   0.3523153   0.4109422
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2452926   0.2357801   0.2548051
6-24 months                  ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7234469   0.6841620   0.7627318
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2424242   0.2305635   0.2542850
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6465028   0.6261291   0.6668766
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2160458   0.2066156   0.2254760
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3663989   0.3454886   0.3873091


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            3.1890034   1.5391141    6.607530
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            2.2745098   1.0752756    4.811227
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            1.8715596   1.2003283    2.918148
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            1.2609890   0.7886954    2.016106
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            1.6127451   1.0580640    2.458213
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            1.3420902   0.8733902    2.062316
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            1.5468750   0.9412997    2.542041
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            1.4504717   0.8818823    2.385657
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.3957265   1.1139313    1.748808
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.2290660   0.9982707    1.513220
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            1.7683040   1.4860905    2.104111
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            1.3677419   1.1668213    1.603260
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            2.3888889   1.3294836    4.292486
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            2.1646586   1.2036793    3.892854
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            3.5541872   2.5012776    5.050318
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            2.0180334   1.3964350    2.916325
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            5.2958064   3.4115897    8.220673
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            3.7386083   2.3979741    5.828750
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            1.6895179   1.4997738    1.903267
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            1.4574225   1.3079603    1.623964
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            1.7897727   0.8229379    3.892501
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm            1.5312500   0.8474642    2.766756
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            4.7472410   3.7952167    5.938079
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            3.6003611   3.1766362    4.080606
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.9616856   1.8299506    2.102904
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.5113100   1.4120367    1.617563
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.4704398   1.3288706    1.627091
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            1.3516959   1.2272891    1.488714
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            4.0725016   3.4902856    4.751837
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            2.2715435   1.9326006    2.669931
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            1.6179592   1.5151958    1.727692
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            1.3713438   1.2833149    1.465411
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            3.2522155   2.9430464    3.593863
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            1.4212447   1.2652018    1.596533
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            1.7286901   1.5281417    1.955558
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.2515624   1.0898908    1.437216
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            3.0773810   1.3898085    6.814085
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            1.9012945   0.8346587    4.331016
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.8000000   0.4024331    1.590326
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.8500000   0.4483411    1.611496
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            2.3832168   1.6451447    3.452415
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.5902503   1.0979375    2.303315
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            2.3750000   1.3280421    4.247324
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            1.8333333   0.9880730    3.401683
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            4.1558623   2.8700466    6.017739
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            1.9001344   1.2622129    2.860461
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            3.2989508   2.6673381    4.080126
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            1.9619928   1.5854560    2.427955
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            8.9703834   6.8738697   11.706329
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            5.9325693   5.0020253    7.036225
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            2.5239954   2.2617906    2.816597
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.7779528   1.5964604    1.980078
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            6.5375050   4.7434193    9.010161
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            3.8811412   2.7922315    5.394702
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           12.4204153   7.8605063   19.625545
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            3.5373167   2.1866533    5.722265
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            5.7186304   4.5285585    7.221445
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            2.7884060   2.1911752    3.548419
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            5.2223946   4.3960730    6.204038
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            1.3461537   1.1115738    1.630238
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            2.8961172   1.9968272    4.200411
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.5779191   1.0464111    2.379398
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            2.8928571   1.2606772    6.638196
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            2.2931507   0.9922164    5.299792
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            1.2444444   0.6851770    2.260207
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            1.0647887   0.5956265    1.903500
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            1.3366093   0.7243812    2.466277
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            1.1707989   0.6568130    2.087002
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.9637489   0.5491580    1.691338
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.1243737   0.7846312    1.611223
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            1.6788060   1.3708885    2.055885
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            1.3730528   1.1468275    1.643904
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            2.3913043   1.1314648    5.053923
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            2.2240437   1.0879249    4.546610
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            2.5670330   1.6763923    3.930857
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            1.9112727   1.2754482    2.864063
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            3.4060228   2.0645753    5.619069
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            2.9078014   1.8089202    4.674230
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            1.3721545   1.0697028    1.760122
6-24 months                  ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            1.4302086   1.2177588    1.679722
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            1.7930401   0.6333665    5.076039
6-24 months                  ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            2.1019252   1.6162855    2.733483
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.7899855   1.6139879    1.985175
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.3651896   1.2383814    1.504983
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.2297350   1.0389082    1.455613
6-24 months                  ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            1.2113388   1.0853745    1.351922
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            3.5580715   3.0033663    4.215228
6-24 months                  ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            2.1931502   1.8421904    2.610972
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            1.5181049   1.4013456    1.644592
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            1.3424170   1.2479201    1.444069
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            2.6351100   2.3055806    3.011738
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            1.4664652   1.2644127    1.700806
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            1.6690094   1.4523997    1.917924
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.2179571   1.0356864    1.432306


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.3144305    0.1715979   0.4572630
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1862745    0.0334552   0.3390938
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1340244    0.0096875   0.2583612
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2259259   -0.0043494   0.4562013
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0842621    0.0218305   0.1466937
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.1742313    0.1117890   0.2366736
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2822178    0.1406576   0.4237780
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.2037967    0.1496313   0.2579621
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.2804729    0.2302601   0.3306857
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1068371    0.0822894   0.1313848
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              NA                 0.0642136   -0.0129213   0.1413485
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0306210    0.0236270   0.0376149
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1013934    0.0903144   0.1124725
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1063988    0.0780851   0.1347125
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.1752640    0.1587982   0.1917298
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1436603    0.1218089   0.1655117
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.1412624    0.1305578   0.1519669
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.1066212    0.0783105   0.1349319
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1458447    0.0523301   0.2393593
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0714286   -0.3114643   0.1686072
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1154317    0.0572174   0.1736460
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.2701665    0.1018745   0.4384584
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.1187953    0.0842199   0.1533706
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1008254    0.0791209   0.1225300
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0286229    0.0226251   0.0346207
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0707678    0.0622543   0.0792812
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1619949    0.1328454   0.1911444
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.0656774    0.0575564   0.0737983
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1184527    0.1025357   0.1343697
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.0908628    0.0835016   0.0982239
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0449715    0.0287156   0.0612273
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.2378917    0.0958468   0.3799367
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0386905   -0.1219590   0.1993400
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0560326   -0.0825219   0.1945871
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0155352   -0.0497737   0.0808441
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.1384621    0.0818485   0.1950756
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2744425    0.1026423   0.4462428
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1285483    0.0726964   0.1844002
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1530898    0.1053341   0.2008454
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0551957    0.0306130   0.0797784
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0045550    0.0017845   0.0073256
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0607106    0.0483561   0.0730652
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0496664    0.0226156   0.0767172
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.1366841    0.1202456   0.1531226
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1136561    0.0911076   0.1362046
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.1014339    0.0875717   0.1152962
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0820852    0.0542438   0.1099265


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.6031348    0.2114978   0.8002517
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.3275862   -0.0054384   0.5503053
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.2703595   -0.0304585   0.4833608
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2975610   -0.0904717   0.5475164
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1425021    0.0289060   0.2428100
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.3079702    0.1994068   0.4018121
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.5085509    0.1708856   0.7086985
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.5428870    0.3796706   0.6631591
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.7126413    0.5701799   0.8078847
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.2017271    0.1531494   0.2475183
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              NA                 0.2018141   -0.0792552   0.4096848
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.1916471    0.1446611   0.2360521
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3109831    0.2764693   0.3438505
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1502321    0.1075080   0.1909109
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.6111770    0.5536589   0.6612830
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.2153400    0.1808475   0.2483801
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.5551123    0.5126598   0.5938667
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2494888    0.1801491   0.3129640
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.5332447    0.0536809   0.7697811
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1666667   -0.8874089   0.2788467
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.3318662    0.1442262   0.4783636
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.4262626    0.0717902   0.6453662
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.6103814    0.4478537   0.7250681
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.3949668    0.3084983   0.4706229
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.3135779    0.2464071   0.3747615
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.4121842    0.3625797   0.4579285
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.6276324    0.5214209   0.7102723
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.8313449    0.7389717   0.8910289
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.6257015    0.5460729   0.6913615
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.6875877    0.6336391   0.7335920
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.4568985    0.2707528   0.5955291
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.5622896    0.0697324   0.7940480
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0977444   -0.4148997   0.4246481
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1476244   -0.3081327   0.4445945
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0416121   -0.1503296   0.2015267
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2765788    0.1562593   0.3797405
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.5015674    0.0595478   0.7358345
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.4288071    0.2154596   0.5841370
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.5824317    0.3769269   0.7201560
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1446318    0.0776715   0.2067309
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0592711    0.0229256   0.0942645
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.2475029    0.1959143   0.2957818
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0686525    0.0297578   0.1059879
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.5638218    0.4953098   0.6230331
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1758014    0.1392614   0.2107902
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.4695019    0.4033321   0.5283336
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2240322    0.1446065   0.2960830
