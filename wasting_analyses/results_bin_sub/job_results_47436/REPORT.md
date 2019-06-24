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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        birthlen      ever_co   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       26     256
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        3     256
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      117     256
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       25     256
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       76     256
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        9     256
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       34     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       79     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       76     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        1     191
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0       24     207
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        1     207
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       75     207
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1       33     207
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       65     207
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        9     207
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0       54     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1       15     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     173
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       34     288
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     288
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0      132     288
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1       10     288
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0      110     288
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1        2     288
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       45     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        1     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0      100     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1       11     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       97     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        6     260
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       15     126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       50     126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        8     126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       52     126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        1     126
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       14     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       37     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       12     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       36     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        4     104
0-24 months   ki1000108-IRC              INDIA                          >=50 cm             0      119     391
0-24 months   ki1000108-IRC              INDIA                          >=50 cm             1       23     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm              0       76     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm              1       35     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm          0      123     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       15     391
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             0       16      92
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             1        6      92
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm              0       22      92
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm              1       21      92
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          0       17      92
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          1       10      92
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             0        6      22
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      22
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              0        7      22
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              1        0      22
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        8      22
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      22
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      207    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       16    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      544    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      256    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      401    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       76    1500
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       32     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        1     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       77     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       32     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       68     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       15     225
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      164     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        5     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      190     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       58     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      256     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       27     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      167     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        1     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      245     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       47     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      275     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       23     758
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      677    1551
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1       86    1551
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      220    1551
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1       73    1551
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      397    1551
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1       98    1551
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2       9
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       9
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        4       9
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        1       9
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        2       9
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       9
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm             0       63     115
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm             1        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm              0       16     115
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm              1        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm          0       35     115
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm          1        1     115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             0        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          1        0       2
0-24 months   ki1114097-CMIN             PERU                           >=50 cm             0       15      17
0-24 months   ki1114097-CMIN             PERU                           >=50 cm             1        0      17
0-24 months   ki1114097-CMIN             PERU                           <48 cm              0        1      17
0-24 months   ki1114097-CMIN             PERU                           <48 cm              1        0      17
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm          0        1      17
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm          1        0      17
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
0-24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2
0-24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0    15297   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1       14   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0      189   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        2   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1384   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1       11   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4036   13798
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       74   13798
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     4029   13798
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      327   13798
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5161   13798
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      171   13798
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      400     833
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       29     833
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0      130     833
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1       26     833
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      223     833
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1       25     833
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0     1396    6628
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1       28    6628
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm              0     2334    6628
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm              1      432    6628
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0     2295    6628
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1      143    6628
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1013    3037
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1      115    3037
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      525    3037
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      227    3037
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      940    3037
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      217    3037
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     3747   26438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       98   26438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    14649   26438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     2040   26438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     5710   26438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      194   26438
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1117    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      115    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1672    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      502    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      961    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      116    4483
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       29     256
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     256
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      134     256
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1        8     256
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       84     256
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        1     256
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       34     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       80     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        0     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       77     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0     191
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             0       25     207
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     207
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              0       97     207
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              1       11     207
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       73     207
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        1     207
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              0       65     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              1        4     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     173
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             0       34     288
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     288
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm              0      140     288
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm              1        2     288
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          0      112     288
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     288
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       46     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0      106     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        5     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0      103     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     260
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       15     126
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     126
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       57     126
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        1     126
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       53     126
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     126
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       13     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       44     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        5     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       39     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        1     103
0-6 months    ki1000108-IRC              INDIA                          >=50 cm             0      137     390
0-6 months    ki1000108-IRC              INDIA                          >=50 cm             1        5     390
0-6 months    ki1000108-IRC              INDIA                          <48 cm              0       96     390
0-6 months    ki1000108-IRC              INDIA                          <48 cm              1       14     390
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm          0      134     390
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm          1        4     390
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm             0       21      92
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm             1        1      92
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm              0       35      92
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm              1        8      92
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          0       23      92
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          1        4      92
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             0        6      22
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      22
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              0        7      22
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              1        0      22
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        8      22
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      22
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      219    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        3    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      706    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1       88    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      462    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       15    1493
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       33     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        0     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       89     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       20     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       80     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        3     225
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      167     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        2     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      224     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       24     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      279     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1        4     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      168     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      275     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       17     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      298     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        0     758
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             0      742    1522
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             1        5    1522
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm              0      263    1522
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm              1       21    1522
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          0      476    1522
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          1       15    1522
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2       9
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       9
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              0        4       9
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              1        1       9
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        2       9
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       9
0-6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             0       63     115
0-6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             1        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         <48 cm              0       16     115
0-6 months    ki1114097-CMIN             BRAZIL                         <48 cm              1        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          0       36     115
0-6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          1        0     115
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             0        0       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             1        0       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              0        1       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              1        0       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          0        1       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          1        0       2
0-6 months    ki1114097-CMIN             PERU                           >=50 cm             0       15      17
0-6 months    ki1114097-CMIN             PERU                           >=50 cm             1        0      17
0-6 months    ki1114097-CMIN             PERU                           <48 cm              0        1      17
0-6 months    ki1114097-CMIN             PERU                           <48 cm              1        0      17
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm          0        1      17
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm          1        0      17
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
0-6 months    ki1114097-CONTENT          PERU                           <48 cm              0        1       2
0-6 months    ki1114097-CONTENT          PERU                           <48 cm              1        0       2
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             0    15298   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             1        9   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm              0      189   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm              1        2   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1387   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          1        8   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4087   13720
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       15   13720
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     4162   13720
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      132   13720
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5305   13720
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1       19   13720
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      420     824
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             1        5     824
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              0      147     824
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              1        8     824
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      238     824
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1        6     824
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm             0     1417    6592
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm             1        2    6592
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm              0     2569    6592
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm              1      167    6592
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          0     2428    6592
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          1        9    6592
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1119    3036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1        9    3036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      712    3036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              1       39    3036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0     1133    3036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1       24    3036
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     3816   26390
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       26   26390
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    15677   26390
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1      967   26390
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     5863   26390
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1       41   26390
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1225    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        6    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     2037    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      103    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0     1064    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1       13    4448
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       25     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        3     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      102     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       21     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       73     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        9     233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30     171
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     171
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       67     171
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1     171
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       72     171
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        1     171
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0       23     192
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        1     192
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       71     192
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1       29     192
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       59     192
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        9     192
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     170
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     170
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0       54     170
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1       12     170
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     170
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     170
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       30     258
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     258
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0      122     258
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1        9     258
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       95     258
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1        2     258
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       39     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        1     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       83     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        8     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       83     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        6     220
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       14     117
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     117
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       46     117
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        7     117
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       49     117
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        1     117
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       14     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       40     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        9     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       37     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        3     104
6-24 months   ki1000108-IRC              INDIA                          >=50 cm             0      123     391
6-24 months   ki1000108-IRC              INDIA                          >=50 cm             1       19     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm              0       81     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm              1       30     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm          0      124     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       14     391
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             0       14      88
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             1        6      88
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm              0       27      88
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm              1       16      88
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          0       17      88
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          1        8      88
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             0        4      16
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      16
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              0        6      16
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              1        0      16
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        5      16
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      16
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      197    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       13    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      498    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      229    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      370    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       69    1376
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       24     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        1     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       62     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       23     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       58     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       12     180
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      146     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        3     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      173     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       47     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      220     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       25     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      164     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        1     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      241     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       39     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      262     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       23     730
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      658    1487
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1       85    1487
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      206    1487
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1       62    1487
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      381    1487
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1       95    1487
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        1       1
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       1
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm             0       63     115
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm             1        0     115
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm              0       16     115
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm              1        0     115
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm          0       35     115
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm          1        1     115
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             0        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             1        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              1        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          1        0       2
6-24 months   ki1114097-CMIN             PERU                           >=50 cm             0       12      14
6-24 months   ki1114097-CMIN             PERU                           >=50 cm             1        0      14
6-24 months   ki1114097-CMIN             PERU                           <48 cm              0        1      14
6-24 months   ki1114097-CMIN             PERU                           <48 cm              1        0      14
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm          0        1      14
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm          1        0      14
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
6-24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2
6-24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0    15047   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1        5   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0      179   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1363   16598
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1        4   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     2974   10569
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       61   10569
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     3178   10569
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      208   10569
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     3991   10569
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      157   10569
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      334     726
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       28     726
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0      120     726
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1       21     726
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      203     726
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1       20     726
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0     1315    6166
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1       27    6166
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm              0     2191    6166
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm              1      352    6166
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0     2141    6166
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1      140    6166
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      926    2801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1      110    2801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      487    2801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      212    2801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      853    2801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      213    2801
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     2411   16953
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       74   16953
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     9355   16953
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     1231   16953
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     3723   16953
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      159   16953
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1113    4474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      112    4474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1730    4474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      442    4474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      971    4474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      106    4474


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/769debd1-ad8d-4d5f-847f-f78ab47c2cc5/e9b17886-1c14-41df-8443-be4b4bc967a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/769debd1-ad8d-4d5f-847f-f78ab47c2cc5/e9b17886-1c14-41df-8443-be4b4bc967a7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/769debd1-ad8d-4d5f-847f-f78ab47c2cc5/e9b17886-1c14-41df-8443-be4b4bc967a7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/769debd1-ad8d-4d5f-847f-f78ab47c2cc5/e9b17886-1c14-41df-8443-be4b4bc967a7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1556297   0.0941693   0.2170900
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.2896357   0.2019323   0.3773392
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1086658   0.0561767   0.1611549
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.2727273   0.0856061   0.4598484
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.4883721   0.3381480   0.6385962
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.3703704   0.1872232   0.5535175
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0762973   0.0438559   0.1087387
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3203675   0.2639052   0.3768298
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.1585770   0.1223309   0.1948231
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.0295858   0.0040214   0.0551502
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.2338710   0.1811514   0.2865905
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.0954064   0.0611548   0.1296580
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1065755   0.0845467   0.1286043
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.2658897   0.2156742   0.3161051
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.2061237   0.1707739   0.2414736
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0177565   0.0136499   0.0218631
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0775970   0.0695972   0.0855969
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0319129   0.0271667   0.0366591
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0657275   0.0418792   0.0895759
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.1713000   0.1132857   0.2293144
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.1034850   0.0657502   0.1412199
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0190906   0.0120435   0.0261378
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1564653   0.1429257   0.1700050
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0584944   0.0491098   0.0678790
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0994648   0.0819334   0.1169962
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.3031515   0.2708266   0.3354764
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.1883851   0.1659298   0.2108404
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0233621   0.0179185   0.0288056
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.1229675   0.1173863   0.1285487
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0325413   0.0279349   0.0371477
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0926218   0.0742508   0.1109928
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2353052   0.2144568   0.2561537
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.1055994   0.0849263   0.1262725
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0066934   0.0008442   0.0125426
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0739437   0.0434997   0.1043876
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0305499   0.0153228   0.0457770
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0036205   0.0017882   0.0054529
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0309569   0.0257622   0.0361516
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0035738   0.0019664   0.0051811
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0117647   0.0015073   0.0220221
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.0516129   0.0167617   0.0864641
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0245902   0.0051459   0.0440344
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0079787   0.0027860   0.0131714
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0519308   0.0360587   0.0678028
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0207433   0.0125296   0.0289570
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0061370   0.0029878   0.0092862
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0581915   0.0543813   0.0620018
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0076944   0.0052326   0.0101562
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0048741   0.0004416   0.0093066
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0481308   0.0371331   0.0591286
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0120706   0.0054304   0.0187107
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1323252   0.0758117   0.1888386
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.2595009   0.1759358   0.3430661
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1026689   0.0515888   0.1537489
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.3000000   0.0980125   0.5019875
6-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.3720930   0.2267919   0.5173942
6-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.3200000   0.1360968   0.5039032
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0641686   0.0326831   0.0956541
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3158407   0.2621852   0.3694963
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.1547107   0.1266629   0.1827586
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1085603   0.0859644   0.1311561
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.2436532   0.1926414   0.2946650
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.2066222   0.1708609   0.2423835
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0193798   0.0144256   0.0243340
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0639345   0.0557446   0.0721244
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0377894   0.0319706   0.0436081
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0684969   0.0432762   0.0937177
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.1794777   0.1120573   0.2468982
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0960205   0.0554960   0.1365450
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0197129   0.0123105   0.0271154
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1389898   0.1255296   0.1524501
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0610016   0.0511598   0.0708435
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1036951   0.0850962   0.1222940
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.3084399   0.2747446   0.3421353
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.1989827   0.1751521   0.2228133
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0279719   0.0208105   0.0351333
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.1172064   0.1104090   0.1240038
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0397906   0.0337856   0.0457955
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0908646   0.0725258   0.1092033
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2074962   0.1880991   0.2268932
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0960608   0.0757706   0.1163510


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1867008   0.1480272   0.2253743
0-24 months   ki1000109-EE              PAKISTAN      NA                   NA                0.4021739   0.3014293   0.5029185
0-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2320000   0.1911686   0.2728314
0-24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.1656995   0.1471896   0.1842095
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0414553   0.0381291   0.0447815
0-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0960384   0.0760175   0.1160593
0-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0909777   0.0840539   0.0979015
0-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1840632   0.1702782   0.1978483
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0882064   0.0843238   0.0920889
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1635066   0.1508784   0.1761348
0-6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0269382   0.0188017   0.0350748
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0120991   0.0102697   0.0139286
0-6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0230583   0.0128042   0.0333123
0-6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0237154   0.0183020   0.0291288
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0391815   0.0366710   0.0416921
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0274281   0.0217023   0.0331538
6-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1611253   0.1246376   0.1976130
6-24 months   ki1000109-EE              PAKISTAN      NA                   NA                0.3409091   0.2413043   0.4405139
6-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2260174   0.1899444   0.2620905
6-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.1627438   0.1439757   0.1815119
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0403066   0.0365568   0.0440563
6-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0950413   0.0736937   0.1163890
6-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0841713   0.0772407   0.0911019
6-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1910032   0.1764432   0.2055633
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0863564   0.0817075   0.0910053
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1475190   0.1356672   0.1593708


