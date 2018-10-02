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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                   0       28     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                   1       10     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                   0      157     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                   1       47     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                   0        4     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                   1        0     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                   0      193     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                   1       12     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                   0       69     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                   1       55     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                   0       75     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                   1       30     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                   0        1     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                   1        0     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                   0      190     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                   1       45     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                   0      184     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                   1       14     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                   0       59     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                   1        6     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      204     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       42     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        3     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      212     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       29     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     241
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                   0      244     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                   1      125     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                   0      180     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                   1       53     602
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                   0       25     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                   1        7     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                   0      538     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                   1      115     685
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       77     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       15     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0      560     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       91     743
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                   0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                   0      194     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                   1        7     215
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                   0      666     870
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                   1      123     870
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                   0       73     870
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                   1        8     870
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                   0     2500    5168
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                   1      702    5168
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                   0     1675    5168
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                   1      291    5168
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                   0      661    1185
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                   1      345    1185
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                   0      142    1185
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                   1       37    1185
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                   0      753     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                   1       54     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                   0        3     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                   1        0     810
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                   0    13092   52958
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                   1     2880   52958
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                   0    30894   52958
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                   1     6092   52958
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                   0     1640   10470
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      730   10470
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     6106   10470
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                   1     1994   10470
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                   0       35     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                   1        3     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                   0      188     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                   1       15     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                   0        4     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                   1        0     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                   0      198     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                   1        7     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                   0      102     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                   1       22     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                   0       90     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                   1       14     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                   0        1     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                   1        0     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                   0      218     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                   1       15     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                   0      194     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                   1        4     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                   0       64     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                   1        1     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      234     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       11     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        0     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      233     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1        8     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     241
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                   0      325     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                   1       32     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                   0      213     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                   1       14     584
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                   0       31     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                   1        1     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                   0      614     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                   1       35     681
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       87     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                   1        4     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                   0      631     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       16     738
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                   0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                   0      198     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                   1        3     215
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                   0      571     650
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                   1       12     650
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                   0       67     650
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                   1        0     650
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                   0     2687    4723
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                   1      254    4723
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                   0     1651    4723
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                   1      131    4723
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                   0      911    1180
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                   1       90    1180
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                   0      162    1180
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                   1       17    1180
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                   0      265     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                   1        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                   0        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                   1        0     265
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                   0    14576   52422
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                   1     1230   52422
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                   0    34090   52422
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                   1     2526   52422
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                   0     2156    9890
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                   1       58    9890
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                   0     7484    9890
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                   1      192    9890
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                   0       30     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                   1        8     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                   0      166     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                   1       36     240
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                   0        4     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                   1        0     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                   0      197     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                   1        6     207
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                   0       84     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                   1       41     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                   0       87     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                   1       21     233
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                   0        1     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                   1        0     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                   0      198     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                   1       36     235
6-24 months                   ki0047075b-MAL-ED       PERU                           0                   0      186     263
6-24 months                   ki0047075b-MAL-ED       PERU                           0                   1       12     263
6-24 months                   ki0047075b-MAL-ED       PERU                           1                   0       60     263
6-24 months                   ki0047075b-MAL-ED       PERU                           1                   1        5     263
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      211     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       35     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        3     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     250
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      212     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       25     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     237
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                   0      223     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                   1      110     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                   0      159     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                   1       49     541
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                   0       23     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                   1        6     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                   0      491     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                   1       93     613
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       75     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       14     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0      550     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       80     719
6-24 months                   ki1114097-CONTENT       PERU                           0                   0       14     215
6-24 months                   ki1114097-CONTENT       PERU                           0                   1        0     215
6-24 months                   ki1114097-CONTENT       PERU                           1                   0      197     215
6-24 months                   ki1114097-CONTENT       PERU                           1                   1        4     215
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                   0      660     858
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                   1      118     858
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                   0       71     858
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                   1        9     858
6-24 months                   ki1135781-COHORTS       INDIA                          0                   0     2637    5025
6-24 months                   ki1135781-COHORTS       INDIA                          0                   1      485    5025
6-24 months                   ki1135781-COHORTS       INDIA                          1                   0     1727    5025
6-24 months                   ki1135781-COHORTS       INDIA                          1                   1      176    5025
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                   0      669    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                   1      297    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                   0      123    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                   1       24    1113
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                   0      736     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                   1       62     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                   0        3     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                   1        0     801
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     8000   34514
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                   1     1815   34514
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                   0    20856   34514
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                   1     3843   34514
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                   0     1694   10541
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      705   10541
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     6233   10541
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                   1     1909   10541


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
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/74cd07ac-52ac-4e1a-a8e5-f82de0eb949c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/74cd07ac-52ac-4e1a-a8e5-f82de0eb949c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/74cd07ac-52ac-4e1a-a8e5-f82de0eb949c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/74cd07ac-52ac-4e1a-a8e5-f82de0eb949c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2631579   0.1228601   0.4034557
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.2303922   0.1724892   0.2882951
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                0.4435484   0.3559146   0.5311822
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                0.2857143   0.1991167   0.3723119
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                0.0707071   0.0349345   0.1064797
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                0.0923077   0.0218048   0.1628106
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3387534   0.2904231   0.3870837
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2274678   0.1735975   0.2813381
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2187500   0.0754126   0.3620874
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1761103   0.1468731   0.2053474
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1630435   0.0875082   0.2385788
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1397849   0.1131296   0.1664403
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1558935   0.1305672   0.1812199
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0987654   0.0337559   0.1637749
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                0.2192380   0.2049063   0.2335696
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                0.1480163   0.1323174   0.1637152
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3429423   0.3135966   0.3722881
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.2067039   0.1473572   0.2660507
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1803156   0.1712671   0.1893640
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1647110   0.1584858   0.1709362
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3080169   0.2780615   0.3379723
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2461728   0.2311676   0.2611781
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                0.1774194   0.1100315   0.2448072
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                0.1346154   0.0688742   0.2003566
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0896359   0.0599784   0.1192934
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0616740   0.0303530   0.0929950
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                0.0863652   0.0762120   0.0965184
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                0.0735129   0.0613946   0.0856312
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0899101   0.0721820   0.1076382
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0949721   0.0520051   0.1379390
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0778185   0.0714094   0.0842277
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0689862   0.0648008   0.0731716
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0261969   0.0153125   0.0370813
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0250130   0.0197940   0.0302321
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2105263   0.0806335   0.3404191
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1782178   0.1253328   0.2311029
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                0.3280000   0.2455200   0.4104800
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                0.1944444   0.1196420   0.2692469
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                0.0606061   0.0273076   0.0939046
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3303303   0.2797674   0.3808933
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2355769   0.1778536   0.2933003
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2068966   0.0593445   0.3544486
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1592466   0.1295460   0.1889472
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1573034   0.0816096   0.2329971
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1269841   0.1009666   0.1530016
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1516710   0.1264510   0.1768909
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    NA                0.1125000   0.0432186   0.1817814
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                0.1553491   0.1426414   0.1680569
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                0.0924856   0.0794678   0.1055033
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3074534   0.2783416   0.3365652
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.1632653   0.1034895   0.2230411
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1849210   0.1735124   0.1963297
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1555933   0.1484975   0.1626892
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2938724   0.2650715   0.3226734
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2344633   0.2196071   0.2493195


