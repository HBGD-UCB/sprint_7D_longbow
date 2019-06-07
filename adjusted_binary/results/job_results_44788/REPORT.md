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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        birthlen      pers_wast   n_cell      n
------------  -------------------------  -----------------------------  -----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       26    241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3    241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0      120    241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1        8    241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       83    241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        1    241
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       33    180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0    180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       72    180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        1    180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       74    180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        0    180
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               0       23    197
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               1        1    197
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                0       97    197
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                1        7    197
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       61    197
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            1        8    197
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               0       37    172
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        1    172
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                0       68    172
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                1        0    172
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0       66    172
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0    172
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               0       32    271
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               1        0    271
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                0      135    271
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                1        1    271
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            0      103    271
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            1        0    271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       41    232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        0    232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       96    232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        1    232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       93    232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        1    232
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       15    121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0    121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       54    121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0    121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       52    121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0    121
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       15    104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        0    104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       44    104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        5    104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       39    104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        1    104
0-24 months   ki1000108-IRC              INDIA                          >=50 cm               0      124    391
0-24 months   ki1000108-IRC              INDIA                          >=50 cm               1       18    391
0-24 months   ki1000108-IRC              INDIA                          <48 cm                0      100    391
0-24 months   ki1000108-IRC              INDIA                          <48 cm                1       11    391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm            0      121    391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm            1       17    391
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               0       20     90
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               1        2     90
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                0       41     90
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                1        2     90
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            0       24     90
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            1        1     90
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               0        4     18
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               1        1     18
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                0        6     18
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                1        0     18
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            0        6     18
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        1     18
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               0       52    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               1        2    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                0      204    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                1       24    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            0      138    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            1        6    426
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               0       22    179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               1        3    179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                0       73    179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                1       11    179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            0       65    179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            1        5    179
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      153    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        2    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      218    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1        8    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      254    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1        5    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               0      165    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               1        0    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                0      268    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                1       12    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            0      271    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            1       14    730
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               0      717   1506
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               1       24   1506
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                0      264   1506
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                1       15   1506
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            0      458   1506
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            1       28   1506
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0      1
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0      1
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                0        1      1
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                1        0      1
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        0      1
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0      1
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               0       63    115
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               1        0    115
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                0       16    115
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                1        0    115
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            0       36    115
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            1        0    115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               0        0      2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               1        0      2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                0        1      2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                1        0      2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            0        1      2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            1        0      2
0-24 months   ki1114097-CMIN             PERU                           >=50 cm               0       12     15
0-24 months   ki1114097-CMIN             PERU                           >=50 cm               1        1     15
0-24 months   ki1114097-CMIN             PERU                           <48 cm                0        1     15
0-24 months   ki1114097-CMIN             PERU                           <48 cm                1        0     15
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm            0        1     15
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm            1        0     15
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm               0        1      2
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm               1        0      2
0-24 months   ki1114097-CONTENT          PERU                           <48 cm                0        1      2
0-24 months   ki1114097-CONTENT          PERU                           <48 cm                1        0      2
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            0        0      2
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            1        0      2
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               0     7171   7972
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               1       93   7972
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                0       86   7972
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                1        0   7972
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            0      620   7972
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            1        2   7972
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               0     2609   9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               1       31   9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                0     2881   9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                1       65   9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            0     3590   9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            1       69   9245
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               0      166    332
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               1        4    332
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                0       61    332
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                1        5    332
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            0       93    332
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            1        3    332
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm               0     1096   5267
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm               1       76   5267
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm                0     1865   5267
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm                1      253   5267
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm            0     1799   5267
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm            1      178   5267
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               0      998   2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               1       39   2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                0      653   2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                1       48   2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            0     1010   2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            1       56   2804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               0      964   7657
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               1       67   7657
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                0     4577   7657
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                1      288   7657
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            0     1674   7657
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            1       87   7657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               0      310   1151
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               1       15   1151
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                0      484   1151
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                1       58   1151
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            0      267   1151
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            1       17   1151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       26    241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3    241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0      126    241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1        2    241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       82    241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        2    241
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       33    180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0    180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       73    180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        0    180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       74    180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        0    180
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm               0       23    196
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm               1        1    196
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                0       97    196
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                1        6    196
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       63    196
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm            1        6    196
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm               0       36    172
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        2    172
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                0       67    172
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                1        1    172
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0       66    172
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0    172
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm               0       32    271
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm               1        0    271
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                0      136    271
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                1        0    271
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm            0      103    271
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm            1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       41    231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        0    231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       96    231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        0    231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       92    231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        2    231
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       15    121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0    121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       54    121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0    121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       52    121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0    121
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       11    101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        3    101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       39    101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        8    101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       38    101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        2    101
0-6 months    ki1000108-IRC              INDIA                          >=50 cm               0      111    385
0-6 months    ki1000108-IRC              INDIA                          >=50 cm               1       28    385
0-6 months    ki1000108-IRC              INDIA                          <48 cm                0       94    385
0-6 months    ki1000108-IRC              INDIA                          <48 cm                1       14    385
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm            0      117    385
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm            1       21    385
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm               0       21     88
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm               1        1     88
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                0       37     88
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                1        4     88
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm            0       24     88
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm            1        1     88
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm               0        4     17
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm               1        0     17
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                0        6     17
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                1        0     17
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm            0        6     17
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        1     17
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               0        8     68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               1        1     68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                0       31     68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                1        2     68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            0       25     68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            1        1     68
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      152    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        3    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      219    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1        5    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      252    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1        6    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               0       45    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               1        0    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                0       95    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                1        1    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            0      105    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            1        4    250
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm               0      689   1410
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm               1       11   1410
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                0      247   1410
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                1        7   1410
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm            0      442   1410
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm            1       14   1410
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0      1
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0      1
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                0        1      1
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                1        0      1
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        0      1
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               0        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               1        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                0        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                1        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            0        1      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            1        0      1
0-6 months    ki1114097-CMIN             PERU                           >=50 cm               0       12     15
0-6 months    ki1114097-CMIN             PERU                           >=50 cm               1        1     15
0-6 months    ki1114097-CMIN             PERU                           <48 cm                0        1     15
0-6 months    ki1114097-CMIN             PERU                           <48 cm                1        0     15
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm            0        1     15
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm            1        0     15
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm               0        1      2
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm               1        0      2
0-6 months    ki1114097-CONTENT          PERU                           <48 cm                0        1      2
0-6 months    ki1114097-CONTENT          PERU                           <48 cm                1        0      2
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm            0        0      2
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm            1        0      2
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm               0     5480   6657
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm               1      604   6657
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm                0       69   6657
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm                1        1   6657
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm            0      481   6657
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm            1       22   6657
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               0      207    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               1        3    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                0      156    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                1        6    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            0      233    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            1        5    610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm               0      274    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm               1       19    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                0      191    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                1       15    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            0      336    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            1       18    853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               0        3     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                0       10     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            0       10     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            1        0     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       26    241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3    241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0      120    241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1        8    241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       83    241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        1    241
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       33    180
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0    180
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       72    180
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        1    180
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       74    180
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        0    180
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               0       23    197
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               1        1    197
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                0       97    197
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                1        7    197
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       61    197
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            1        8    197
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               0       37    172
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        1    172
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                0       68    172
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                1        0    172
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0       66    172
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0    172
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               0       32    271
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               1        0    271
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                0      135    271
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                1        1    271
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            0      103    271
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            1        0    271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       41    232
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        0    232
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       96    232
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        1    232
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       93    232
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        1    232
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       15    121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0    121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       54    121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0    121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       52    121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0    121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       15    104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        0    104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       44    104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        5    104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       39    104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        1    104
6-24 months   ki1000108-IRC              INDIA                          >=50 cm               0      124    391
6-24 months   ki1000108-IRC              INDIA                          >=50 cm               1       18    391
6-24 months   ki1000108-IRC              INDIA                          <48 cm                0      100    391
6-24 months   ki1000108-IRC              INDIA                          <48 cm                1       11    391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm            0      121    391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm            1       17    391
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               0       20     90
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               1        2     90
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                0       41     90
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                1        2     90
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            0       24     90
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            1        1     90
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               0        4     18
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               1        1     18
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                0        6     18
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                1        0     18
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            0        6     18
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        1     18
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               0       52    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               1        2    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                0      204    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                1       24    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            0      138    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            1        6    426
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               0       22    179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               1        3    179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                0       73    179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                1       11    179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            0       65    179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            1        5    179
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      153    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        2    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      218    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1        8    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      254    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1        5    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               0      165    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               1        0    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                0      268    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                1       12    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            0      271    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            1       14    730
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               0      717   1506
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               1       24   1506
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                0      264   1506
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                1       15   1506
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            0      458   1506
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            1       28   1506
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0      1
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0      1
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                0        1      1
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                1        0      1
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        0      1
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0      1
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               0       63    115
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               1        0    115
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                0       16    115
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                1        0    115
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            0       36    115
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            1        0    115
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               0        0      2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               1        0      2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                0        1      2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                1        0      2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            0        1      2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            1        0      2
6-24 months   ki1114097-CMIN             PERU                           >=50 cm               0       12     15
6-24 months   ki1114097-CMIN             PERU                           >=50 cm               1        1     15
6-24 months   ki1114097-CMIN             PERU                           <48 cm                0        1     15
6-24 months   ki1114097-CMIN             PERU                           <48 cm                1        0     15
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm            0        1     15
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm            1        0     15
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm               0        1      2
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm               1        0      2
6-24 months   ki1114097-CONTENT          PERU                           <48 cm                0        1      2
6-24 months   ki1114097-CONTENT          PERU                           <48 cm                1        0      2
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            0        0      2
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            1        0      2
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               0     7171   7972
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               1       93   7972
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                0       86   7972
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                1        0   7972
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            0      620   7972
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            1        2   7972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               0     2609   9245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               1       31   9245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                0     2881   9245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                1       65   9245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            0     3590   9245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            1       69   9245
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               0      166    332
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               1        4    332
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                0       61    332
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                1        5    332
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            0       93    332
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            1        3    332
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm               0     1096   5267
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm               1       76   5267
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm                0     1865   5267
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm                1      253   5267
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm            0     1799   5267
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm            1      178   5267
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               0      998   2804
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               1       39   2804
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                0      653   2804
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                1       48   2804
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            0     1010   2804
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            1       56   2804
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               0      964   7657
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               1       67   7657
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                0     4577   7657
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                1      288   7657
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            0     1674   7657
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            1       87   7657
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               0      310   1151
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               1       15   1151
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                0      484   1151
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                1       58   1151
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            0      267   1151
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            1       17   1151


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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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
![](/tmp/dd3cc11d-1156-4865-a4e0-458e0701dc22/0de18284-2c98-4875-9dc5-dc1294175085/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dd3cc11d-1156-4865-a4e0-458e0701dc22/0de18284-2c98-4875-9dc5-dc1294175085/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dd3cc11d-1156-4865-a4e0-458e0701dc22/0de18284-2c98-4875-9dc5-dc1294175085/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dd3cc11d-1156-4865-a4e0-458e0701dc22/0de18284-2c98-4875-9dc5-dc1294175085/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC        INDIA         >=50 cm              NA                0.1267606   0.0719684   0.1815528
0-24 months   ki1000108-IRC        INDIA         <48 cm               NA                0.0990991   0.0434426   0.1547556
0-24 months   ki1000108-IRC        INDIA         [48-50) cm           NA                0.1231884   0.0682846   0.1780922
0-24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                0.0323887   0.0196381   0.0451393
0-24 months   ki1101329-Keneba     GAMBIA        <48 cm               NA                0.0537634   0.0272886   0.0802383
0-24 months   ki1101329-Keneba     GAMBIA        [48-50) cm           NA                0.0576132   0.0368903   0.0783360
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                0.0117424   0.0076330   0.0158519
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               NA                0.0220638   0.0167592   0.0273684
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           NA                0.0188576   0.0144500   0.0232652
0-24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                0.0648464   0.0507467   0.0789461
0-24 months   ki1135781-COHORTS    INDIA         <48 cm               NA                0.1194523   0.1056389   0.1332657
0-24 months   ki1135781-COHORTS    INDIA         [48-50) cm           NA                0.0900354   0.0774170   0.1026538
0-24 months   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                0.0376085   0.0260272   0.0491897
0-24 months   ki1135781-COHORTS    PHILIPPINES   <48 cm               NA                0.0684736   0.0497743   0.0871729
0-24 months   ki1135781-COHORTS    PHILIPPINES   [48-50) cm           NA                0.0525328   0.0391378   0.0659279
0-24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                0.0649855   0.0482736   0.0816973
0-24 months   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               NA                0.0591984   0.0519772   0.0664195
0-24 months   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           NA                0.0494037   0.0389011   0.0599064
0-24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                0.0461538   0.0209322   0.0713755
0-24 months   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               NA                0.1070111   0.0765640   0.1374581
0-24 months   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           NA                0.0598592   0.0340232   0.0856951
0-6 months    ki1000108-IRC        INDIA         >=50 cm              NA                0.2014388   0.1346766   0.2682011
0-6 months    ki1000108-IRC        INDIA         <48 cm               NA                0.1296296   0.0661981   0.1930612
0-6 months    ki1000108-IRC        INDIA         [48-50) cm           NA                0.1521739   0.0921676   0.2121802
0-6 months    ki1101329-Keneba     GAMBIA        >=50 cm              NA                0.0157143   0.0064979   0.0249307
0-6 months    ki1101329-Keneba     GAMBIA        <48 cm               NA                0.0275591   0.0074195   0.0476986
0-6 months    ki1101329-Keneba     GAMBIA        [48-50) cm           NA                0.0307018   0.0148627   0.0465408
0-6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                0.0648464   0.0366331   0.0930597
0-6 months    ki1135781-COHORTS    PHILIPPINES   <48 cm               NA                0.0728155   0.0373126   0.1083185
0-6 months    ki1135781-COHORTS    PHILIPPINES   [48-50) cm           NA                0.0508475   0.0279491   0.0737458
6-24 months   ki1000108-IRC        INDIA         >=50 cm              NA                0.1267606   0.0719684   0.1815528
6-24 months   ki1000108-IRC        INDIA         <48 cm               NA                0.0990991   0.0434426   0.1547556
6-24 months   ki1000108-IRC        INDIA         [48-50) cm           NA                0.1231884   0.0682846   0.1780922
6-24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                0.0323887   0.0196381   0.0451393
6-24 months   ki1101329-Keneba     GAMBIA        <48 cm               NA                0.0537634   0.0272886   0.0802383
6-24 months   ki1101329-Keneba     GAMBIA        [48-50) cm           NA                0.0576132   0.0368903   0.0783360
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                0.0117424   0.0076330   0.0158519
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               NA                0.0220638   0.0167592   0.0273684
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           NA                0.0188576   0.0144500   0.0232652
6-24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                0.0648464   0.0507467   0.0789461
6-24 months   ki1135781-COHORTS    INDIA         <48 cm               NA                0.1194523   0.1056389   0.1332657
6-24 months   ki1135781-COHORTS    INDIA         [48-50) cm           NA                0.0900354   0.0774170   0.1026538
6-24 months   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                0.0376085   0.0260272   0.0491897
6-24 months   ki1135781-COHORTS    PHILIPPINES   <48 cm               NA                0.0684736   0.0497743   0.0871729
6-24 months   ki1135781-COHORTS    PHILIPPINES   [48-50) cm           NA                0.0525328   0.0391378   0.0659279
6-24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                0.0649855   0.0482736   0.0816973
6-24 months   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               NA                0.0591984   0.0519772   0.0664195
6-24 months   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           NA                0.0494037   0.0389011   0.0599064
6-24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                0.0461538   0.0209322   0.0713755
6-24 months   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               NA                0.1070111   0.0765640   0.1374581
6-24 months   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           NA                0.0598592   0.0340232   0.0856951


### Parameter: E(Y)


agecat        studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC        INDIA         NA                   NA                0.1176471   0.0856708   0.1496233
0-24 months   ki1101329-Keneba     GAMBIA        NA                   NA                0.0444887   0.0340722   0.0549052
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0178475   0.0151485   0.0205464
0-24 months   ki1135781-COHORTS    INDIA         NA                   NA                0.0962597   0.0882935   0.1042259
0-24 months   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0509986   0.0428544   0.0591428
0-24 months   kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0577250   0.0519115   0.0635385
0-24 months   kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.0781929   0.0620891   0.0942966
0-6 months    ki1000108-IRC        INDIA         NA                   NA                0.1636364   0.1266348   0.2006379
0-6 months    ki1101329-Keneba     GAMBIA        NA                   NA                0.0226950   0.0149187   0.0304713
0-6 months    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000108-IRC        INDIA         NA                   NA                0.1176471   0.0856708   0.1496233
6-24 months   ki1101329-Keneba     GAMBIA        NA                   NA                0.0444887   0.0340722   0.0549052
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0178475   0.0151485   0.0205464
6-24 months   ki1135781-COHORTS    INDIA         NA                   NA                0.0962597   0.0882935   0.1042259
6-24 months   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0509986   0.0428544   0.0591428
6-24 months   kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0577250   0.0519115   0.0635385
6-24 months   kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.0781929   0.0620891   0.0942966


### Parameter: RR


agecat        studyid              country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC        INDIA         <48 cm               >=50 cm           0.7817818   0.3848567   1.588079
0-24 months   ki1000108-IRC        INDIA         [48-50) cm           >=50 cm           0.9718196   0.5223305   1.808115
0-24 months   ki1101329-Keneba     GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba     GAMBIA        <48 cm               >=50 cm           1.6599462   0.8836747   3.118140
0-24 months   ki1101329-Keneba     GAMBIA        [48-50) cm           >=50 cm           1.7788066   1.0436165   3.031911
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               >=50 cm           1.8789830   1.2289244   2.872900
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           >=50 cm           1.6059385   1.0542918   2.446228
0-24 months   ki1135781-COHORTS    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS    INDIA         <48 cm               >=50 cm           1.8420804   1.4399738   2.356474
0-24 months   ki1135781-COHORTS    INDIA         [48-50) cm           >=50 cm           1.3884408   1.0719666   1.798347
0-24 months   ki1135781-COHORTS    PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS    PHILIPPINES   <48 cm               >=50 cm           1.8206957   1.2063869   2.747819
0-24 months   ki1135781-COHORTS    PHILIPPINES   [48-50) cm           >=50 cm           1.3968346   0.9365072   2.083430
0-24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               >=50 cm           0.9109478   0.6873790   1.207232
0-24 months   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           >=50 cm           0.7602278   0.5547660   1.041784
0-24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               >=50 cm           2.3185731   1.2162415   4.419995
0-24 months   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           >=50 cm           1.2969483   0.6290489   2.673997
0-6 months    ki1000108-IRC        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC        INDIA         <48 cm               >=50 cm           0.6435185   0.3563616   1.162067
0-6 months    ki1000108-IRC        INDIA         [48-50) cm           >=50 cm           0.7554348   0.4513233   1.264463
0-6 months    ki1101329-Keneba     GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba     GAMBIA        <48 cm               >=50 cm           1.7537581   0.6871083   4.476248
0-6 months    ki1101329-Keneba     GAMBIA        [48-50) cm           >=50 cm           1.9537480   0.8946155   4.266784
0-6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS    PHILIPPINES   <48 cm               >=50 cm           1.1228922   0.5841713   2.158420
0-6 months    ki1135781-COHORTS    PHILIPPINES   [48-50) cm           >=50 cm           0.7841213   0.4192175   1.466652
6-24 months   ki1000108-IRC        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC        INDIA         <48 cm               >=50 cm           0.7817818   0.3848567   1.588079
6-24 months   ki1000108-IRC        INDIA         [48-50) cm           >=50 cm           0.9718196   0.5223305   1.808115
6-24 months   ki1101329-Keneba     GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba     GAMBIA        <48 cm               >=50 cm           1.6599462   0.8836747   3.118140
6-24 months   ki1101329-Keneba     GAMBIA        [48-50) cm           >=50 cm           1.7788066   1.0436165   3.031911
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               >=50 cm           1.8789830   1.2289244   2.872900
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           >=50 cm           1.6059385   1.0542918   2.446228
6-24 months   ki1135781-COHORTS    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS    INDIA         <48 cm               >=50 cm           1.8420804   1.4399738   2.356474
6-24 months   ki1135781-COHORTS    INDIA         [48-50) cm           >=50 cm           1.3884408   1.0719666   1.798347
6-24 months   ki1135781-COHORTS    PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS    PHILIPPINES   <48 cm               >=50 cm           1.8206957   1.2063869   2.747819
6-24 months   ki1135781-COHORTS    PHILIPPINES   [48-50) cm           >=50 cm           1.3968346   0.9365072   2.083430
6-24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               >=50 cm           0.9109478   0.6873790   1.207232
6-24 months   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           >=50 cm           0.7602278   0.5547660   1.041784
6-24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               >=50 cm           2.3185731   1.2162415   4.419995
6-24 months   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           >=50 cm           1.2969483   0.6290489   2.673997


### Parameter: PAR


agecat        studyid              country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC        INDIA         >=50 cm              NA                -0.0091135   -0.0520559   0.0338289
0-24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.0121000    0.0015599   0.0226402
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.0061051    0.0022936   0.0099165
0-24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.0314133    0.0182304   0.0445962
0-24 months   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.0133901    0.0033280   0.0234522
0-24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                -0.0072605   -0.0222628   0.0077418
0-24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.0320390    0.0067946   0.0572835
0-6 months    ki1000108-IRC        INDIA         >=50 cm              NA                -0.0378025   -0.0888698   0.0132648
0-6 months    ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.0069807   -0.0008342   0.0147957
0-6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                -0.0038851   -0.0264075   0.0186373
6-24 months   ki1000108-IRC        INDIA         >=50 cm              NA                -0.0091135   -0.0520559   0.0338289
6-24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.0121000    0.0015599   0.0226402
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.0061051    0.0022936   0.0099165
6-24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.0314133    0.0182304   0.0445962
6-24 months   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.0133901    0.0033280   0.0234522
6-24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                -0.0072605   -0.0222628   0.0077418
6-24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.0320390    0.0067946   0.0572835


### Parameter: PAF


agecat        studyid              country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC        INDIA         >=50 cm              NA                -0.0774648   -0.5113100   0.2318384
0-24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.2719802    0.0031447   0.4683152
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.3420684    0.0983224   0.5199238
0-24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.3263391    0.1772877   0.4483867
0-24 months   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.2625581    0.0417437   0.4324894
0-24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                -0.1257774   -0.4166344   0.1053622
0-24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.4097436    0.0080287   0.6487775
0-6 months    ki1000108-IRC        INDIA         >=50 cm              NA                -0.2310152   -0.5832892   0.0428796
0-6 months    ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.3075893   -0.1125539   0.5690702
0-6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                -0.0637306   -0.5049984   0.2481568
6-24 months   ki1000108-IRC        INDIA         >=50 cm              NA                -0.0774648   -0.5113100   0.2318384
6-24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.2719802    0.0031447   0.4683152
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.3420684    0.0983224   0.5199238
6-24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.3263391    0.1772877   0.4483867
6-24 months   ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.2625581    0.0417437   0.4324894
6-24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                -0.1257774   -0.4166344   0.1053622
6-24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.4097436    0.0080287   0.6487775
