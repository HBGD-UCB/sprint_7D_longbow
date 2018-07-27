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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

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

agecat        studyid                 country                        impsan    ever_stunted   n_cell       n
------------  ----------------------  -----------------------------  -------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    0       33     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1        5     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    0      170     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1       34     242
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                    0        4     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                    1        0     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                    0      185     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                    1       21     210
0-6 months    ki0047075b-MAL-ED       INDIA                          0                    0      107     233
0-6 months    ki0047075b-MAL-ED       INDIA                          0                    1       18     233
0-6 months    ki0047075b-MAL-ED       INDIA                          1                    0       88     233
0-6 months    ki0047075b-MAL-ED       INDIA                          1                    1       20     233
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                    0        1     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                    1        0     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                    0      208     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                    1       27     236
0-6 months    ki0047075b-MAL-ED       PERU                           0                    0      174     263
0-6 months    ki0047075b-MAL-ED       PERU                           0                    1       24     263
0-6 months    ki0047075b-MAL-ED       PERU                           1                    0       57     263
0-6 months    ki0047075b-MAL-ED       PERU                           1                    1        8     263
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      223     250
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       23     250
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     250
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     250
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      202     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1       39     241
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    0      327     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1       60     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    0      203     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1       39     629
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0       29     698
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1        3     698
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0      603     698
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1       63     698
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       74     747
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       18     747
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      569     747
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1       86     747
0-6 months    ki1114097-CONTENT       PERU                           0                    0       13     215
0-6 months    ki1114097-CONTENT       PERU                           0                    1        1     215
0-6 months    ki1114097-CONTENT       PERU                           1                    0      184     215
0-6 months    ki1114097-CONTENT       PERU                           1                    1       17     215
0-6 months    ki1135781-COHORTS       GUATEMALA                      0                    0      505     673
0-6 months    ki1135781-COHORTS       GUATEMALA                      0                    1      100     673
0-6 months    ki1135781-COHORTS       GUATEMALA                      1                    0       60     673
0-6 months    ki1135781-COHORTS       GUATEMALA                      1                    1        8     673
0-6 months    ki1135781-COHORTS       INDIA                          0                    0     2837    5201
0-6 months    ki1135781-COHORTS       INDIA                          0                    1      439    5201
0-6 months    ki1135781-COHORTS       INDIA                          1                    0     1732    5201
0-6 months    ki1135781-COHORTS       INDIA                          1                    1      193    5201
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                    0      938    1194
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                    1       77    1194
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                    0      177    1194
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                    1        2    1194
0-6 months    ki1148112-LCNI-5        MALAWI                         0                    0      174     269
0-6 months    ki1148112-LCNI-5        MALAWI                         0                    1       95     269
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    0     5250   27141
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    1     3030   27141
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    0    13151   27141
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    1     5710   27141
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    0      776    5117
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1      386    5117
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    0     2875    5117
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1     1080    5117
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    0       19     195
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1       14     195
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0      103     195
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1       59     195
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     203
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     203
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    0      191     203
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1        8     203
6-24 months   ki0047075b-MAL-ED       INDIA                          0                    0       64     193
6-24 months   ki0047075b-MAL-ED       INDIA                          0                    1       32     193
6-24 months   ki0047075b-MAL-ED       INDIA                          1                    0       64     193
6-24 months   ki0047075b-MAL-ED       INDIA                          1                    1       33     193
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0        1     224
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                    1        0     224
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0      187     224
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                    1       36     224
6-24 months   ki0047075b-MAL-ED       PERU                           0                    0      109     224
6-24 months   ki0047075b-MAL-ED       PERU                           0                    1       61     224
6-24 months   ki0047075b-MAL-ED       PERU                           1                    0       41     224
6-24 months   ki0047075b-MAL-ED       PERU                           1                    1       13     224
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      158     217
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       56     217
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     217
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     217
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       67     181
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      114     181
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0      130     420
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1      123     420
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0      101     420
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1       66     420
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0       15     495
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1        6     495
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0      362     495
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1      112     495
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       63     611
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       15     611
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      432     611
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1      101     611
6-24 months   ki1114097-CONTENT       PERU                           0                    0        9     200
6-24 months   ki1114097-CONTENT       PERU                           0                    1        3     200
6-24 months   ki1114097-CONTENT       PERU                           1                    0      172     200
6-24 months   ki1114097-CONTENT       PERU                           1                    1       16     200
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                    0      138     434
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                    1      251     434
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                    0       20     434
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                    1       25     434
6-24 months   ki1135781-COHORTS       INDIA                          0                    0     2373    4035
6-24 months   ki1135781-COHORTS       INDIA                          1                    0     1662    4035
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                    0      303     871
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                    1      428     871
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                    0       98     871
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                    1       42     871
6-24 months   ki1148112-LCNI-5        MALAWI                         0                    0      394     575
6-24 months   ki1148112-LCNI-5        MALAWI                         0                    1      179     575
6-24 months   ki1148112-LCNI-5        MALAWI                         1                    0        2     575
6-24 months   ki1148112-LCNI-5        MALAWI                         1                    1        0     575
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     2691   13295
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    1      840   13295
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0     7984   13295
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    1     1780   13295
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0      607    4306
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1      318    4306
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     2427    4306
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1      954    4306
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    0       17     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1       21     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0      100     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1      104     242
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    0      174     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1       32     210
0-24 months   ki0047075b-MAL-ED       INDIA                          0                    0       59     233
0-24 months   ki0047075b-MAL-ED       INDIA                          0                    1       66     233
0-24 months   ki0047075b-MAL-ED       INDIA                          1                    0       53     233
0-24 months   ki0047075b-MAL-ED       INDIA                          1                    1       55     233
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0        1     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                    1        0     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0      177     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                    1       58     236
0-24 months   ki0047075b-MAL-ED       PERU                           0                    0       99     263
0-24 months   ki0047075b-MAL-ED       PERU                           0                    1       99     263
0-24 months   ki0047075b-MAL-ED       PERU                           1                    0       35     263
0-24 months   ki0047075b-MAL-ED       PERU                           1                    1       30     263
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      140     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1      106     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        1     250
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       67     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      174     241
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0      167     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1      220     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0      119     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1      123     629
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0       18     698
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1       14     698
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0      418     698
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1      248     698
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       56     747
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       36     747
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      401     747
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1      254     747
0-24 months   ki1114097-CONTENT       PERU                           0                    0        8     215
0-24 months   ki1114097-CONTENT       PERU                           0                    1        6     215
0-24 months   ki1114097-CONTENT       PERU                           1                    0      158     215
0-24 months   ki1114097-CONTENT       PERU                           1                    1       43     215
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                    0      134     877
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                    1      661     877
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                    0       21     877
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                    1       61     877
0-24 months   ki1135781-COHORTS       INDIA                          0                    0     2429    5382
0-24 months   ki1135781-COHORTS       INDIA                          0                    1      938    5382
0-24 months   ki1135781-COHORTS       INDIA                          1                    0     1676    5382
0-24 months   ki1135781-COHORTS       INDIA                          1                    1      339    5382
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                    0      331    1194
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                    1      684    1194
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                    0      127    1194
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                    1       52    1194
0-24 months   ki1148112-LCNI-5        MALAWI                         0                    0      345     813
0-24 months   ki1148112-LCNI-5        MALAWI                         0                    1      465     813
0-24 months   ki1148112-LCNI-5        MALAWI                         1                    0        2     813
0-24 months   ki1148112-LCNI-5        MALAWI                         1                    1        1     813
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     4164   27207
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    1     4135   27207
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0    10965   27207
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    1     7943   27207
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0      500    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1      738    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     2038    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1     2150    5426


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       ever_stunted
## impsan   0   1
##      0  67 174
##      1   0   0
##       ever_stunted
## impsan   0   1
##      0 202  39
##      1   0   0
##       ever_stunted
## impsan   0   1
##      0 174  95
##      1   0   0
##       ever_stunted
## impsan   0   1
##      0  67 114
##      1   0   0
##       ever_stunted
## impsan    0
##      0 2373
##      1 1662
```




# Results Detail

## Results Plots
![](/tmp/e291d706-ab74-44ba-93f5-0499a7430e23/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e291d706-ab74-44ba-93f5-0499a7430e23/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e291d706-ab74-44ba-93f5-0499a7430e23/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e291d706-ab74-44ba-93f5-0499a7430e23/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5526316   0.3942131   0.7110501
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.5098039   0.4410625   0.5785454
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.5280000   0.4402969   0.6157031
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.5092593   0.4147736   0.6037449
0-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.5000000   0.4302229   0.5697771
0-24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.4615385   0.3401157   0.5829612
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5684755   0.5190903   0.6178606
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5082645   0.4452273   0.5713016
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.4375000   0.2654975   0.6095025
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.3723724   0.3356304   0.4091143
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.3913043   0.2915108   0.4910979
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.3877863   0.3504470   0.4251256
0-24 months   ki1114097-CONTENT       PERU          0                    NA                0.4285714   0.1687416   0.6884013
0-24 months   ki1114097-CONTENT       PERU          1                    NA                0.2139303   0.1571067   0.2707540
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.8314465   0.8054091   0.8574840
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.7439024   0.6493768   0.8384281
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.2785863   0.2634423   0.2937302
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.1682382   0.1519035   0.1845730
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.6738916   0.6450398   0.7027434
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.2905028   0.2239672   0.3570384
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.4982528   0.4863006   0.5102050
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4200867   0.4114213   0.4287522
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.5961228   0.5650516   0.6271940
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.5133715   0.4952724   0.5314707
0-6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238794   0.2392785
0-6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1666667   0.1154200   0.2179134
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.1440000   0.0823199   0.2056801
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.1851852   0.1117671   0.2586032
0-6 months    ki0047075b-MAL-ED       PERU          0                    NA                0.1212121   0.0756653   0.1667589
0-6 months    ki0047075b-MAL-ED       PERU          1                    NA                0.1230769   0.0430589   0.2030949
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.1550388   0.1189496   0.1911279
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1611570   0.1147962   0.2075178
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1956522   0.1145356   0.2767687
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1312977   0.1054166   0.1571788
0-6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                0.1652893   0.1356694   0.1949092
0-6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                0.1176471   0.0410119   0.1942822
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                0.1340049   0.1223385   0.1456713
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                0.1002597   0.0868415   0.1136780
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.3659420   0.3547062   0.3771779
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.3027411   0.2949080   0.3105742
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3321859   0.3024619   0.3619099
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2730721   0.2578819   0.2882622
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.4242424   0.2551849   0.5932999
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.3641975   0.2899065   0.4384886
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.3333333   0.2387893   0.4278774
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.3402062   0.2456771   0.4347353
6-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.3588235   0.2865591   0.4310879
6-24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.2407407   0.1264548   0.3550266
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.4861660   0.4245052   0.5478268
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.3952096   0.3209720   0.4694471
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2857143   0.0923040   0.4791246
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.2362869   0.1980059   0.2745679
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1923077   0.1047735   0.2798419
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1894934   0.1561956   0.2227912
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.6452442   0.5976449   0.6928436
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.5555556   0.4102055   0.7009056
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5854993   0.5497667   0.6212319
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.3000000   0.2240473   0.3759527
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2378929   0.2228463   0.2529396
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1823023   0.1737471   0.1908576
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3437838   0.3088665   0.3787011
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2821650   0.2643093   0.3000208


### Parameter: E(Y)


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.5165289   0.4534372   0.5796206
0-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.5193133   0.4550224   0.5836043
0-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.4904943   0.4299617   0.5510268
0-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5453100   0.5063654   0.5842547
0-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.3753582   0.3394105   0.4113058
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.3882195   0.3532480   0.4231911
0-24 months   ki1114097-CONTENT       PERU          NA                   NA                0.2279070   0.1717046   0.2841094
0-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.8232611   0.7980013   0.8485210
0-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.2372724   0.2259059   0.2486388
0-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6164154   0.5888226   0.6440082
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.4439299   0.4364087   0.4514510
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.5322521   0.5160648   0.5484394
0-6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1611570   0.1147371   0.2075770
0-6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.1630901   0.1155503   0.2106299
0-6 months    ki0047075b-MAL-ED       PERU          NA                   NA                0.1216730   0.0820887   0.1612573
0-6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.1573927   0.1289105   0.1858749
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1392236   0.1143819   0.1640652
0-6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                0.1604755   0.1327241   0.1882269
0-6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.1215151   0.1126348   0.1303954
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.3220220   0.3152589   0.3287851
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2864960   0.2726657   0.3003263
6-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.3743590   0.3062579   0.4424600
6-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.3367876   0.2699375   0.4036376
6-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.3303571   0.2686253   0.3920890
6-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.4500000   0.4023647   0.4976353
6-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.2383838   0.2008095   0.2759582
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1898527   0.1587303   0.2209751
6-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.6359447   0.5906239   0.6812655
6-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.5396096   0.5064896   0.5727297
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1970666   0.1890031   0.2051301
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2954018   0.2790421   0.3117615


### Parameter: RR


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.9225023   0.6720271   1.2663337
0-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.9645062   0.7518900   1.2372450
0-24 months   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       PERU          1                    0                 0.9230769   0.6853349   1.2432914
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8940834   0.7684504   1.0402560
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.8511369   0.5674949   1.2765471
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.9910093   0.7545519   1.3015666
0-24 months   ki1114097-CONTENT       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT       PERU          1                    0                 0.4991708   0.2575066   0.9676314
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 0.8947087   0.7849570   1.0198058
0-24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       INDIA         1                    0                 0.6038999   0.5403049   0.6749800
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.4310824   0.3414823   0.5441921
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8431197   0.8183683   0.8686196
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8611842   0.8103244   0.9152362
0-6 months    ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.2666667   0.5283609   3.0366450
0-6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA         1                    0                 1.2860082   0.7174098   2.3052615
0-6 months    ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       PERU          1                    0                 1.0153846   0.4791909   2.1515559
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 1.0394628   0.7179529   1.5049495
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.6710772   0.4240344   1.0620472
0-6 months    ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS       GUATEMALA     1                    0                 0.7117647   0.3621827   1.3987665
0-6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS       INDIA         1                    0                 0.7481798   0.6377739   0.8776981
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8272925   0.7962406   0.8595554
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8220459   0.7412301   0.9116731
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.8584656   0.5486599   1.3432059
6-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 1.0206186   0.6861591   1.5181061
6-24 months   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       PERU          1                    0                 0.6709168   0.4006015   1.1236338
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8129108   0.6480508   1.0197100
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.8270042   0.4123023   1.6588216
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.9853659   0.6049190   1.6050841
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 0.8610004   0.6560675   1.1299474
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5123832   0.3949050   0.6648093
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7663209   0.7127819   0.8238814
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8207631   0.7304608   0.9222289


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0361027   -0.1816893    0.1094840
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0086867   -0.0684539    0.0510805
0-24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0095057   -0.0441756    0.0251642
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0231654   -0.0540598    0.0077289
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0621418   -0.2299645    0.1056808
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0030848   -0.0965125    0.0903429
0-24 months   ki1114097-CONTENT       PERU          0                    NA                -0.2006645   -0.4494174    0.0480885
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0081854   -0.0175069    0.0011360
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0413139   -0.0497747   -0.0328531
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0574762   -0.0708374   -0.0441150
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0543229   -0.0640430   -0.0446028
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0638707   -0.0909182   -0.0368231
0-6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.0295781   -0.0709768    0.1301329
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                 0.0190901   -0.0254346    0.0636149
0-6 months    ki0047075b-MAL-ED       PERU          0                    NA                 0.0004609   -0.0222949    0.0232167
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0023539   -0.0202512    0.0249591
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0564286   -0.1311029    0.0182457
0-6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0048138   -0.0131859    0.0035584
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0124898   -0.0190857   -0.0058939
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0439200   -0.0530279   -0.0348121
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0456899   -0.0710945   -0.0202853
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0498834   -0.2033266    0.1035597
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0034542   -0.0637413    0.0706498
6-24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0284664   -0.0617304    0.0047976
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0361660   -0.0747743    0.0024423
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0473304   -0.2361303    0.1414694
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0024550   -0.0841528    0.0792428
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0092995   -0.0253657    0.0067666
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0458897   -0.0610745   -0.0307048
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0408264   -0.0526449   -0.0290078
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0483820   -0.0784608   -0.0183033


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0698947   -0.3925800    0.1780187
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0167273   -0.1386078    0.0921068
0-24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0193798   -0.0926134    0.0489451
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0424812   -0.1008321    0.0127767
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1655534   -0.7106737    0.2058598
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0079460   -0.2797627    0.2061378
0-24 months   ki1114097-CONTENT       PERU          0                    NA                -0.8804665   -2.3642572   -0.0510951
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0099427   -0.0213639    0.0013508
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.1741201   -0.2100535   -0.1392537
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0932427   -0.1161425   -0.0708126
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1223683   -0.1446963   -0.1004758
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1200008   -0.1722478   -0.0700824
0-6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1835358   -0.7499022    0.6190565
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                 0.1170526   -0.2009612    0.3508566
0-6 months    ki0047075b-MAL-ED       PERU          0                    NA                 0.0037879   -0.2019408    0.1743033
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0149558   -0.1396465    0.1485850
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.4053094   -1.0544930    0.0387437
0-6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0299969   -0.0833470    0.0207259
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.1027839   -0.1580419   -0.0501626
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1363882   -0.1652329   -0.1082575
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1594783   -0.2514373   -0.0742767
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1332503   -0.6274309    0.2108689
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0102564   -0.2107953    0.1909513
6-24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0861685   -0.1917756    0.0100803
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0803689   -0.1700140    0.0024077
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1985472   -1.3204958    0.3809446
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0129310   -0.5490996    0.3376609
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0146232   -0.0402598    0.0103817
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0850423   -0.1143080   -0.0565453
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.2071705   -0.2682716   -0.1490131
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1637838   -0.2701638   -0.0663134
