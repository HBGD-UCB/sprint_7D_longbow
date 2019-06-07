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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                 country                        impsan    ever_wasted   n_cell       n
----------------------------  ----------------------  -----------------------------  -------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                   0      157     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                   1       47     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                   0       28     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                   1       10     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                   0      193     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                   1       12     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                   0        4     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                   1        0     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                   0       75     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                   1       30     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                   0       69     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                   1       55     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                   0      190     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                   1       45     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                   0        1     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                   1        0     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                   0       59     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                   1        6     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                   0      184     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                   1       14     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        3     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      204     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       42     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      212     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       29     241
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                   0      180     598
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                   1       53     598
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                   0      240     598
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                   1      125     598
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                   0      538     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                   1      115     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                   0       25     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                   1        7     685
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0      560     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       91     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       77     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       15     743
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                   0      194     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                   1        7     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                   0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                   1        0     215
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                   0       26     415
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                   1        0     415
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                   0      302     415
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                   1       87     415
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                   0     1671    5156
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                   1      291    5156
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                   0     2492    5156
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                   1      702    5156
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                   0      129    1157
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                   1       37    1157
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                   0      646    1157
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                   1      345    1157
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                   0        3     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                   1        0     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                   0      753     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                   1       54     810
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                   0     7630   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                   1     1526   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     3106   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                   1      735   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                   0      808    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      277    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      228    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      105    1418
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                   0      188     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                   1       15     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                   0       35     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                   1        3     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                   0      198     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                   1        7     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                   0        4     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                   1        0     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                   0       90     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                   1       14     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                   0      102     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                   1       22     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                   0      218     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                   1       15     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                   0        1     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                   1        0     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                   0       64     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                   1        1     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                   0      194     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                   1        4     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        0     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      234     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       11     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      233     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1        8     241
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                   0      213     580
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                   1       14     580
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                   0      321     580
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                   1       32     580
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                   0      614     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                   1       35     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                   0       31     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                   1        1     681
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                   0      631     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       16     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       87     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                   1        4     738
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                   0      198     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                   1        3     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                   0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                   1        0     215
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                   0       20     294
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                   1        0     294
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                   0      266     294
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                   1        8     294
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                   0     1619    4610
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                   1      131    4610
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                   0     2606    4610
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                   1      254    4610
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                   0      145    1144
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                   1       17    1144
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                   0      892    1144
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                   1       90    1144
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                   0        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                   1        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                   0      265     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                   1        0     265
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                   0     8394   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                   1      641   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                   0     3464   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                   1      324   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                   0      968    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                   1       19    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                   0      275    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                   1       12    1274
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                   0      166     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                   1       36     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                   0       30     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                   1        8     240
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                   0      197     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                   1        6     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                   0        4     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                   1        0     207
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                   0       87     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                   1       21     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                   0       84     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                   1       41     233
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                   0      198     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                   1       36     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                   0        1     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                   1        0     235
6-24 months                   ki0047075b-MAL-ED       PERU                           1                   0       60     263
6-24 months                   ki0047075b-MAL-ED       PERU                           1                   1        5     263
6-24 months                   ki0047075b-MAL-ED       PERU                           0                   0      186     263
6-24 months                   ki0047075b-MAL-ED       PERU                           0                   1       12     263
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        3     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      211     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       35     250
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      212     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       25     237
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                   0      159     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                   1       49     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                   0      223     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                   1      110     541
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                   0      491     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                   1       93     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                   0       23     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                   1        6     613
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0      550     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       80     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       75     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       14     719
6-24 months                   ki1114097-CONTENT       PERU                           1                   0      197     215
6-24 months                   ki1114097-CONTENT       PERU                           1                   1        4     215
6-24 months                   ki1114097-CONTENT       PERU                           0                   0       14     215
6-24 months                   ki1114097-CONTENT       PERU                           0                   1        0     215
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                   0       25     416
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                   1        1     416
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                   0      307     416
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                   1       83     416
6-24 months                   ki1135781-COHORTS       INDIA                          1                   0     1727    5025
6-24 months                   ki1135781-COHORTS       INDIA                          1                   1      176    5025
6-24 months                   ki1135781-COHORTS       INDIA                          0                   0     2637    5025
6-24 months                   ki1135781-COHORTS       INDIA                          0                   1      485    5025
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                   0      123    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                   1       24    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                   0      669    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                   1      297    1113
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                   0        3     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                   1        0     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                   0      736     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                   1       62     801
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                   0     5181    8548
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                   1      957    8548
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     1958    8548
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                   1      452    8548
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                   0      825    1430
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      268    1430
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      237    1430
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      100    1430


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/2dac1dbb-ef84-4702-bdd9-cac4c790b07f/7152d8b1-be76-4527-97e4-47b88558ecb6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2dac1dbb-ef84-4702-bdd9-cac4c790b07f/7152d8b1-be76-4527-97e4-47b88558ecb6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2dac1dbb-ef84-4702-bdd9-cac4c790b07f/7152d8b1-be76-4527-97e4-47b88558ecb6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2dac1dbb-ef84-4702-bdd9-cac4c790b07f/7152d8b1-be76-4527-97e4-47b88558ecb6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.2303922   0.1724892   0.2882951
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2631579   0.1228601   0.4034557
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                0.2857143   0.1991167   0.3723119
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                0.4435484   0.3559146   0.5311822
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                0.0923077   0.0218048   0.1628106
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                0.0707071   0.0349345   0.1064797
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2274678   0.1735972   0.2813384
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3424658   0.2937429   0.3911886
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1761103   0.1468731   0.2053474
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2187500   0.0754126   0.3620874
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1397849   0.1131296   0.1664403
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1630435   0.0875082   0.2385788
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                0.1483180   0.1325899   0.1640461
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                0.2197871   0.2054246   0.2341496
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.2228916   0.1595528   0.2862303
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3481332   0.3184609   0.3778055
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1666667   0.1578338   0.1754996
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1913564   0.1779555   0.2047574
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2552995   0.2264954   0.2841036
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3153153   0.2615317   0.3690989
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                0.1346154   0.0688742   0.2003566
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                0.1774194   0.1100315   0.2448072
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0616740   0.0303528   0.0929952
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0906516   0.0606746   0.1206286
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                0.0748571   0.0625262   0.0871881
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                0.0888112   0.0783844   0.0992380
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.1049383   0.0577239   0.1521526
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0916497   0.0735957   0.1097037
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0709463   0.0648162   0.0770764
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0855333   0.0756404   0.0954262
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0192503   0.0104359   0.0280646
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0418118   0.0113104   0.0723133
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1782178   0.1253328   0.2311029
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2105263   0.0806335   0.3404191
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                0.1944444   0.1196420   0.2692469
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                0.3280000   0.2455200   0.4104800
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                0.0606061   0.0273076   0.0939046
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2355769   0.1778536   0.2933003
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3303303   0.2797674   0.3808933
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1592466   0.1295460   0.1889472
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2068966   0.0593445   0.3544486
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1269841   0.1009666   0.1530016
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1573034   0.0816096   0.2329971
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                0.0924856   0.0794678   0.1055033
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                0.1553491   0.1426414   0.1680569
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.1632653   0.1034895   0.2230411
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3074534   0.2783416   0.3365652
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1559140   0.1457289   0.1660991
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1875519   0.1704519   0.2046519
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2451967   0.2163987   0.2739947
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2967359   0.2471076   0.3463642


