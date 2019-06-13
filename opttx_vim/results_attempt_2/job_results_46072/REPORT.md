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
![](/tmp/2ef86ce9-e1db-4bb8-be58-68807faceb20/99a6ef9e-9c25-4617-8ac7-52c1a6d7e246/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2ef86ce9-e1db-4bb8-be58-68807faceb20/99a6ef9e-9c25-4617-8ac7-52c1a6d7e246/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.2818539   0.1851546   0.3785533
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         optimal              NA                0.2971089   0.2096407   0.3845771
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          optimal              NA                0.0955666   0.0468340   0.1442993
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.2249179   0.1710813   0.2787545
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.1761087   0.1468668   0.2053506
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.1495599   0.1043770   0.1947428
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         optimal              NA                0.1663810   0.1483513   0.1844107
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.2534546   0.1896336   0.3172756
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.1720324   0.1618195   0.1822453
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.2582361   0.2234303   0.2930418
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         optimal              NA                0.1359270   0.0691795   0.2026746
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.0764521   0.0427139   0.1101903
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         optimal              NA                0.0842945   0.0716759   0.0969132
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.1288245   0.0916373   0.1660116
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.0742313   0.0666087   0.0818539
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.0186832   0.0097860   0.0275803
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.1780115   0.1250538   0.2309692
6-24 months                   ki0047075b-MAL-ED       INDIA         optimal              NA                0.2176014   0.1415180   0.2936848
6-24 months                   ki0047075b-MAL-ED       PERU          optimal              NA                0.0941016   0.0357352   0.1524681
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.2353483   0.1775671   0.2931295
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.1592058   0.1295040   0.1889076
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.1441461   0.1138606   0.1744317
6-24 months                   ki1135781-COHORTS       INDIA         optimal              NA                0.1101341   0.0950871   0.1251810
6-24 months                   ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.1759554   0.1122842   0.2396266
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.1614614   0.1504457   0.1724771
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.2734312   0.2364052   0.3104572


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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    observed             optimal           0.8356711   0.6424269   1.0870439
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         observed             optimal           1.2493030   0.9947602   1.5689791
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          observed             optimal           0.7957342   0.5669215   1.1168969
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.3234111   1.0871725   1.6109834
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    observed             optimal           1.0113195   0.9727092   1.0514624
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    observed             optimal           0.9538978   0.7527443   1.2088049
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         observed             optimal           1.1575309   1.0558421   1.2690134
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   observed             optimal           1.3026564   1.0290386   1.6490283
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0112237   0.9747751   1.0490351
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           1.0432064   0.9458685   1.1505613
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         observed             optimal           1.1616140   0.7935589   1.7003743
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.0373859   0.7377631   1.4586927
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         observed             optimal           0.9907418   0.8840500   1.1103097
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   observed             optimal           0.7260380   0.5746556   0.9172994
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0137959   0.9408846   1.0923574
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           1.3023907   0.9106509   1.8626474
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    observed             optimal           1.0298961   0.9081254   1.1679949
6-24 months                   ki0047075b-MAL-ED       INDIA         observed             optimal           1.2228525   0.9298879   1.6081167
6-24 months                   ki0047075b-MAL-ED       PERU          observed             optimal           0.6869041   0.4595487   1.0267403
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.2487882   1.0221009   1.5257515
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    observed             optimal           1.0144154   0.9698520   1.0610265
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    observed             optimal           0.9069763   0.8020670   1.0256075
6-24 months                   ki1135781-COHORTS       INDIA         observed             optimal           1.1943834   1.0631528   1.3418125
6-24 months                   ki1135781-COHORTS       PHILIPPINES   observed             optimal           1.6391072   1.1597955   2.3165052
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0208872   0.9823087   1.0609807
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           0.9411605   0.8468679   1.0459519


### Parameter: PAR


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.0463167   -0.1209057    0.0282723
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0740701    0.0062309    0.1419094
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          optimal              NA                -0.0195210   -0.0520179    0.0129759
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0727409    0.0282449    0.1172369
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                 0.0019935   -0.0048657    0.0088526
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                -0.0068950   -0.0423955    0.0286054
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         optimal              NA                 0.0262102    0.0108646    0.0415557
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.0767097    0.0167925    0.1366268
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0019308   -0.0043810    0.0082427
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0111575   -0.0142322    0.0365471
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0219677   -0.0300815    0.0740169
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0028582   -0.0232050    0.0289215
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         optimal              NA                -0.0007804   -0.0103862    0.0088254
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                -0.0352930   -0.0657914   -0.0047946
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0010241   -0.0045165    0.0065647
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0056496   -0.0017560    0.0130552
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                 0.0053218   -0.0171000    0.0277437
6-24 months                   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0484930   -0.0118598    0.1088459
6-24 months                   ki0047075b-MAL-ED       PERU          optimal              NA                -0.0294628   -0.0700248    0.0110991
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0585519    0.0112346    0.1058691
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                 0.0022950   -0.0048641    0.0094542
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                -0.0134090   -0.0309509    0.0041329
6-24 months                   ki1135781-COHORTS       INDIA         optimal              NA                 0.0214082    0.0085062    0.0343103
6-24 months                   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.1124543    0.0511558    0.1737529
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0033725   -0.0028473    0.0095922
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                -0.0160885   -0.0447594    0.0125823


### Parameter: PAF


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.1966430   -0.5565973    0.0800739
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.1995536   -0.0052674    0.3626429
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          optimal              NA                -0.2567011   -0.7639126    0.1046622
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.2443769    0.0801828    0.3792611
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                 0.0111928   -0.0280564    0.0489437
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                -0.0483303   -0.3284724    0.1727366
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         optimal              NA                 0.1360922    0.0528887    0.2119863
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.2323379    0.0282192    0.3935823
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0110991   -0.0258777    0.0467430
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0414170   -0.0572295    0.1308590
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         optimal              NA                 0.1391289   -0.2601459    0.4118942
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0360386   -0.3554487    0.3144546
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         optimal              NA                -0.0093447   -0.1311577    0.0993504
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                -0.3773383   -0.7401728   -0.0901566
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0136082   -0.0628296    0.0845487
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.2321813   -0.0981156    0.4631297
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                 0.0290282   -0.1011695    0.1438319
6-24 months                   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.1822399   -0.0753985    0.3781546
6-24 months                   ki0047075b-MAL-ED       PERU          optimal              NA                -0.4558074   -1.1760479    0.0260439
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.1992237    0.0216230    0.3445853
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                 0.0142106   -0.0310852    0.0575165
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                -0.1025647   -0.2467786    0.0249681
6-24 months                   ki1135781-COHORTS       INDIA         optimal              NA                 0.1627479    0.0594014    0.2547394
6-24 months                   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.3899118    0.1377791    0.5683152
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0204598   -0.0180099    0.0574758
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                -0.0625180   -0.1808217    0.0439331
