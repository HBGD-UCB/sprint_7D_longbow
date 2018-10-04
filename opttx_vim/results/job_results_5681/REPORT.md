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
```




# Results Detail

## Results Plots
![](/tmp/d40897d4-aae2-4a55-948d-3312dbde06f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d40897d4-aae2-4a55-948d-3312dbde06f2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2064855   0.0587032   0.3542678
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              NA                0.3676087   0.2248320   0.5103853
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3628122   0.2257910   0.4998335
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.5482402   0.2944983   0.8019820
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5067739   0.4252867   0.5882610
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3811458   0.3257906   0.4365010
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2847344   0.1323187   0.4371501
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1714083   0.1144588   0.2283579
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1135696   0.0658729   0.1612662
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4118048   0.3778052   0.4458043
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         optimal              NA                0.2553735   0.1473967   0.3633502
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1316629   0.1126345   0.1506912
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2210881   0.2086448   0.2335314
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6008418   0.5549910   0.6466926
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.1115422   0.0963210   0.1267634
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5178277   0.4899417   0.5457138
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1077029   0.0968362   0.1185696
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3114087   0.2791167   0.3437007
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1269567   0.0313476   0.2225659
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4310097   0.2648666   0.5971529
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.2335029   0.1643687   0.3026371
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.3584704   0.1560191   0.5609217
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.0738669   0.0505159   0.0972179
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1505874   0.1256348   0.1755401
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0642643   0.0521128   0.0764159
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0990528   0.0900376   0.1080679
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.0884015   0.0614477   0.1153553
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0131593   0.0072438   0.0190748
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.0658955   0.0514453   0.0803457
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0387637   0.0320099   0.0455175
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0541962   0.0366217   0.0717707
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1895800   0.0425797   0.3365803
6-24 months                  ki0047075b-MAL-ED          PERU                           optimal              NA                0.1664151   0.0556615   0.2771686
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1786016   0.0571098   0.3000934
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.3412388   0.1679952   0.5144823
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3498081   0.2978820   0.4017342
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2803495   0.0933422   0.4673567
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1691460   0.1096966   0.2285954
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1098713   0.0621789   0.1575638
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3154467   0.2796304   0.3512631
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                0.0722750   0.0585506   0.0859994
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1804671   0.1664211   0.1945131
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6737944   0.6230064   0.7245823
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.1061145   0.0905861   0.1216429
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5271072   0.4967022   0.5575123
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1131213   0.0994614   0.1267811
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2838177   0.2513938   0.3162416


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5208279   0.4532642   0.5883915
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           observed             NA                0.5703061   0.5093985   0.6312137
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.4966944   0.4324960   0.5608928
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7609752   0.6799675   0.8419828
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5909588   0.5390101   0.6429074
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5654738   0.5072020   0.6237457
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5555053   0.4831049   0.6279056
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3759761   0.3382543   0.4136980
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3942704   0.3567710   0.4317699
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.5302170   0.5046845   0.5557494
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         observed             NA                0.3186306   0.2311912   0.4060699
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             NA                0.1595667   0.1406103   0.1785230
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3262185   0.3179940   0.3344431
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7078161   0.6763358   0.7392965
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             NA                0.2868380   0.2752459   0.2984301
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6668018   0.6495373   0.6840664
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2545709   0.2466983   0.2624435
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4276402   0.4072083   0.4480722
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.2735221   0.2162862   0.3307580
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.4195209   0.3130572   0.5259846
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3488432   0.2985127   0.3991738
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6330453   0.5201869   0.7459036
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.1938025   0.1695042   0.2181009
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2554319   0.2331277   0.2777362
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0915241   0.0784045   0.1046436
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1716497   0.1650322   0.1782673
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2572950   0.2269909   0.2875990
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             NA                0.0790282   0.0721143   0.0859422
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.1892990   0.1749464   0.2036515
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1321582   0.1264419   0.1378745
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0983667   0.0855160   0.1112174
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4227528   0.3449758   0.5005297
6-24 months                  ki0047075b-MAL-ED          PERU                           observed             NA                0.3991187   0.3189667   0.4792708
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3817214   0.3001629   0.4632799
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3736439   0.3103020   0.4369857
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5006221   0.4555079   0.5457363
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5480541   0.4528442   0.6432641
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3006350   0.2585832   0.3426868
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2635988   0.2252076   0.3019900
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3812383   0.3519249   0.4105518
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             NA                0.0768392   0.0628738   0.0908045
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2452885   0.2357760   0.2548010
6-24 months                  ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7234795   0.6841945   0.7627644
6-24 months                  ki1135781-COHORTS          INDIA                          observed             NA                0.2424851   0.2306243   0.2543459
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6461629   0.6257891   0.6665366
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2163333   0.2069031   0.2257636
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3663513   0.3454410   0.3872616


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.3964564   0.1992603   0.7888057
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              observed          0.6445813   0.4476373   0.9281734
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.7304537   0.5186727   1.0287077
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7204442   0.4701742   1.1039309
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              observed          0.8575452   0.7585037   0.9695191
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.6740291   0.5922296   0.7671269
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.5125683   0.3110799   0.8445621
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.4559022   0.3357356   0.6190787
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.2880499   0.1933116   0.4292178
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              observed          0.7766722   0.7324924   0.8235167
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         optimal              observed          0.8014720   0.5938630   1.0816592
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              observed          0.8251277   0.7844916   0.8678687
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.6777301   0.6456715   0.7113804
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.8488671   0.8082308   0.8915465
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              observed          0.3888683   0.3421346   0.4419856
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.7765842   0.7451791   0.8093127
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.4230764   0.3856181   0.4641734
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.7282025   0.6663597   0.7957847
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.4641554   0.2280105   0.9448699
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          1.0273857   0.7395844   1.4271817
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              observed          0.6693634   0.5242590   0.8546299
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              observed          0.5662635   0.3471221   0.9237508
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.3811450   0.2728932   0.5323384
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              observed          0.5895404   0.5159741   0.6735955
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              observed          0.7021577   0.6442006   0.7653290
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.5770634   0.5321960   0.6257133
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.3435804   0.2630304   0.4487978
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              observed          0.1665139   0.1072945   0.2584182
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.3481028   0.2849319   0.4252791
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.2933129   0.2488372   0.3457378
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.5509608   0.4140895   0.7330730
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.4484417   0.2148987   0.9357895
6-24 months                  ki0047075b-MAL-ED          PERU                           optimal              observed          0.4169563   0.2234141   0.7781631
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.4678847   0.2556463   0.8563241
6-24 months                  ki1000108-IRC              INDIA                          optimal              observed          0.9132728   0.5678858   1.4687235
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.6987469   0.6141148   0.7950421
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.5115361   0.2762303   0.9472862
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.5626292   0.4117996   0.7687030
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.4168128   0.2800461   0.6203725
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              observed          0.8274266   0.7671173   0.8924773
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              observed          0.9406007   0.9055961   0.9769583
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.7357341   0.6888575   0.7858006
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9313248   0.8939909   0.9702178
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              observed          0.4376124   0.3820051   0.5013143
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8157498   0.7823086   0.8506205
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.5229027   0.4681932   0.5840051
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.7747145   0.7035992   0.8530177