### Parameter: E(Y)


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         NA                   NA                0.3711790   0.3084692   0.4338889
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          NA                   NA                0.0760456   0.0439490   0.1081423
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2976589   0.2609818   0.3343359
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1781022   0.1494298   0.2067746
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1426649   0.1175009   0.1678289
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         NA                   NA                0.1925912   0.1818265   0.2033558
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.3301642   0.3030549   0.3572735
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1739632   0.1661367   0.1817897
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2693935   0.2426940   0.2960930
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         NA                   NA                0.1578947   0.1104594   0.2053301
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0793103   0.0572998   0.1013209
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         NA                   NA                0.0835141   0.0755270   0.0915012
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0935315   0.0766512   0.1104118
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0752554   0.0699632   0.0805476
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0243328   0.0149179   0.0337477
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED       INDIA         NA                   NA                0.2660944   0.2092298   0.3229590
6-24 months                   ki0047075b-MAL-ED       PERU          NA                   NA                0.0646388   0.0348650   0.0944125
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1615008   0.1323459   0.1906557
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1307371   0.1060790   0.1553953
6-24 months                   ki1135781-COHORTS       INDIA         NA                   NA                0.1315423   0.1221962   0.1408884
6-24 months                   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2884097   0.2617831   0.3150363
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1648339   0.1556475   0.1740202
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2573427   0.2311603   0.2835250


