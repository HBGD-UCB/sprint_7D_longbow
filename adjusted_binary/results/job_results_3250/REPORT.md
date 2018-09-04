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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/569c675a-9fc9-4ea3-ad35-47aa2ba14953/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/569c675a-9fc9-4ea3-ad35-47aa2ba14953/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/569c675a-9fc9-4ea3-ad35-47aa2ba14953/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/569c675a-9fc9-4ea3-ad35-47aa2ba14953/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.2068966    0.0591143   0.3546788
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.6597938    0.5652857   0.7543019
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.4705882    0.3642260   0.5769505
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.3873960    0.2463593   0.5284328
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.7208603    0.6381975   0.8035231
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.4939356    0.4040937   0.5837775
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.3628255    0.2302200   0.4954310
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.5799589    0.4782450   0.6816727
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.4872428    0.3920825   0.5824032
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.5333333    0.2796890   0.7869777
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8250000    0.7067002   0.9432998
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.7735849    0.6603874   0.8867824
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              NA                0.5071715    0.4251879   0.5891551
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm               NA                0.7035302    0.5940782   0.8129823
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm           NA                0.6251290    0.5443850   0.7058730
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.4157957    0.3594608   0.4721305
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.7119015    0.6541927   0.7696103
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.5460237    0.4844323   0.6076152
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.2727273    0.1203569   0.4250976
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.6515152    0.5362424   0.7667879
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.5903614    0.4842738   0.6964491
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.1707891    0.1138367   0.2277415
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.6121759    0.5413936   0.6829582
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.3456910    0.2902574   0.4011245
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.1126848    0.0649194   0.1604501
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.5991446    0.5288063   0.6694830
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.4232042    0.3671283   0.4792802
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.4120077    0.3780408   0.4459746
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.7408887    0.6874523   0.7943251
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.6248389    0.5846306   0.6650471
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              NA                0.2539683    0.1459917   0.3619448
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         <48 cm               NA                0.4545455    0.1589466   0.7501443
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                0.3888889    0.2289136   0.5488641
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.1314045    0.1123742   0.1504348
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.6173985    0.5293372   0.7054598
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.4167236    0.3685667   0.4648806
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.2224674    0.2100260   0.2349089
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.4538223    0.4367379   0.4709068
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.3404408    0.3279208   0.3529609
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.6010159    0.5553131   0.6467188
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.8870055    0.8294971   0.9445139
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.8144611    0.7668819   0.8620403
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.1106854    0.0954419   0.1259289
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          <48 cm               NA                0.4616792    0.4409130   0.4824454
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.2516598    0.2350454   0.2682742
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.5149821    0.4868949   0.5430694
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.8481547    0.8209117   0.8753977
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.7175041    0.6922575   0.7427506
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.1116066    0.1005764   0.1226367
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.3734564    0.3622247   0.3846882
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.1560104    0.1456310   0.1663898
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.3229403    0.2899664   0.3559142
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.5636898    0.5284673   0.5989123
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.3991661    0.3638669   0.4344653
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.1276596    0.0320506   0.2232686
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.3928571    0.2881922   0.4975221
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.2427184    0.1597449   0.3256920
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.5000000    0.2365157   0.7634843
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.4000000    0.2236426   0.5763574
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.4250000    0.2708842   0.5791158
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              NA                0.2315115    0.1620533   0.3009697
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm               NA                0.5502881    0.4308573   0.6697189
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm           NA                0.3721248    0.2913851   0.4528646
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm              NA                0.3636364    0.1611931   0.5660796
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm               NA                0.8636364    0.7192149   1.0080578
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                0.6666667    0.4875895   0.8457438
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.0760247    0.0525639   0.0994856
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.3160965    0.2668957   0.3652973
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.1449886    0.1195869   0.1703904
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.1483708    0.1233617   0.1733800
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.5066084    0.4455495   0.5676674
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.3010459    0.2625243   0.3395676
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.0639102    0.0517599   0.0760605
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.5743965    0.4852753   0.6635177
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.3315702    0.2797189   0.3834214
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.0993731    0.0903647   0.1083816
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.2623584    0.2472036   0.2775131
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.1792458    0.1690821   0.1894096
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.0877705    0.0611144   0.1144266
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.6521076    0.5757879   0.7284272
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.3784281    0.3227611   0.4340952
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.0132221    0.0073067   0.0191376
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          <48 cm               NA                0.1651761    0.1488892   0.1814630
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.0471884    0.0387743   0.0556025
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.0654209    0.0509402   0.0799016
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.4172147    0.3796819   0.4547474
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.1983024    0.1757961   0.2208087
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.0413823    0.0343913   0.0483734
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.2215147    0.2122035   0.2308259
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.0552105    0.0488666   0.0615544
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.0551724    0.0376332   0.0727116
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.1628652    0.1370120   0.1887184
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.0838061    0.0642037   0.1034085
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.1851852    0.0381927   0.3321777
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.5357143    0.4046725   0.6667561
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.4246575    0.3109038   0.5384113
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.3571429    0.1790442   0.5352415
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.4444444    0.2987552   0.5901337
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.3802817    0.2669681   0.4935953
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.3305318    0.1833971   0.4776664
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.4374581    0.2869372   0.5879790
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.3779990    0.2632063   0.4927917
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              NA                0.3601000    0.2702909   0.4499092
6-24 months                  ki1000108-IRC              INDIA                          <48 cm               NA                0.3548509    0.1841014   0.5256004
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm           NA                0.4097766    0.3074274   0.5121259
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.3692303    0.3162559   0.4222048
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.6280055    0.5776213   0.6783898
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.5084912    0.4622886   0.5546937
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.2727273    0.0857418   0.4597128
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.6521739    0.4566026   0.8477453
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.6065574    0.4833836   0.7297311
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.1541127    0.0933694   0.2148561
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.3906395    0.2915961   0.4896830
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.3158834    0.2541974   0.3775693
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.1099240    0.0622252   0.1576229
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.3679451    0.2770342   0.4588560
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.3213390    0.2618058   0.3808722
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.3178687    0.2820797   0.3536578
6-24 months                  ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.4962654    0.4096450   0.5828858
6-24 months                  ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.4873537    0.4367324   0.5379750
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.0722960    0.0585717   0.0860203
6-24 months                  ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.1296296   -0.0004819   0.2597412
6-24 months                  ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.1519608    0.1079464   0.1959751
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.1821826    0.1680918   0.1962733
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.3477349    0.3262894   0.3691803
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.2542639    0.2398411   0.2686866
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.6737805    0.6229925   0.7245685
6-24 months                  ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.8285714    0.7035869   0.9535560
6-24 months                  ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.8161765    0.7510126   0.8813403
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.1047076    0.0891753   0.1202398
6-24 months                  ki1135781-COHORTS          INDIA                          <48 cm               NA                0.3809695    0.3579990   0.4039400
6-24 months                  ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.2278808    0.2108208   0.2449409
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.5252131    0.4949000   0.5555261
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.8112816    0.7734162   0.8491469
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.7147528    0.6853401   0.7441655
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.1092071    0.0955838   0.1228304
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.3037369    0.2891746   0.3182992
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.1588912    0.1465554   0.1712270
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.2839625    0.2515851   0.3163400
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.4822833    0.4455047   0.5190619
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.3455990    0.3082933   0.3829047


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
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            1.8607839   1.2707789    2.724720
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            1.2750146   0.8496200    1.913399
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            1.5984513   1.0661315    2.396558
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            1.3429124   0.8869227    2.033338
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            1.5468750   0.9412997    2.542041
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            1.4504717   0.8818823    2.385657
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.3871644   1.1092387    1.734726
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.2325792   1.0026589    1.515223
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            1.7121427   1.4752016    1.987140
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            1.3132020   1.1630231    1.482773
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            2.3888889   1.3294836    4.292486
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            2.1646586   1.2036793    3.892854
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            3.5843965   2.5184809    5.101447
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            2.0240807   1.3980223    2.930499
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            5.3169973   3.4254943    8.252958
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            3.7556467   2.4096677    5.853455
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            1.7982399   1.6125183    2.005352
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            1.5165709   1.3675318    1.681853
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            1.7897727   0.8229379    3.892501
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm            1.5312500   0.8474642    2.766756
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            4.6984590   3.9246570    5.624827
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            3.1713048   2.8353543    3.547061
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            2.0399494   1.9072446    2.181888
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.5302951   1.4314374    1.635980
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.4758435   1.3354584    1.630986
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            1.3551405   1.2313648    1.491358
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            4.1710934   3.6111465    4.817866
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            2.2736493   1.9536537    2.646058
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            1.6469594   1.5465293    1.753911
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            1.3932601   1.3065666    1.485706
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            3.3461871   3.0307283    3.694481
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            1.3978605   1.2453018    1.569109
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            1.7454923   1.5489190    1.967013
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.2360369   1.0796355    1.415095
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            3.0773810   1.3898085    6.814085
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            1.9012945   0.8346587    4.331016
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.8000000   0.4024331    1.590326
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.8500000   0.4483411    1.611496
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            2.3769359   1.6427443    3.439260
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.6073705   1.1100651    2.327467
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            2.3750000   1.3280421    4.247324
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            1.8333333   0.9880730    3.401683
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            4.1578105   2.9380319    5.884003
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            1.9071240   1.3063185    2.784254
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            3.4144748   2.7762799    4.199374
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            2.0290104   1.6436111    2.504779
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            8.9875586   7.4011981   10.913937
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            5.1880646   4.3959828    6.122866
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            2.6401338   2.3712396    2.939520
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.8037655   1.6209838    2.007158
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            7.4296874   5.3695839   10.280174
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            4.3115625   3.0830847    6.029536
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           12.4923843   7.9019276   19.749569
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            3.5688923   2.2050538    5.776273
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            6.3773878   5.0243461    8.094800
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            3.0311769   2.3653756    3.884387
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            5.3528799   4.5102635    6.352915
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            1.3341573   1.1035884    1.612898
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            2.9519333   2.0723135    4.204919
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.5189863   1.0229200    2.255621
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            2.8928571   1.2606772    6.638196
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            2.2931507   0.9922164    5.299792
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            1.2444444   0.6851770    2.260207
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            1.0647887   0.5956265    1.903500
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            1.3234980   0.7556938    2.317932
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            1.1436087   0.6673207    1.959838
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.9854231   0.5731997    1.694102
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.1379522   0.7997935    1.619087
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            1.7008503   1.4427774    2.005085
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            1.3771652   1.1960473    1.585710
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            2.3913043   1.1314648    5.053923
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            2.2240437   1.0879249    4.546610
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            2.5347646   1.5869011    4.048791
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            2.0496900   1.3194370    3.184107
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            3.3472669   2.0333523    5.510209
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            2.9232823   1.8250205    4.682456
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            1.5612276   1.2702376    1.918878
6-24 months                  ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            1.5331917   1.3179606    1.783571
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            1.7930401   0.6333665    5.076039
6-24 months                  ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            2.1019252   1.6162855    2.733483
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.9087165   1.7293113    2.106734
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.3956543   1.2683149    1.535779
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.2297350   1.0389082    1.455613
6-24 months                  ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            1.2113388   1.0853745    1.351922
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            3.6384143   3.1025960    4.266769
6-24 months                  ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            2.1763548   1.8453747    2.566698
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            1.5446713   1.4352659    1.662416
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            1.3608815   1.2688790    1.459555
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            2.7812922   2.4420184    3.167702
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            1.4549531   1.2596933    1.680479
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            1.6984049   1.4825844    1.945642
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.2170585   1.0377511    1.427347


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.3144305    0.1715979   0.4572630
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1812314    0.0486191   0.3138437
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1329010    0.0130606   0.2527414
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2259259   -0.0043494   0.4562013
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0841329    0.0221821   0.1460836
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.1499451    0.0939042   0.2059860
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2822178    0.1406576   0.4237780
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.2046052    0.1504034   0.2588070
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.2808834    0.2307971   0.3309696
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1176043    0.0938948   0.1413138
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              NA                 0.0642136   -0.0129213   0.1413485
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0283733    0.0220774   0.0346693
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1035742    0.0927368   0.1144117
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1072135    0.0790628   0.1353642
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.1760793    0.1604813   0.1916772
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1521502    0.1311766   0.1731239
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.1428688    0.1322818   0.1534558
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.1044182    0.0765460   0.1322904
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1458447    0.0523301   0.2393593
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0714286   -0.3114643   0.1686072
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1163146    0.0582712   0.1743579
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.2701665    0.1018745   0.4384584
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.1185999    0.0858644   0.1513354
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1069049    0.0855658   0.1282440
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0273682    0.0216867   0.0330496
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0723165    0.0639353   0.0806977
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1703342    0.1414807   0.1991877
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.0657792    0.0576827   0.0738757
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1238910    0.1082680   0.1395139
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.0907649    0.0834038   0.0981259
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0432553    0.0272346   0.0592759
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.2378917    0.0958468   0.3799367
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0386905   -0.1219590   0.1993400
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0490303   -0.0802752   0.1783357
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0132333   -0.0518152   0.0782817
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.1313939    0.0839326   0.1788551
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2744425    0.1026423   0.4462428
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1456684    0.0899380   0.2013989
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1529218    0.1054022   0.2004414
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0637601    0.0399870   0.0875331
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0045550    0.0017845   0.0073256
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0631101    0.0510576   0.0751625
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0496664    0.0226156   0.0767172
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.1377167    0.1220700   0.1533634
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1212898    0.0998163   0.1427632
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.1068387    0.0937668   0.1199106
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0824364    0.0549806   0.1098921


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.6031348    0.2114978   0.8002517
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.3187173    0.0412743   0.5158719
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.2680934   -0.0190081   0.4743052
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2975610   -0.0904717   0.5475164
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1422835    0.0296040   0.2418790
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2650420    0.1713705   0.3481246
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.5085509    0.1708856   0.7086985
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.5450408    0.3814693   0.6653555
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.7136842    0.5717109   0.8085949
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.2220574    0.1751916   0.2662603
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              NA                 0.2018141   -0.0792552   0.4096848
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.1775799    0.1347855   0.2182577
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3176718    0.2840277   0.3497348
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1513824    0.1089134   0.1918274
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.6140201    0.5607547   0.6608262
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.2280660    0.1949836   0.2597889
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.5614249    0.5198431   0.5994056
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2443340    0.1762735   0.3067710
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.5332447    0.0536809   0.7697811
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1666667   -0.8874089   0.2788467
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.3344044    0.1472125   0.4805065
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.4262626    0.0717902   0.6453662
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.6093776    0.4589384   0.7179880
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.4187820    0.3342945   0.4925469
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.2998322    0.2363882   0.3580049
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.4212049    0.3726180   0.4660290
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.6599422    0.5562222   0.7394207
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.8326340    0.7408067   0.8919286
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.6544278    0.5769865   0.7176919
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.6868467    0.6327332   0.7329870
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.4394627    0.2584545   0.5762875
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.5622896    0.0697324   0.7940480
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0977444   -0.4148997   0.4246481
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1291759   -0.2860576   0.4103417
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0354463   -0.1554886   0.1948308
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2624601    0.1673950   0.3466708
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.5015674    0.0595478   0.7358345
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.4859159    0.2687988   0.6385639
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.5817927    0.3776532   0.7189713
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1670735    0.1023913   0.2270946
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0592711    0.0229256   0.0942645
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.2572848    0.2071389   0.3042591
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0686525    0.0297578   0.1059879
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.5680813    0.5042529   0.6236917
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1876090    0.1528670   0.2209261
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.4945187    0.4332869   0.5491345
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2249907    0.1468629   0.2959638