### Parameter: E(Y)


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         NA                   NA                0.3711790   0.3084692   0.4338889
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          NA                   NA                0.0760456   0.0439490   0.1081423
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2956811   0.2591967   0.3321655
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1781022   0.1494298   0.2067746
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1426649   0.1175009   0.1678289
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.1505747   0.1267966   0.1743528
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         NA                   NA                0.1921440   0.1814014   0.2028866
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.3223629   0.2957407   0.3489850
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1694173   0.1641071   0.1747274
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2601719   0.2464131   0.2739308
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         NA                   NA                0.1578947   0.1104594   0.2053301
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0787671   0.0569010   0.1006332
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         NA                   NA                0.0815160   0.0737115   0.0893204
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0906780   0.0742871   0.1070688
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0716493   0.0679955   0.0753031
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0252781   0.0205710   0.0299851
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED       INDIA         NA                   NA                0.2660944   0.2092298   0.3229590
6-24 months                   ki0047075b-MAL-ED       PERU          NA                   NA                0.0646388   0.0348650   0.0944125
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1615008   0.1323459   0.1906557
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1307371   0.1060790   0.1553953
6-24 months                   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.1480186   0.1242431   0.1717942
6-24 months                   ki1135781-COHORTS       INDIA         NA                   NA                0.1315423   0.1221962   0.1408884
6-24 months                   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2884097   0.2617831   0.3150363
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1639335   0.1578066   0.1700603
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2479841   0.2343635   0.2616046


