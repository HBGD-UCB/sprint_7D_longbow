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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

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







# Results Detail

## Results Plots
![](/tmp/d007ae42-df02-415d-a9bf-c21ff2466943/e6c5f4fa-f9a7-4d5f-9a1e-3dac54051e06/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d007ae42-df02-415d-a9bf-c21ff2466943/e6c5f4fa-f9a7-4d5f-9a1e-3dac54051e06/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.2593917   0.1705015   0.3482819
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         optimal              NA                0.2933717   0.2064051   0.3803383
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          optimal              NA                0.0707158   0.0348788   0.1065528
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.2257782   0.1717951   0.2797613
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.1761400   0.1468957   0.2053843
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.1468571   0.1127662   0.1809480
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         optimal              NA                0.1646486   0.1467885   0.1825088
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.2705183   0.1944174   0.3466193
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.1711129   0.1605513   0.1816746
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.2617762   0.2279919   0.2955605
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         optimal              NA                0.1382938   0.0727423   0.2038453
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.0651365   0.0347803   0.0954927
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         optimal              NA                0.0793724   0.0666902   0.0920545
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.1155926   0.0826280   0.1485573
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.0725311   0.0650308   0.0800314
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.0185824   0.0097195   0.0274454
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.2080935   0.1170076   0.2991794
6-24 months                   ki0047075b-MAL-ED       INDIA         optimal              NA                0.1991908   0.1229629   0.2754187
6-24 months                   ki0047075b-MAL-ED       PERU          optimal              NA                0.0806457   0.0379530   0.1233385
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.2366179   0.1788082   0.2944276
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.2118400   0.1483818   0.2752982
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.1585298   0.1147124   0.2023473
6-24 months                   ki1135781-COHORTS       INDIA         optimal              NA                0.1102261   0.0946552   0.1257971
6-24 months                   ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.1751956   0.1113749   0.2390162
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.1623974   0.1494050   0.1753898
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.2608170   0.2289380   0.2926960


### Parameter: E(Y)


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    observed             NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         observed             NA                0.3711790   0.3084692   0.4338889
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          observed             NA                0.0760456   0.0439490   0.1081423
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    observed             NA                0.2976589   0.2609818   0.3343359
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    observed             NA                0.1781022   0.1494298   0.2067746
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    observed             NA                0.1426649   0.1175009   0.1678289
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         observed             NA                0.1925912   0.1818265   0.2033558
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   observed             NA                0.3301642   0.3030549   0.3572735
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    observed             NA                0.1739632   0.1661367   0.1817897
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    observed             NA                0.2693935   0.2426940   0.2960930
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         observed             NA                0.1578947   0.1104594   0.2053301
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    observed             NA                0.0793103   0.0572998   0.1013209
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         observed             NA                0.0835141   0.0755270   0.0915012
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   observed             NA                0.0935315   0.0766512   0.1104118
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    observed             NA                0.0752554   0.0699632   0.0805476
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    observed             NA                0.0243328   0.0149179   0.0337477
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    observed             NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED       INDIA         observed             NA                0.2660944   0.2092298   0.3229590
6-24 months                   ki0047075b-MAL-ED       PERU          observed             NA                0.0646388   0.0348650   0.0944125
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    observed             NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    observed             NA                0.1615008   0.1323459   0.1906557
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    observed             NA                0.1307371   0.1060790   0.1553953
6-24 months                   ki1135781-COHORTS       INDIA         observed             NA                0.1315423   0.1221962   0.1408884
6-24 months                   ki1135781-COHORTS       PHILIPPINES   observed             NA                0.2884097   0.2617831   0.3150363
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    observed             NA                0.1648339   0.1556475   0.1740202
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    observed             NA                0.2573427   0.2311603   0.2835250


### Parameter: RR


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    observed             optimal           0.9080368   0.6985361   1.1803695
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         observed             optimal           1.2652175   1.0054531   1.5920935
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          observed             optimal           1.0753702   0.8160893   1.4170275
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.3183686   1.0834626   1.6042047
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    observed             optimal           1.0111398   0.9724746   1.0513424
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    observed             optimal           0.9714538   0.8292616   1.1380274
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         observed             optimal           1.1697101   1.0669015   1.2824255
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   observed             optimal           1.2204874   0.9347996   1.5934854
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0166574   0.9762628   1.0587235
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           1.0290985   0.9360417   1.1314065
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         observed             optimal           1.1417339   0.7899909   1.6500902
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.2176021   0.8341548   1.7773139
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         observed             optimal           1.0521812   0.9272835   1.1939017
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   observed             optimal           0.8091473   0.6468699   1.0121345
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0375605   0.9600324   1.1213494
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           1.3094517   0.9164143   1.8710574
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    observed             optimal           0.8810142   0.6373569   1.2178200
6-24 months                   ki0047075b-MAL-ED       INDIA         observed             optimal           1.3358773   0.9912293   1.8003587
6-24 months                   ki0047075b-MAL-ED       PERU          observed             optimal           0.8015152   0.5774933   1.1124400
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.2420878   1.0172450   1.5166278
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    observed             optimal           0.7623717   0.5859386   0.9919308
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    observed             optimal           0.8246847   0.6672178   1.0193147
6-24 months                   ki1135781-COHORTS       INDIA         observed             optimal           1.1933857   1.0567004   1.3477514
6-24 months                   ki1135781-COHORTS       PHILIPPINES   observed             optimal           1.6462157   1.1619418   2.3323253
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0150032   0.9629279   1.0698946
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           0.9866791   0.9051158   1.0755923


### Parameter: PAR


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.0238545   -0.0919678   0.0442588
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0778073    0.0102115   0.1454031
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          optimal              NA                 0.0053299   -0.0142851   0.0249448
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0718807    0.0273279   0.1164335
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                 0.0019622   -0.0049095   0.0088338
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                -0.0041922   -0.0274152   0.0190308
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         optimal              NA                 0.0279425    0.0127421   0.0431430
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.0596459   -0.0125171   0.1318088
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0028503   -0.0040834   0.0097841
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0076173   -0.0172911   0.0325257
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0196009   -0.0317014   0.0709032
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0141738   -0.0108273   0.0391750
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         optimal              NA                 0.0041417   -0.0058889   0.0141723
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                -0.0220612   -0.0481738   0.0040514
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0027243   -0.0029167   0.0083653
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0057504   -0.0016140   0.0131147
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.0247602   -0.0930297   0.0435094
6-24 months                   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0669037    0.0070636   0.1267437
6-24 months                   ki0047075b-MAL-ED       PERU          optimal              NA                -0.0160070   -0.0425099   0.0104960
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0572823    0.0098281   0.1047366
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.0503392   -0.1056777   0.0049993
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                -0.0277927   -0.0615244   0.0059390
6-24 months                   ki1135781-COHORTS       INDIA         optimal              NA                 0.0213162    0.0078322   0.0348001
6-24 months                   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.1132141    0.0517407   0.1746875
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0024365   -0.0061058   0.0109787
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                -0.0034743   -0.0259233   0.0189747


### Parameter: PAF


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.1012770   -0.4315651    0.1528077
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.2096221    0.0054236    0.3718962
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          optimal              NA                 0.0700877   -0.2253561    0.2942974
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.2414868    0.0770332    0.3766382
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                 0.0110171   -0.0283045    0.0488351
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                -0.0293851   -0.2058920    0.1212865
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         optimal              NA                 0.1450873    0.0627064    0.2202276
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.1806552   -0.0697480    0.3724448
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0163845   -0.0243144    0.0554663
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0282757   -0.0683284    0.1161444
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         optimal              NA                 0.1241392   -0.2658373    0.3939725
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.1787137   -0.1988182    0.4373532
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         optimal              NA                 0.0495934   -0.0784189    0.1624101
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                -0.2358689   -0.5459059    0.0119890
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0362007   -0.0416315    0.1082173
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.2363216   -0.0912095    0.4655429
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.1350555   -0.5689796    0.1788606
6-24 months                   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.2514283   -0.0088483    0.4445551
6-24 months                   ki0047075b-MAL-ED       PERU          optimal              NA                -0.2476370   -0.7316218    0.1010751
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.1949039    0.0169527    0.3406425
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.3116962   -0.7066634   -0.0081348
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                -0.2125846   -0.4987610    0.0189487
6-24 months                   ki1135781-COHORTS       INDIA         optimal              NA                 0.1620479    0.0536579    0.2580234
6-24 months                   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.3925462    0.1393717    0.5712433
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0147814   -0.0384993    0.0653285
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                -0.0135008   -0.1048310    0.0702797
