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

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        birthlen      pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       26     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0      120     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1        8     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       83     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        1     241
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       33     180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0     180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       72     180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        1     180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       74     180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        0     180
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               0       23     197
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               1        1     197
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                0       97     197
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                1        7     197
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       61     197
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            1        8     197
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               0       37     172
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        1     172
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                0       68     172
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                1        0     172
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0       66     172
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0     172
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               0       32     271
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               1        0     271
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                0      135     271
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                1        1     271
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            0      103     271
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            1        0     271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       41     232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        0     232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       96     232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        1     232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       93     232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        1     232
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       15     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       54     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       52     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     121
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       15     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        0     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       44     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        5     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       39     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        1     104
0-24 months   ki1000108-IRC              INDIA                          >=50 cm               0      124     391
0-24 months   ki1000108-IRC              INDIA                          >=50 cm               1       18     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm                0      100     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm                1       11     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm            0      121     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm            1       17     391
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               0       40     180
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               1        4     180
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                0       82     180
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                1        4     180
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            0       48     180
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            1        2     180
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               0        4      18
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               1        1      18
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                0        6      18
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                1        0      18
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            0        6      18
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        1      18
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               0      198    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               1        8    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                0      634    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                1       78    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            0      410    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            1       25    1353
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               0       22     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               1        3     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                0       73     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                1       11     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            0       65     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            1        5     179
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      153     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        2     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      218     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1        8     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      254     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1        5     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               0      165     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               1        0     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                0      268     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                1       12     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            0      271     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            1       14     730
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               0      717    1506
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               1       24    1506
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                0      264    1506
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                1       15    1506
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            0      458    1506
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            1       28    1506
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                0        1       1
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                1        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0       1
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               0       63     115
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               1        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                0       16     115
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                1        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            0       36     115
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            1        0     115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               0        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            1        0       2
0-24 months   ki1114097-CMIN             PERU                           >=50 cm               0       12      15
0-24 months   ki1114097-CMIN             PERU                           >=50 cm               1        1      15
0-24 months   ki1114097-CMIN             PERU                           <48 cm                0        1      15
0-24 months   ki1114097-CMIN             PERU                           <48 cm                1        0      15
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm            0        1      15
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm            1        0      15
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm               0        1       2
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm               1        0       2
0-24 months   ki1114097-CONTENT          PERU                           <48 cm                0        1       2
0-24 months   ki1114097-CONTENT          PERU                           <48 cm                1        0       2
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            0        0       2
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            1        0       2
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               0    14883   16581
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               1      156   16581
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                0      180   16581
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                1        0   16581
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            0     1359   16581
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            1        3   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               0     2609    9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               1       31    9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                0     2881    9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                1       65    9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            0     3590    9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            1       69    9245
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               0      340     699
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               1        7     699
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                0      136     699
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                1        5     699
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            0      206     699
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            1        5     699
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm               0     1096    5267
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm               1       76    5267
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm                0     1865    5267
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm                1      253    5267
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm            0     1799    5267
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm            1      178    5267
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               0      998    2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               1       39    2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                0      653    2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                1       48    2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            0     1010    2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            1       56    2804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               0     3990   30980
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               1      248   30980
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                0    18064   30980
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                1     1130   30980
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            0     7180   30980
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            1      368   30980
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               0     2262    8820
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               1      134    8820
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                0     3844    8820
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                1      436    8820
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            0     2026    8820
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            1      118    8820
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       26     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0      126     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1        2     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       82     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        2     241
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       33     180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0     180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       73     180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        0     180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       74     180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        0     180
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm               0       23     196
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm               1        1     196
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                0       97     196
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                1        6     196
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       63     196
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm            1        6     196
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm               0       36     172
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        2     172
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                0       67     172
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                1        1     172
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0       66     172
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0     172
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm               0       32     271
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm               1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                0      136     271
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm            0      103     271
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm            1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       41     231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        0     231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       96     231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        0     231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       92     231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        2     231
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       15     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       54     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       52     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     121
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       11     101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        3     101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       39     101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        8     101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       38     101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        2     101
0-6 months    ki1000108-IRC              INDIA                          >=50 cm               0      111     385
0-6 months    ki1000108-IRC              INDIA                          >=50 cm               1       28     385
0-6 months    ki1000108-IRC              INDIA                          <48 cm                0       94     385
0-6 months    ki1000108-IRC              INDIA                          <48 cm                1       14     385
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm            0      117     385
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm            1       21     385
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm               0       42     176
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm               1        2     176
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                0       74     176
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                1        8     176
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm            0       48     176
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm            1        2     176
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm               0        4      17
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm               1        0      17
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                0        6      17
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                1        0      17
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm            0        6      17
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        1      17
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      152     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        3     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      219     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1        5     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      252     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1        6     637
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm               0      689    1410
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm               1       11    1410
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                0      247    1410
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                1        7    1410
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm            0      442    1410
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm            1       14    1410
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                0        1       1
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                1        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0       1
0-6 months    ki1114097-CMIN             PERU                           >=50 cm               0       12      15
0-6 months    ki1114097-CMIN             PERU                           >=50 cm               1        1      15
0-6 months    ki1114097-CMIN             PERU                           <48 cm                0        1      15
0-6 months    ki1114097-CMIN             PERU                           <48 cm                1        0      15
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm            0        1      15
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm            1        0      15
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm               0        1       2
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm               1        0       2
0-6 months    ki1114097-CONTENT          PERU                           <48 cm                0        1       2
0-6 months    ki1114097-CONTENT          PERU                           <48 cm                1        0       2
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm            0        0       2
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm            1        0       2
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       25     228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3     228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0      109     228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1       10     228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       78     228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        3     228
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       28     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       64     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        1     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       70     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        0     163
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               0       22     188
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               1        1     188
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                0       86     188
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                1       11     188
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       58     188
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            1       10     188
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               0       37     167
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        0     167
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                0       65     167
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                1        0     167
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0       65     167
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0     167
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               0       27     240
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               1        0     240
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                0      124     240
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                1        1     240
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            0       87     240
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            1        1     240
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       39     216
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        0     216
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       89     216
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        1     216
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       86     216
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        1     216
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       14     114
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     114
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       52     114
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     114
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       48     114
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     114
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       15     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        0     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       44     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        5     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       37     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        3     104
6-24 months   ki1000108-IRC              INDIA                          >=50 cm               0      124     391
6-24 months   ki1000108-IRC              INDIA                          >=50 cm               1       18     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm                0       98     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm                1       13     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm            0      123     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm            1       15     391
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               0       36     176
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               1        4     176
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                0       80     176
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                1        6     176
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            0       42     176
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            1        8     176
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               0        3      13
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               1        0      13
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                0        5      13
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                1        0      13
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            0        4      13
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        1      13
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               0      165    1193
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               1        8    1193
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                0      516    1193
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                1      122    1193
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            0      326    1193
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            1       56    1193
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               0       20     160
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               1        2     160
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                0       65     160
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                1       11     160
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            0       55     160
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            1        7     160
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      140     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        5     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      194     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1       20     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      229     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1       13     601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               0      158     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               1        3     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                0      241     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                1       24     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            0      256     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            1       15     697
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               0      658    1399
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               1       45    1399
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                0      220    1399
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                1       31    1399
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            0      401    1399
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            1       44    1399
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                0        1       1
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0       1
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               0       63     113
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               1        0     113
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                0       16     113
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                1        0     113
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            0       34     113
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            1        0     113
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               0        0       1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               1        0       1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                0        0       1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                1        0       1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            0        1       1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            1        0       1
6-24 months   ki1114097-CMIN             PERU                           >=50 cm               0       11      12
6-24 months   ki1114097-CMIN             PERU                           >=50 cm               1        0      12
6-24 months   ki1114097-CMIN             PERU                           <48 cm                0        1      12
6-24 months   ki1114097-CMIN             PERU                           <48 cm                1        0      12
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm            0        0      12
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm            1        0      12
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm               0        1       2
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm               1        0       2
6-24 months   ki1114097-CONTENT          PERU                           <48 cm                0        1       2
6-24 months   ki1114097-CONTENT          PERU                           <48 cm                1        0       2
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            0        0       2
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            1        0       2
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               0     6434    7097
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               1        1    7097
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                0       79    7097
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            0      582    7097
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            1        1    7097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               0      435    2198
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               1       11    2198
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                0      903    2198
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                1       50    2198
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            0      768    2198
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            1       31    2198
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               0      283     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               1        7     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                0      118     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                1        9     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            0      180     601
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            1        4     601
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               0      923    2634
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               1       47    2634
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                0      593    2634
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                1       66    2634
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            0      925    2634
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            1       80    2634
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               0     2074    8438
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               1      192    8438
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                0     3590    8438
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                1      528    8438
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            0     1874    8438
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            1      180    8438


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a83cca1f-86a8-491f-bd95-9f09499070cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a83cca1f-86a8-491f-bd95-9f09499070cf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a83cca1f-86a8-491f-bd95-9f09499070cf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a83cca1f-86a8-491f-bd95-9f09499070cf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1267586    0.0719666   0.1815505
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.0991048    0.0434478   0.1547617
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1231849    0.0682817   0.1780881
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0388350    0.0114714   0.0661985
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1095506    0.0778598   0.1412413
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0574713    0.0276190   0.0873235
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0321722    0.0195159   0.0448284
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0577025    0.0312831   0.0841219
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0586573    0.0380967   0.0792180
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0116744    0.0076252   0.0157235
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0231847    0.0178950   0.0284743
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0189013    0.0145205   0.0232822
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0201729    0.0053698   0.0349760
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.0354610    0.0049129   0.0660091
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0236967    0.0031589   0.0442345
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0679481    0.0541176   0.0817786
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1184497    0.1050452   0.1318542
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0896248    0.0772940   0.1019556
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0359970    0.0247362   0.0472579
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0708300    0.0524684   0.0891916
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0518467    0.0386860   0.0650074
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0578443    0.0464317   0.0692570
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0583561    0.0533653   0.0633468
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0481269    0.0409944   0.0552594
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0551845    0.0402965   0.0700725
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1028277    0.0878888   0.1177666
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0550476    0.0402736   0.0698216
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                0.2014388    0.1346766   0.2682011
0-6 months    ki1000108-IRC             INDIA         <48 cm               NA                0.1296296    0.0661981   0.1930612
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           NA                0.1521739    0.0921676   0.2121802
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0157143    0.0064979   0.0249307
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0275591    0.0074195   0.0476986
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0307018    0.0148627   0.0465408
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1267606    0.0719684   0.1815528
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.1171171    0.0572202   0.1770140
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1086957    0.0566980   0.1606933
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0462428   -0.0003954   0.0928810
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1912226    0.1649733   0.2174718
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.1465969    0.1109065   0.1822872
6-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.0344828    0.0047588   0.0642067
6-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.0934579    0.0544274   0.1324885
6-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.0537190    0.0252891   0.0821490
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0620307    0.0444971   0.0795642
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1340887    0.0959175   0.1722599
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1016687    0.0748741   0.1284634
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0245509    0.0104762   0.0386256
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0526392    0.0385271   0.0667512
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0392261    0.0257927   0.0526595
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0474758    0.0342744   0.0606772
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.1064127    0.0841125   0.1287129
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0787397    0.0623684   0.0951110
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0845099    0.0629565   0.1060634
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1296034    0.1122435   0.1469632
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0878034    0.0677148   0.1078921


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1176471   0.0856708   0.1496233
0-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0820399   0.0573937   0.1066861
0-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0444887   0.0340722   0.0549052
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0178475   0.0151485   0.0205464
0-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0243205   0.0128927   0.0357482
0-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0962597   0.0882935   0.1042259
0-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0509986   0.0428544   0.0591428
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0563589   0.0522997   0.0604181
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0780045   0.0689447   0.0870643
0-6 months    ki1000108-IRC             INDIA         NA                   NA                0.1636364   0.1266348   0.2006379
0-6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0226950   0.0149187   0.0304713
6-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1176471   0.0856708   0.1496233
6-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1559095   0.1400659   0.1717530
6-24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0857756   0.0710963   0.1004548
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0418562   0.0334823   0.0502301
6-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0732726   0.0633192   0.0832259
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1066603   0.0950623   0.1182584