### Parameter: RR


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.8754902   0.4855992   1.5784275
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    0                 0.6441558   0.4486035   0.9249521
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    0                 1.3054945   0.5222733   3.2632643
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.6714850   0.5092866   0.8853406
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.8050755   0.4095159   1.5827141
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.8573477   0.5194920   1.4149304
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    0                 0.6335441   0.3216154   1.2480068
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    0                 0.6751398   0.5960537   0.7647192
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.6027366   0.4467012   0.8132761
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.9134596   0.8599893   0.9702544
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7992187   0.7137393   0.8949353
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    0                 0.7587413   0.4087001   1.4085836
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.6880507   0.3753063   1.2614063
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    0                 0.8511868   0.6951725   1.0422148
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    0                 1.0563004   0.6448455   1.7302913
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8865012   0.8042031   0.9772212
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.9548076   0.5987694   1.5225523
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.8465347   0.4268827   1.6787303
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    0                 0.5928184   0.3743886   0.9386870
6-24 months                   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       PERU          1                    0                 1.2692308   0.4637317   3.4738766
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.7131556   0.5342100   0.9520430
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.7696918   0.3682779   1.6086371
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.8072562   0.4784930   1.3619063
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    0                 0.7417373   0.3919391   1.4037237
6-24 months                   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS       INDIA         1                    0                 0.5953400   0.5058978   0.7005955
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5310245   0.3638114   0.7750912
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8414042   0.7803404   0.9072465
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7978403   0.7117483   0.8943458


### Parameter: PAR


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0276207   -0.1555737    0.1003323
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0723693   -0.1297745   -0.0149642
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                 0.0053386   -0.0142333    0.0249104
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0430723   -0.0714170   -0.0147277
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0406478   -0.1801043    0.0988087
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0203786   -0.0905630    0.0498058
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0053188   -0.0119076    0.0012700
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                -0.0270940   -0.0352353   -0.0189528
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0205795   -0.0309591   -0.0101999
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0108983   -0.0182752   -0.0035214
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0478450   -0.0734144   -0.0222755
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0195246   -0.0625568    0.0235076
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0108687   -0.0276715    0.0059340
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                -0.0048492   -0.0108168    0.0011184
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0007679   -0.0062838    0.0078195
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0061692   -0.0112733   -0.0010652
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0009189   -0.0103208    0.0084830
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0271930   -0.1452429    0.0908569
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0619056   -0.1142241   -0.0095870
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                 0.0040327   -0.0140160    0.0220815
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0364301   -0.0661886   -0.0066717
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0453957   -0.1887891    0.0979976
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0265662   -0.0967027    0.0435703
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0036523   -0.0105690    0.0032644
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                -0.0238068   -0.0307477   -0.0168660
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0190437   -0.0282820   -0.0098054
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0209876   -0.0304456   -0.0115295
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0458884   -0.0704334   -0.0213434


### Parameter: PAF


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1172669   -0.8165230    0.3128162
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                -0.1949715   -0.3617151   -0.0486459
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                 0.0702020   -0.2244063    0.2939237
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1456716   -0.2455888   -0.0537694
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.2282275   -1.3227669    0.3505406
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.1428425   -0.7570441    0.2566555
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0353235   -0.0797837    0.0073060
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                -0.1410089   -0.1838266   -0.0997399
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0638395   -0.0965357   -0.0321182
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0643280   -0.1088422   -0.0216009
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1838975   -0.2860790   -0.0898345
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                -0.1236559   -0.4302158    0.1171943
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1379856   -0.3692526    0.0542203
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                -0.0594877   -0.1350911    0.0110801
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0084682   -0.0724153    0.0832512
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0861033   -0.1596622   -0.0172104
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0363505   -0.4830095    0.2757819
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1483254   -1.0107857    0.3442110
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                -0.2326452   -0.4450270   -0.0514780
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                 0.0623886   -0.2611311    0.3029153
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1239541   -0.2298173   -0.0272038
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.2810867   -1.5605012    0.3590383
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.2032034   -0.8778521    0.2290668
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0246746   -0.0723714    0.0209007
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                -0.1809824   -0.2338818   -0.1303509
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0660301   -0.0984667   -0.0345512
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1280249   -0.1872914   -0.0717168
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1850457   -0.2881561   -0.0901888