### Parameter: RR


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.1422172   0.6335419   2.059312
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    1                 1.5524194   1.0811371   2.229140
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    1                 0.7659933   0.3064416   1.914706
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.5055570   1.1421214   1.984642
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.2421196   0.6318260   2.441908
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.1663880   0.7067486   1.924957
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    1                 1.4818635   1.3083143   1.678434
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.5618949   1.1609334   2.101340
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1481385   1.0581302   1.245803
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2350798   1.0152585   1.502496
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    1                 1.3179724   0.7099330   2.446782
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.4698503   0.8018271   2.694421
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    1                 1.1864090   0.9691341   1.452396
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    1                 0.8733677   0.5344282   1.427266
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2056054   1.0460940   1.389439
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 2.1720154   0.9004039   5.239483
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.1812865   0.5956883   2.342564
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    1                 1.6868571   1.0653179   2.671022
6-24 months                   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       PERU          0                    1                 0.7878788   0.2878628   2.156419
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.4022185   1.0503728   1.871923
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.2992214   0.6216443   2.715341
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.2387640   0.7342649   2.089895
6-24 months                   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS       INDIA         0                    1                 1.6797124   1.4273571   1.976684
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.8831522   1.2901707   2.748677
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2029189   1.0813621   1.338140
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2101953   0.9958029   1.470746


### Parameter: PAR


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0051450   -0.0187352   0.0290252
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0854648    0.0179760   0.1529535
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                -0.0162621   -0.0757925   0.0432684
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0701911    0.0256288   0.1147533
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0019919   -0.0048752   0.0088590
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0028799   -0.0070536   0.0128135
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                 0.0442731    0.0310449   0.0575013
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1072727    0.0473099   0.1672354
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0072966    0.0028409   0.0117522
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0140940    0.0000361   0.0281518
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0232794   -0.0279966   0.0745554
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0176363   -0.0087754   0.0440481
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                 0.0086570   -0.0013633   0.0186772
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0114068   -0.0547980   0.0319844
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0043091    0.0009124   0.0077058
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0050826   -0.0022250   0.0123901
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0051155   -0.0171404   0.0273714
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0716500    0.0113024   0.1319976
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                -0.0122843   -0.0672089   0.0426403
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0583233    0.0109297   0.1057168
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0022542   -0.0049112   0.0094197
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0037530   -0.0061815   0.0136875
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                 0.0390567    0.0277228   0.0503907
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1251444    0.0673666   0.1829222
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0089199    0.0035274   0.0143124
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0121460   -0.0009355   0.0252274


### Parameter: PAF


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0218438   -0.0849294   0.1181090
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                 0.2302521    0.0256412   0.3918957
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                -0.2138462   -1.3054314   0.3608908
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.2358104    0.0716420   0.3709477
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0111842   -0.0281096   0.0489762
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0201867   -0.0519095   0.0873415
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                 0.2298813    0.1588752   0.2948933
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.3249070    0.1173754   0.4836416
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0419431    0.0159996   0.0672026
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0523174   -0.0010110   0.1028048
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                 0.1474359   -0.2448096   0.4160830
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.2223712   -0.1856904   0.4899963
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                 0.1036586   -0.0243324   0.2156571
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.1219568   -0.6958920   0.2577433
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0572594    0.0110688   0.1012926
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.2088767   -0.1158288   0.4390931
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0279028   -0.1012521   0.1419104
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                 0.2692652    0.0080455   0.4616958
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                -0.1900452   -1.4225929   0.4154166
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1984458    0.0206735   0.3439480
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0139581   -0.0313765   0.0572999
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0287065   -0.0501857   0.1016722
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                 0.2969139    0.2075716   0.3761833
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.4339119    0.1966511   0.6011001
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0541145    0.0209904   0.0861179
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0471976   -0.0050529   0.0967317
