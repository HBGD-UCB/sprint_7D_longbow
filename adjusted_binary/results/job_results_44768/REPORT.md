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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                 country                        impsan    ever_swasted   n_cell       n
----------------------------  ----------------------  -----------------------------  -------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                    0      193     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                    1       11     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                    0       37     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                    1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                    0      202     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                    1        3     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                    0      103     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                    1        2     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                    0      116     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                    1        8     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                    0      232     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                    1        3     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                    0        1     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                    1        0     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                    0       65     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                    1        0     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                    0      195     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                    1        3     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      235     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       11     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      235     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        6     241
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                    0      216     598
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                    1       17     598
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                    0      328     598
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                    1       37     598
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                    0      635     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                    1       18     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                    0       31     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                    1        1     685
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      634     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1       17     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       89     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1        3     743
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                    0      201     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                    1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                    0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                    1        0     215
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                    0       26     415
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                    1        0     415
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                    0      372     415
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                    1       17     415
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                    0     1904    5156
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                    1       58    5156
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                    0     3001    5156
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                    1      193    5156
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                    0      156    1157
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                    1       10    1157
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                    0      902    1157
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                    1       89    1157
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                    0        3     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                    1        0     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                    0      799     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                    1        8     810
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                    0     8825   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                    1      331   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     3679   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                    1      162   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     1041    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                    1       44    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                    0      318    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                    1       15    1418
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                    0      197     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                    1        6     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                    0       37     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                    1        1     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                    0      203     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                    1        2     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                    0        4     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                    1        0     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                    0      103     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                    1        1     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                    0      120     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                    1        4     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                    0      232     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                    1        1     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                    0        1     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                    1        0     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                    0       65     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                    1        0     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                    0      197     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                    1        1     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      242     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1        3     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      239     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        2     241
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                    0      224     580
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                    1        3     580
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                    0      347     580
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                    1        6     580
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                    0      643     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                    1        6     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                    0       32     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                    1        0     681
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      646     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1        1     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       91     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1        0     738
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                    0      201     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                    1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                    0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                    1        0     215
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                    0       20     294
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                    1        0     294
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                    0      274     294
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                    1        0     294
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                    0     1728    4610
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                    1       22    4610
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                    0     2801    4610
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                    1       59    4610
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                    0      159    1144
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                    1        3    1144
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                    0      968    1144
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                    1       14    1144
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                    0        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                    1        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                    0      265     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                    1        0     265
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                    0     8876   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                    1      159   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                    0     3712   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                    1       76   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                    0      984    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                    1        3    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                    0      286    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                    1        1    1274
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                    0      197     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                    1        5     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                    0       38     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                    1        0     240
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                    0      201     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                    1        2     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     207
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                    0      107     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                    1        1     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                    0      121     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                    1        4     233
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                    0      232     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                    1        2     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                    0        1     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                    1        0     235
6-24 months                   ki0047075b-MAL-ED       PERU                           1                    0       65     263
6-24 months                   ki0047075b-MAL-ED       PERU                           1                    1        0     263
6-24 months                   ki0047075b-MAL-ED       PERU                           0                    0      196     263
6-24 months                   ki0047075b-MAL-ED       PERU                           0                    1        2     263
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      237     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1        9     250
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      233     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        4     237
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                    0      194     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                    1       14     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                    0      300     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                    1       33     541
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                    0      572     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                    1       12     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                    0       28     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                    1        1     613
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      613     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1       17     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       86     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1        3     719
6-24 months                   ki1114097-CONTENT       PERU                           1                    0      201     215
6-24 months                   ki1114097-CONTENT       PERU                           1                    1        0     215
6-24 months                   ki1114097-CONTENT       PERU                           0                    0       14     215
6-24 months                   ki1114097-CONTENT       PERU                           0                    1        0     215
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                    0       26     416
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                    1        0     416
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                    0      370     416
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                    1       20     416
6-24 months                   ki1135781-COHORTS       INDIA                          1                    0     1863    5025
6-24 months                   ki1135781-COHORTS       INDIA                          1                    1       40    5025
6-24 months                   ki1135781-COHORTS       INDIA                          0                    0     2969    5025
6-24 months                   ki1135781-COHORTS       INDIA                          0                    1      153    5025
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                    0      140    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                    1        7    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                    0      889    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                    1       77    1113
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                    0        3     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                    1        0     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                    0      789     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                    1        9     801
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                    0     5956    8548
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                    1      182    8548
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     2312    8548
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                    1       98    8548
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     1047    1430
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                    1       46    1430
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                    0      320    1430
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                    1       17    1430


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/4e5b32a1-8a8c-4a71-aad3-e058a42809a1/fe8c32a3-dfc9-4d15-9f8a-d310ceefd7a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4e5b32a1-8a8c-4a71-aad3-e058a42809a1/fe8c32a3-dfc9-4d15-9f8a-d310ceefd7a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4e5b32a1-8a8c-4a71-aad3-e058a42809a1/fe8c32a3-dfc9-4d15-9f8a-d310ceefd7a2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4e5b32a1-8a8c-4a71-aad3-e058a42809a1/fe8c32a3-dfc9-4d15-9f8a-d310ceefd7a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0729614   0.0395396   0.1063831
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    0                    NA                0.1013699   0.0703807   0.1323590
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.0295617   0.0220664   0.0370570
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         0                    NA                0.0604258   0.0521616   0.0686900
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0602410   0.0240303   0.0964516
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   0                    NA                0.0898083   0.0719999   0.1076166
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0361512   0.0316317   0.0406706
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0421765   0.0356512   0.0487018
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0405530   0.0290356   0.0520704
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    0                    NA                0.0450450   0.0145740   0.0755161
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.0125714   0.0073508   0.0177920
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         0                    NA                0.0206294   0.0154195   0.0258393
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0175982   0.0144080   0.0207885
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0200634   0.0154464   0.0246803
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0673077   0.0332261   0.1013893
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    0                    NA                0.0990991   0.0669772   0.1312210
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.0210194   0.0145738   0.0274651
6-24 months                   ki1135781-COHORTS     INDIA         0                    NA                0.0490070   0.0414336   0.0565805
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0476190   0.0131777   0.0820604
6-24 months                   ki1135781-COHORTS     PHILIPPINES   0                    NA                0.0797101   0.0626228   0.0967975
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0296514   0.0247594   0.0345433
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0406639   0.0323969   0.0489309
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0420860   0.0303034   0.0538686
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    0                    NA                0.0504451   0.0220293   0.0788609