### Parameter: RR


agecat        studyid                   country       intervention_level   baseline_level      estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            1.8610573   1.1332619    3.056252
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.6982332   0.3738403    1.304112
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm            1.7906977   0.8442525    3.798151
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm            1.3580247   0.5829181    3.163791
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            4.1989351   2.6872607    6.560977
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            2.0784087   1.3448032    3.212204
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm            7.9048387   3.2364549   19.307074
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm            3.2247350   1.2651132    8.219751
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            2.4948486   1.8880286    3.296703
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.9340636   1.4809357    2.525837
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            4.3700617   3.3927810    5.628845
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.7972521   1.3652537    2.365945
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.6062138   1.5887344    4.275322
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            1.5744545   0.9414538    2.633063
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            8.1959265   5.6117105   11.970185
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.0640394   2.0497267    4.580288
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            3.0478278   2.4813985    3.743556
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.8939878   1.5317611    2.341873
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            5.2635550   4.1528123    6.671385
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            1.3929122   1.0913987    1.777723
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            2.5404960   2.0457747    3.154854
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.1401140   0.8618087    1.508293
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           11.0471826   4.2045698   29.025619
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            4.5641546   1.6689716   12.481643
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            8.5503828   5.0167370   14.573028
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            0.9870862   0.5015454    1.942674
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            4.3870968   1.4562810   13.216281
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            2.0901639   0.6441639    6.782102
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            6.5086551   3.1712363   13.358384
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            2.5998271   1.2136528    5.569222
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            9.4820858   5.6408987   15.938941
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            1.2537736   0.6915624    2.273039
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            9.8748442   3.8409666   25.387503
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            2.4764779   0.9113068    6.729833
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            1.9610851   1.1496481    3.345245
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.7758831   0.4025482    1.495460
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm            1.2403101   0.5695116    2.701208
6-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm            1.0666667   0.4401355    2.585062
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            4.9220427   2.8220083    8.584845
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            2.4110027   1.3854574    4.195679
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            2.2444050   1.6729656    3.011033
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.9032953   1.4536750    2.491983
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            3.2990244   2.4788741    4.390526
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.9499326   1.4469410    2.627776
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.6202298   1.5547325    4.415939
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            1.4018221   0.8017405    2.451049
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            7.0506879   4.7862753   10.386406
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.0944950   2.0573200    4.654550
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            2.9744880   2.4123149    3.667671
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.9189205   1.5475909    2.379347
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            4.1901408   3.2215679    5.449918
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            1.4225168   1.0734558    1.885084
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            2.2835759   1.8315217    2.847206
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.0571862   0.7864364    1.421148


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0310711   -0.0195263   0.0816685
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.1294466   -0.0391292   0.2980225
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.1557027    0.1094556   0.2019498
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.0989856    0.0681034   0.1298678
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0591241    0.0407821   0.0774661
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0236988    0.0194525   0.0279451
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0303109    0.0107067   0.0499151
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0718871    0.0631819   0.0805922
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0845985    0.0682818   0.1009151
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0648443    0.0590983   0.0705903
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0708848    0.0533290   0.0884406
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0202448    0.0120697   0.0284199
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0084786    0.0063144   0.0106428
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0112935    0.0012027   0.0213844
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0157367    0.0097173   0.0217561
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0330445    0.0292927   0.0367963
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0225540    0.0161589   0.0289490
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0288001   -0.0184267   0.0760270
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.0409091   -0.1384651   0.2202833
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.1618488    0.1107658   0.2129319
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0541835    0.0357267   0.0726403
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0209267    0.0159877   0.0258657
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0265444    0.0065448   0.0465440
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0644583    0.0555930   0.0733236
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0873081    0.0700487   0.1045675
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0583845    0.0509911   0.0657778
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0566544    0.0396531   0.0736557


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1664219   -0.1534698   0.3975981
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.3218673   -0.2569606   0.6341461
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.6711322    0.4979578   0.7845719
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.7698882    0.4684627   0.9003806
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3568150    0.2410931   0.4548910
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.5716709    0.4686162   0.6547395
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.3156119    0.0880661   0.4863804
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.7901615    0.6992766   0.8535791
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4596163    0.3689653   0.5372448
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.7351431    0.6683636   0.7884756
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.4335288    0.3209816   0.5274213
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.7515264    0.4371398   0.8903118
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.7007613    0.5151660   0.8153104
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.4897833   -0.0767738   0.7582398
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.6635638    0.3819918   0.8168482
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.8433701    0.7395716   0.9057978
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.8222956    0.5691586   0.9267042
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1787437   -0.1713024   0.4241779
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.1200000   -0.5999326   0.5159796
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.7160899    0.5143999   0.8340097
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3329376    0.2136476   0.4341312
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.5191893    0.3910600   0.6203584
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.2792930    0.0441117   0.4566116
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.7657996    0.6626505   0.8374094
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4571027    0.3644010   0.5362839
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.6760872    0.5854294   0.7469202
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.3840483    0.2609766   0.4866245