### Parameter: RR


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.7818389   0.3848919    1.588166
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9718075   0.5223210    1.808102
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.8209264   1.5294182    5.203041
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.4798847   0.6628767    3.303871
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.7935536   0.9812293    3.278372
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.8232317   1.0770479    3.086375
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.9859464   1.3114050    3.007449
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.6190469   1.0669584    2.456809
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           1.7578521   0.5669193    5.450589
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           1.1746784   0.3773324    3.656907
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           1.7432382   1.3815250    2.199656
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.3190185   1.0320278    1.685817
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.9676622   1.3114677    2.952184
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.4403041   0.9632327    2.153660
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.0088463   0.8180746    1.244105
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.8320075   0.6531111    1.059906
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.8633446   1.3694410    2.535380
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9975198   0.6780632    1.467482
0-6 months    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.6435185   0.3563616    1.162067
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.7554348   0.4513233    1.264463
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.7537581   0.6871083    4.476248
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.9537480   0.8946155    4.266784
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.9239239   0.4729571    1.804890
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.8574879   0.4500102    1.633931
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           4.1351880   1.4893093   11.481685
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           3.1701570   1.0389523    9.673106
6-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           2.7102804   1.0399963    7.063121
6-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           1.5578512   0.5665507    4.283642
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           2.1616516   1.4482861    3.226391
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.6390078   1.1139319    2.411590
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           2.1440816   1.1387139    4.037086
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.5977457   0.8194876    3.115107
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           2.2414110   1.5840788    3.171511
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.6585237   1.1727551    2.345503
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.5335875   1.1471351    2.050230
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           1.0389719   0.7350784    1.468500


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0091115   -0.0520536   0.0338306
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.0432050    0.0181178   0.0682921
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0123165    0.0018441   0.0227889
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0061731    0.0024083   0.0099380
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                 0.0041475   -0.0073486   0.0156437
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0283117    0.0153238   0.0412996
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0150015    0.0051783   0.0248248
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0014854   -0.0117277   0.0087569
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0228201    0.0092418   0.0363983
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0378025   -0.0888698   0.0132648
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0069807   -0.0008342   0.0147957
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0091135   -0.0520559   0.0338289
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.1096667    0.0628113   0.1565221
6-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                 0.0287452   -0.0001756   0.0576659
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0237449    0.0094754   0.0380144
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0173053    0.0036672   0.0309434
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0257968    0.0139142   0.0376794
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0221504    0.0033931   0.0409077


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0774477   -0.5112904   0.2318528
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.5266333    0.1384809   0.7399060
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.2768464    0.0102654   0.4716249
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.3458818    0.1060865   0.5213513
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                 0.1705374   -0.4549860   0.5271375
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.2941174    0.1486207   0.4147494
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.2941558    0.0791192   0.4589787
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0263561   -0.2249426   0.1400357
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.2925481    0.0988872   0.4445887
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.2310152   -0.5832892   0.0428796
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.3075893   -0.1125539   0.5690702
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0774648   -0.5113100   0.2318384
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.7033998    0.1955708   0.8906409
6-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                 0.4546279   -0.2155353   0.7553089
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.2768258    0.0972859   0.4206573
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.4134464   -0.0037964   0.6572561
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.3520664    0.1759978   0.4905135
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.2076724    0.0103706   0.3656383