### Parameter: E(Y)


agecat                        studyid               country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    NA                   NA                0.0903010   0.0673101   0.1132919
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         NA                   NA                0.0486811   0.0428066   0.0545557
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   NA                   NA                0.0855661   0.0694412   0.1016910
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0379318   0.0341156   0.0417480
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    NA                   NA                0.0416079   0.0305327   0.0526831
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         NA                   NA                0.0175705   0.0137775   0.0213635
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0183264   0.0155587   0.0210942
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months                   ki1135781-COHORTS     INDIA         NA                   NA                0.0384080   0.0330939   0.0437221
6-24 months                   ki1135781-COHORTS     PHILIPPINES   NA                   NA                0.0754717   0.0599461   0.0909973
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0327562   0.0284806   0.0370318
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    NA                   NA                0.0440559   0.0331293   0.0549826


### Parameter: RR


agecat                        studyid               country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    0                    1                 1.389363   0.8010200   2.409841
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         0                    1                 2.044059   1.5324307   2.726503
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   0                    1                 1.490817   0.7916512   2.807469
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.166671   0.9619390   1.414977
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    0                    1                 1.110770   0.5261596   2.344934
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         0                    1                 1.640973   1.0092928   2.667998
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.140078   0.8660736   1.500771
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    0                    1                 1.472330   0.8070491   2.686025
6-24 months                   ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS     INDIA         0                    1                 2.331510   1.6538794   3.286781
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS     PHILIPPINES   0                    1                 1.673913   0.7872542   3.559187
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.371401   1.0595029   1.775117
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    0                    1                 1.198619   0.6288309   2.284698


### Parameter: PAR


agecat                        studyid               country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0173396   -0.0105018   0.0451811
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.0191195    0.0121960   0.0260430
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0253252   -0.0092432   0.0598935
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0017807   -0.0005028   0.0040642
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0010549   -0.0067456   0.0088554
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.0049991    0.0004220   0.0095761
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0007282   -0.0008315   0.0022879
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0195685   -0.0092883   0.0484252
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.0173885    0.0111983   0.0235787
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0278526   -0.0055227   0.0612280
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0031048    0.0004208   0.0057889
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0019699   -0.0054749   0.0094148


### Parameter: PAF


agecat                        studyid               country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.1920203   -0.1785961   0.4460943
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.3927491    0.2420519   0.5134843
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.2959718   -0.2437483   0.6014823
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0469440   -0.0155815   0.1056201
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0253534   -0.1790977   0.1943535
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.2845150   -0.0194796   0.4978626
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0397358   -0.0495524   0.1214280
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.2252455   -0.1819773   0.4921691
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.4527321    0.2813770   0.5832277
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.3690476   -0.2598982   0.6840214
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0947866    0.0089185   0.1732150
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0447146   -0.1376326   0.1978340
