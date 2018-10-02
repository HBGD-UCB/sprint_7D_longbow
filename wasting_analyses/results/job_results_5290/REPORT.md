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
![](/tmp/e8aedeaa-f076-4b47-8463-ee187682d018/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e8aedeaa-f076-4b47-8463-ee187682d018/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e8aedeaa-f076-4b47-8463-ee187682d018/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e8aedeaa-f076-4b47-8463-ee187682d018/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2516946   0.1212923   0.3820969
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.2295673   0.1720400   0.2870946
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                0.4362689   0.3498359   0.5227019
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                0.2929249   0.2075625   0.3782873
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                0.0707071   0.0349345   0.1064797
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                0.0923077   0.0218048   0.1628106
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3389699   0.2915982   0.3863415
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2270701   0.1749599   0.2791804
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2187500   0.0754126   0.3620874
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1761103   0.1468731   0.2053474
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2191003   0.1481781   0.2900224
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1408397   0.1142013   0.1674781
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1558935   0.1305672   0.1812199
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0987654   0.0337559   0.1637749
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                0.2157283   0.2020340   0.2294226
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                0.1665664   0.1506706   0.1824622
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3426051   0.3137332   0.3714770
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.2785002   0.2315290   0.3254714
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1977386   0.1886210   0.2068563
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1654689   0.1593487   0.1715892
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3017200   0.2741269   0.3293132
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2478280   0.2328247   0.2628313
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                0.1775848   0.1102160   0.2449537
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                0.1347489   0.0690446   0.2004533
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0909229   0.0614038   0.1204420
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0622160   0.0314671   0.0929649
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                0.0886084   0.0787609   0.0984559
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                0.0797799   0.0676217   0.0919380
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0901215   0.0723592   0.1078838
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0906602   0.0504138   0.1309066
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0805012   0.0742225   0.0867800
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0699270   0.0657363   0.0741178
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0265330   0.0165338   0.0365322
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0251675   0.0199109   0.0304242
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2105263   0.0806335   0.3404191
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1782178   0.1253328   0.2311029
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                0.2784595   0.2000911   0.3568279
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                0.1587896   0.0870117   0.2305675
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                0.0606061   0.0273076   0.0939046
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3096618   0.2611743   0.3581494
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1955958   0.1426209   0.2485707
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2068966   0.0593445   0.3544486
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1592466   0.1295460   0.1889472
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1570053   0.0814045   0.2326061
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1270234   0.1010140   0.1530329
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1516710   0.1264510   0.1768909
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    NA                0.1125000   0.0432186   0.1817814
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                0.1521935   0.1401990   0.1641881
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                0.1113619   0.0977682   0.1249556
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3062390   0.2773290   0.3351490
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.1641909   0.1153215   0.2130603
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2018837   0.1901207   0.2136466
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1588230   0.1516947   0.1659513
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2867949   0.2603413   0.3132486
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2363076   0.2214281   0.2511871


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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.9120866   0.5132325   1.6209067
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    0                 0.6714320   0.4737074   0.9516864
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    0                 1.3054945   0.5222733   3.2632643
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.6698830   0.5136750   0.8735936
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.8050755   0.4095159   1.5827141
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.6428093   0.4417479   0.9353837
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    0                 0.6335441   0.3216154   1.2480068
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    0                 0.7721118   0.6888908   0.8653864
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.8128898   0.6734517   0.9811986
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8368063   0.7913684   0.8848531
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8213840   0.7367864   0.9156952
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    0                 0.7587862   0.4090850   1.4074252
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.6842722   0.3790915   1.2351330
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    0                 0.9003645   0.7456453   1.0871876
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    0                 1.0059777   0.6189482   1.6350173
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8686454   0.7910456   0.9538576
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.9485366   0.6151375   1.4626350
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.8465347   0.4268827   1.6787303
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    0                 0.5702430   0.3379164   0.9623004
6-24 months                   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       PERU          1                    0                 1.2692308   0.4637317   3.4738766
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.6316433   0.4635834   0.8606289
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.7696918   0.3682779   1.6086371
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.8090391   0.4795479   1.3649196
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    0                 0.7417373   0.3919391   1.4037237
6-24 months                   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS       INDIA         1                    0                 0.7317124   0.6333819   0.8453085
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5361528   0.3923558   0.7326509
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7867055   0.7324429   0.8449880
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8239603   0.7384061   0.9194270


### Parameter: PAR


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0161574   -0.1349294    0.1026145
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0650899   -0.1208219   -0.0093578
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                 0.0053386   -0.0142333    0.0249104
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0432888   -0.0706021   -0.0159755
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0406478   -0.1801043    0.0988087
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0764354   -0.1424109   -0.0104600
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0053188   -0.0119076    0.0012700
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                -0.0235843   -0.0314759   -0.0156927
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0202422   -0.0306059   -0.0098785
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0283213   -0.0359860   -0.0206567
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0415481   -0.0654665   -0.0176297
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0196901   -0.0627089    0.0233287
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0121558   -0.0289053    0.0045938
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                -0.0070924   -0.0130748   -0.0011101
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0005565   -0.0065567    0.0076696
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0088519   -0.0140578   -0.0036461
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0012549   -0.0099040    0.0073941
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0271930   -0.1452429    0.0908569
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0123651   -0.0601331    0.0354030
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                 0.0040327   -0.0140160    0.0220815
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0157616   -0.0435248    0.0120015
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0453957   -0.1887891    0.0979976
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0262682   -0.0962977    0.0437614
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0036523   -0.0105690    0.0032644
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                -0.0206512   -0.0272336   -0.0140689
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0178293   -0.0270307   -0.0086280
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0379502   -0.0479871   -0.0279134
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0388108   -0.0616873   -0.0159344


### Parameter: PAF


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0685982   -0.7133161    0.3335134
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                -0.1753598   -0.3367571   -0.0334492
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                 0.0702020   -0.2244063    0.2939237
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1464037   -0.2428757   -0.0574198
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.2282275   -1.3227669    0.3505406
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.5357689   -1.0866809   -0.1303052
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0353235   -0.0797837    0.0073060
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                -0.1227430   -0.1647553   -0.0822461
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0627934   -0.0956949   -0.0308798
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1671692   -0.2138662   -0.1222686
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1596948   -0.2557895   -0.0709535
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                -0.1247040   -0.4311478    0.1161226
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1543253   -0.3850700    0.0379786
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                -0.0870066   -0.1634075   -0.0156229
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0061366   -0.0754759    0.0815559
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1235452   -0.1990753   -0.0527728
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0496456   -0.4538559    0.2421835
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1483254   -1.0107857    0.3442110
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0464688   -0.2412662    0.1177582
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                 0.0623886   -0.2611311    0.3029153
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0536292   -0.1523688    0.0366500
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.2810867   -1.5605012    0.3590383
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.2009236   -0.8745750    0.2306429
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0246746   -0.0723714    0.0209007
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                -0.1569932   -0.2081804   -0.1079746
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0618194   -0.0942275   -0.0303712
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.2314977   -0.2949031   -0.1711969
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1565054   -0.2531019   -0.0673552
