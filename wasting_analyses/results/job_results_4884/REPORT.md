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
![](/tmp/e9a81ece-dbec-4a9c-982b-cefdbbb38208/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e9a81ece-dbec-4a9c-982b-cefdbbb38208/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e9a81ece-dbec-4a9c-982b-cefdbbb38208/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e9a81ece-dbec-4a9c-982b-cefdbbb38208/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2566755   0.1257156   0.3876354
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.2295936   0.1721449   0.2870423
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                0.4344210   0.3485742   0.5202679
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                0.2946811   0.2099074   0.3794549
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                0.0707071   0.0349345   0.1064797
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                0.0923077   0.0218048   0.1628106
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3173804   0.2705968   0.3641641
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1853636   0.1351963   0.2355308
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2187500   0.0754126   0.3620874
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1761103   0.1468731   0.2053474
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2219390   0.1520691   0.2918089
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1409129   0.1142780   0.1675478
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1558935   0.1305672   0.1812199
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0987654   0.0337559   0.1637749
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                0.2158415   0.2021464   0.2295366
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                0.1664701   0.1505790   0.1823612
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3421270   0.3132558   0.3709981
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.2811751   0.2341767   0.3281735
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1990877   0.1899288   0.2082466
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1654680   0.1593473   0.1715886
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3017160   0.2741084   0.3293236
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2478302   0.2328256   0.2628349
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                0.1774244   0.1100371   0.2448116
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                0.1346106   0.0688694   0.2003518
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0911068   0.0614610   0.1207525
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0618549   0.0313428   0.0923669
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                0.0888992   0.0790657   0.0987326
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                0.0796888   0.0675966   0.0917810
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0901213   0.0723590   0.1078835
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0906605   0.0504143   0.1309067
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0804438   0.0741672   0.0867205
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0699268   0.0657362   0.0741173
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0265934   0.0165962   0.0365906
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0251631   0.0199035   0.0304227
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2105263   0.0806335   0.3404191
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1782178   0.1253328   0.2311029
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                0.3188275   0.2415958   0.3960591
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                0.2012040   0.1297798   0.2726282
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                0.0606061   0.0273076   0.0939046
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3110798   0.2626194   0.3595402
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2012143   0.1476096   0.2548190
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2068966   0.0593445   0.3544486
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1592466   0.1295460   0.1889472
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1578552   0.0823309   0.2333796
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1270786   0.1010566   0.1531007
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1516710   0.1264510   0.1768909
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    NA                0.1125000   0.0432186   0.1817814
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                0.1520442   0.1400557   0.1640326
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                0.1113307   0.0977887   0.1248727
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3067625   0.2778334   0.3356917
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.1641547   0.1137652   0.2145441
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2029540   0.1911411   0.2147669
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1588278   0.1516978   0.1659578
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2867996   0.2603678   0.3132314
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2363029   0.2214259   0.2511800


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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.8944898   0.5078231   1.5755722
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    0                 0.6783307   0.4808678   0.9568794
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    0                 1.3054945   0.5222733   3.2632643
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.5840422   0.4300770   0.7931261
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.8050755   0.4095159   1.5827141
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.6349173   0.4396976   0.9168119
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    0                 0.6335441   0.3216154   1.2480068
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    0                 0.7712609   0.6881188   0.8644486
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.8218443   0.6817746   0.9906911
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8311311   0.7860673   0.8787782
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8214024   0.7367607   0.9157681
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    0                 0.7586930   0.4086731   1.4084975
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.6789272   0.3761431   1.2254435
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    0                 0.8963951   0.7429315   1.0815590
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    0                 1.0059836   0.6189541   1.6350213
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8692621   0.7915908   0.9545545
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.9462158   0.6140596   1.4580413
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.8465347   0.4268827   1.6787303
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    0                 0.6310749   0.4175881   0.9537044
6-24 months                   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       PERU          1                    0                 1.2692308   0.4637317   3.4738766
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.6468253   0.4778836   0.8754914
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.7696918   0.3682779   1.6086371
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.8050327   0.4784966   1.3544039
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    0                 0.7417373   0.3919391   1.4037237
6-24 months                   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS       INDIA         1                    0                 0.7322261   0.6340844   0.8455578
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5351196   0.3881871   0.7376675
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7825804   0.7286313   0.8405241
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8239305   0.7384455   0.9193116


### Parameter: PAR


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0211383   -0.1400874    0.0978107
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0632420   -0.1182713   -0.0082127
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                 0.0053386   -0.0142333    0.0249104
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0216994   -0.0485521    0.0051533
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0406478   -0.1801043    0.0988087
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0792741   -0.1442834   -0.0142649
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0053188   -0.0119076    0.0012700
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                -0.0236975   -0.0315899   -0.0158052
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0197641   -0.0300961   -0.0094321
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0296704   -0.0373820   -0.0219588
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0415440   -0.0654834   -0.0176047
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0195296   -0.0625614    0.0235022
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0123396   -0.0292441    0.0045648
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                -0.0073832   -0.0133386   -0.0014278
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0005567   -0.0065564    0.0076698
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0087945   -0.0139978   -0.0035912
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0013153   -0.0099664    0.0073357
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0271930   -0.1452429    0.0908569
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0527330   -0.0995210   -0.0059451
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                 0.0040327   -0.0140160    0.0220815
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0171796   -0.0446380    0.0102788
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0453957   -0.1887891    0.0979976
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0271181   -0.0970956    0.0428594
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0036523   -0.0105690    0.0032644
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                -0.0205019   -0.0270679   -0.0139359
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0183528   -0.0275340   -0.0091717
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0390205   -0.0491111   -0.0289299
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0388155   -0.0616601   -0.0159710


### Parameter: PAF


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0897452   -0.7324750    0.3145387
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                -0.1703814   -0.3296684   -0.0301761
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                 0.0702020   -0.2244063    0.2939237
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0733878   -0.1679611    0.0135277
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.2282275   -1.3227669    0.3505406
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.5556669   -1.0982352   -0.1533976
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0353235   -0.0797837    0.0073060
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                -0.1233322   -0.1653515   -0.0828280
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0613101   -0.0940897   -0.0295126
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1751322   -0.2221476   -0.1299254
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1596792   -0.2558631   -0.0708618
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                -0.1236876   -0.4302442    0.1171621
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1566597   -0.3896224    0.0372481
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                -0.0905734   -0.1666509   -0.0194569
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0061394   -0.0754720    0.0815578
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1227441   -0.1982328   -0.0520111
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0520348   -0.4562028    0.2399567
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1483254   -1.0107857    0.3442110
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                -0.1981742   -0.3884716   -0.0339580
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                 0.0623886   -0.2611311    0.3029153
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0584540   -0.1560027    0.0308632
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.2810867   -1.5605012    0.3590383
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.2074245   -0.8796891    0.2244068
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0246746   -0.0723714    0.0209007
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                -0.1558578   -0.2068997   -0.1069746
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0636346   -0.0959678   -0.0322553
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.2380263   -0.3017935   -0.1773827
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1565244   -0.2529777   -0.0674960
