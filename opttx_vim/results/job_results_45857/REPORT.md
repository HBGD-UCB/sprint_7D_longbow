---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >=50 cm                  0        4      71
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >=50 cm                  1       18      71
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       <48 cm                   0        1      71
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       <48 cm                   1       21      71
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       [48-50) cm               0        5      71
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       [48-50) cm               1       22      71
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     3095   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1      395   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     5685   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     3313   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     4756   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      912   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0      737    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1      348    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      495    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      616    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0      589    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1      395    3180
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm                  0       14      71
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm                  1        8      71
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm                   0        3      71
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm                   1       19      71
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm               0        9      71
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm               1       18      71
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     3344   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1      144   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     7058   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     1940   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     5353   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      315   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0     1027    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1       58    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      939    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      172    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0      901    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1       83    3180
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
6-24 months                  ki1000109-EE               PAKISTAN                       >=50 cm                  0        3      24
6-24 months                  ki1000109-EE               PAKISTAN                       >=50 cm                  1       10      24
6-24 months                  ki1000109-EE               PAKISTAN                       <48 cm                   0        1      24
6-24 months                  ki1000109-EE               PAKISTAN                       <48 cm                   1        2      24
6-24 months                  ki1000109-EE               PAKISTAN                       [48-50) cm               0        4      24
6-24 months                  ki1000109-EE               PAKISTAN                       [48-50) cm               1        4      24
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     1940   10309
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1      251   10309
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     3187   10309
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     1379   10309
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     2955   10309
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      597   10309
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0      730    2863
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1      290    2863
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      495    2863
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      447    2863
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0      589    2863
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1      312    2863


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
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a3020b98-a582-4a8c-87ae-ad6dec547fa3/f11ab9fe-0836-46e9-8add-44e62978127f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a3020b98-a582-4a8c-87ae-ad6dec547fa3/f11ab9fe-0836-46e9-8add-44e62978127f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2142637   0.0534055   0.3751219
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              NA                0.3610981   0.1888225   0.5333737
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3931082   0.2530274   0.5331891
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.5585424   0.2641581   0.8529268
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5091676   0.4261261   0.5922091
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3810820   0.3189649   0.4431991
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2671665   0.1100403   0.4242926
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1716597   0.1139516   0.2293677
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1131779   0.0648882   0.1614675
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4119534   0.3771064   0.4468004
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         optimal              NA                0.2564952   0.1473506   0.3656397
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1316674   0.1126070   0.1507278
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2238051   0.2109807   0.2366295
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6007250   0.5546679   0.6467820
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.1054105   0.0894704   0.1213506
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5162851   0.4874375   0.5451328
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1147980   0.1033633   0.1262327
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3193435   0.2853240   0.3533630
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1296306   0.0316799   0.2275812
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5343698   0.3555943   0.7131452
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.2242352   0.1536262   0.2948442
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.0705705   0.0494800   0.0916611
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1501277   0.1245322   0.1757231
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0646722   0.0525049   0.0768396
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0995464   0.0903193   0.1087735
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.0889671   0.0615377   0.1163966
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0132408   0.0073129   0.0191687
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.0665482   0.0517887   0.0813076
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0403697   0.0333768   0.0473625
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0544320   0.0357587   0.0731053
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1954087   0.0369395   0.3538780
6-24 months                  ki0047075b-MAL-ED          PERU                           optimal              NA                0.4869055   0.3233265   0.6504845
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2499512   0.1186815   0.3812210
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.4627162   0.3009580   0.6244743
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3487996   0.2918249   0.4057743
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2835469   0.0841566   0.4829372
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1675874   0.1061719   0.2290030
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1103319   0.0622278   0.1584360
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3158039   0.2794696   0.3521383
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                0.0723403   0.0585987   0.0860819
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1868644   0.1722200   0.2015087
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6738221   0.6229648   0.7246794
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.1024638   0.0858898   0.1190378
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5263403   0.4950353   0.5576453
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1090593   0.0948477   0.1232708
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2914722   0.2576229   0.3253214


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5213270   0.4537634   0.5888907
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           observed             NA                0.5686275   0.5077199   0.6295350
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.4957265   0.4315281   0.5599249
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7592593   0.6782516   0.8402669
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5913043   0.5393557   0.6432530
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5657407   0.5074689   0.6240126
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5549451   0.4825447   0.6273454
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.5296120   0.5040796   0.5551444
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         observed             NA                0.3181818   0.2307425   0.4056211
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3260417   0.3178171   0.3342662
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7082294   0.6767491   0.7397098
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             NA                0.2867647   0.2751726   0.2983568
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6671324   0.6498678   0.6843969
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2544613   0.2465893   0.2623333
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4273585   0.4069266   0.4477904
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.2735043   0.2162683   0.3307402
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.4285714   0.3221077   0.5350351
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3478261   0.2974955   0.3981566
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.1946247   0.1703263   0.2189230
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2552757   0.2329715   0.2775799
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1716896   0.1650721   0.1783072
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2581047   0.2278007   0.2884088
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             NA                0.0790014   0.0720874   0.0859154
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.1893119   0.1749594   0.2036645
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1321472   0.1264309   0.1378635
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0984277   0.0855770   0.1112784
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4230769   0.3453000   0.5008539
6-24 months                  ki0047075b-MAL-ED          PERU                           observed             NA                0.3958333   0.3156813   0.4759854
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3795620   0.2980035   0.4611205
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3733333   0.3099915   0.4366752
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5006242   0.4555100   0.5457384
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5471698   0.4519599   0.6423797
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3816288   0.3523153   0.4109422
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2452926   0.2357801   0.2548051
6-24 months                  ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7234469   0.6841620   0.7627318
6-24 months                  ki1135781-COHORTS          INDIA                          observed             NA                0.2424242   0.2305635   0.2542850
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6465028   0.6261291   0.6668766
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2160248   0.2065944   0.2254552
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3663989   0.3454886   0.3873091


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           2.4331091   1.1811454   5.012101
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           observed             optimal           1.5747174   1.0032341   2.471741
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.2610433   0.9150029   1.737951
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3593583   0.8325248   2.219579
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             optimal           1.1613158   1.0250472   1.315700
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.4845643   1.2782302   1.724205
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           2.0771507   1.1964972   3.605988
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           2.1868523   1.6042757   2.980986
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           3.4774306   2.3183668   5.215967
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.2856114   1.2103261   1.365580
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         observed             optimal           1.2404983   0.9166353   1.678788
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             optimal           1.2134957   1.1526054   1.277603
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.4568106   1.3866782   1.530490
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1789579   1.1220885   1.238709
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             optimal           2.7204567   2.3590163   3.137276
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2921781   1.2375593   1.349208
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           2.2166006   2.0220258   2.429899
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.3382408   1.2223848   1.465078
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           2.1098749   1.0341657   4.304506
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.8020129   0.6148717   1.046112
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             optimal           1.5511665   1.1946536   2.014071
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           2.7578736   2.0470283   3.715565
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.7003909   1.4819188   1.951071
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             optimal           1.4113998   1.2967888   1.536140
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.7247200   1.5882724   1.872890
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             optimal           2.9011242   2.2134738   3.802404
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             optimal           5.9665117   3.8514642   9.243046
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           2.8447350   2.3230464   3.483580
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           3.2734278   2.7771556   3.858383
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.8082693   1.3433829   2.434033
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           2.1650871   1.0018838   4.678788
6-24 months                  ki0047075b-MAL-ED          PERU                           observed             optimal           0.8129572   0.5997819   1.101900
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.5185443   0.9774606   2.359151
6-24 months                  ki1000108-IRC              INDIA                          observed             optimal           0.8068301   0.5824864   1.117579
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.4352775   1.2374746   1.664698
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.9297331   1.0047893   3.706120
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.7888046   1.2912397   2.478101
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           2.3823197   1.5974994   3.552707
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             optimal           1.2084358   1.1188206   1.305229
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             optimal           1.0623549   1.0230129   1.103210
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.3126775   1.2289017   1.402164
6-24 months                  ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0736468   1.0305334   1.118564
6-24 months                  ki1135781-COHORTS          INDIA                          observed             optimal           2.3659503   2.0344277   2.751497
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2282982   1.1759377   1.282990
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.9808023   1.7564464   2.233816
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.2570629   1.1396056   1.386626


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3070633    0.1523207   0.4618058
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2075294    0.0461819   0.3688768
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1026183   -0.0230071   0.2282437
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2007168   -0.0686158   0.4700495
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0821368    0.0192655   0.1450081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1846587    0.1208893   0.2484282
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2877786    0.1420546   0.4335025
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2037347    0.1489249   0.2585444
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2803903    0.2299277   0.3308529
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1176586    0.0933176   0.1419996
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         optimal              NA                 0.0616867   -0.0163406   0.1397139
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0281104    0.0216752   0.0345456
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1022365    0.0911140   0.1133590
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1075045    0.0790314   0.1359775
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1813542    0.1651639   0.1975446
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1508472    0.1292443   0.1724502
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1396633    0.1286400   0.1506867
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1080150    0.0791514   0.1368786
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1438737    0.0484774   0.2392700
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.1057983   -0.2461506   0.0345539
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.1235909    0.0646722   0.1825096
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1240541    0.0955114   0.1525968
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1051480    0.0834491   0.1268470
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0266061    0.0209842   0.0322281
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0721433    0.0636114   0.0806752
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1691376    0.1399474   0.1983277
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0657606    0.0576565   0.0738647
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1227637    0.1069904   0.1385371
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0917775    0.0843125   0.0992425
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0439957    0.0277127   0.0602787
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2276682    0.0757226   0.3796138
6-24 months                  ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0910722   -0.2371942   0.0550498
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1296108    0.0212175   0.2380041
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.0893828   -0.2391528   0.0603871
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1518246    0.0966533   0.2069959
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2636229    0.0806451   0.4466007
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1321937    0.0761405   0.1882470
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1525140    0.1046799   0.2003480
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0658248    0.0415646   0.0900851
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0045108    0.0017559   0.0072656
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0584283    0.0460247   0.0708318
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0496248    0.0225286   0.0767210
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.1399604    0.1234648   0.1564561
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1201625    0.0978197   0.1425054
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1069656    0.0933132   0.1206179
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0749267    0.0462467   0.1036067


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.5890032    0.1533642   0.8004829
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.3649654    0.0032237   0.5954269
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.2070058   -0.0928927   0.4246098
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2643588   -0.2011654   0.5494642
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.1389078    0.0244352   0.2399482
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.3264017    0.2176683   0.4200226
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.5185713    0.1642271   0.7226835
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.5427217    0.3766658   0.6645405
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.7124314    0.5686619   0.8082810
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.2221600    0.1737764   0.2677103
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         optimal              NA                 0.1938723   -0.0909464   0.4043320
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1759345    0.1324004   0.2172841
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.3135690    0.2788522   0.3466145
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1517933    0.1088047   0.1927082
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.6324147    0.5760945   0.6812521
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.2261129    0.1919579   0.2588242
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.5488587    0.5054465   0.5884602
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.2527503    0.1819270   0.3174422
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.5260382    0.0330369   0.7676853
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.2468628   -0.6263554   0.0440793
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.3553239    0.1629372   0.5034933
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.6374018    0.5114870   0.7308619
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.4118999    0.3251992   0.4874611
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.2914836    0.2288644   0.3490178
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.4201957    0.3703851   0.4660658
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.6553060    0.5482214   0.7370085
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.8323979    0.7403585   0.8918106
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.6484734    0.5695308   0.7129390
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.6945098    0.6399194   0.7408241
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.4469850    0.2556106   0.5891592
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.5381248    0.0018803   0.7862695
6-24 months                  ki0047075b-MAL-ED          PERU                           optimal              NA                -0.2300771   -0.6672727   0.0924762
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3414746   -0.0230591   0.5761186
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.2394183   -0.7167783   0.1052090
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.3032706    0.1919026   0.3992904
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.4817936    0.0047664   0.7301760
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.4409675    0.2255505   0.5964651
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.5802411    0.3740217   0.7185245
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1724840    0.1062016   0.2338509
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0586950    0.0224953   0.0935541
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.2381982    0.1862653   0.2868168
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0685950    0.0296287   0.1059965
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.5773368    0.5084613   0.6365614
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1858654    0.1496148   0.2205708
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.4951541    0.4306686   0.5523355
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.2044949    0.1225034   0.2788252
