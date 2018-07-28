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
![](/tmp/fc1758b4-4497-4810-ba35-f7a4925b39eb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc1758b4-4497-4810-ba35-f7a4925b39eb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc1758b4-4497-4810-ba35-f7a4925b39eb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc1758b4-4497-4810-ba35-f7a4925b39eb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.3265084    0.2325132   0.4205036
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.5020754    0.4353310   0.5688197
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.4594435    0.3787758   0.5401113
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.4186149    0.3322199   0.5050098
0-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.5054949    0.4401097   0.5708800
0-24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.4492718    0.3712577   0.5272858
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5660217    0.5180915   0.6139519
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5110120    0.4508670   0.5711569
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.3262235    0.2725064   0.3799407
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.3725117    0.3360211   0.4090023
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.4407339    0.3650202   0.5164477
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.3892246    0.3522807   0.4261686
0-24 months   ki1114097-CONTENT       PERU          0                    NA                0.6712195    0.5005030   0.8419361
0-24 months   ki1114097-CONTENT       PERU          1                    NA                0.2134804    0.1569386   0.2700221
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.8290401    0.8036176   0.8544625
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.5585641    0.5190735   0.5980547
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.2707798    0.2563997   0.2851599
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.1883146    0.1718649   0.2047644
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.6648961    0.6364256   0.6933665
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.3072881    0.2584148   0.3561613
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.4971294    0.4857456   0.5085133
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4282187    0.4198266   0.4366109
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.5914701    0.5619829   0.6209574
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.5164350    0.4983741   0.5344959
0-6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1930729    0.1226997   0.2634461
0-6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1705496    0.1202417   0.2208574
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.1384195    0.0808101   0.1960288
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.1907991    0.1237202   0.2578779
0-6 months    ki0047075b-MAL-ED       PERU          0                    NA                0.1059634    0.0628303   0.1490964
0-6 months    ki0047075b-MAL-ED       PERU          1                    NA                0.0393323   -0.0085467   0.0872114
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.1545861    0.1185395   0.1906327
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1619157    0.1158026   0.2080288
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1403248    0.0910599   0.1895898
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1300681    0.1046274   0.1555089
0-6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                0.1733236    0.1438990   0.2027482
0-6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                0.1029452    0.0801203   0.1257702
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                0.1324186    0.1212128   0.1436244
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                0.1106569    0.0970007   0.1243132
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.3547910    0.3437802   0.3658018
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.3089531    0.3011895   0.3167166
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3294024    0.3014866   0.3573183
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2747453    0.2595772   0.2899134
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5860607    0.4752583   0.6968630
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.3708446    0.2987457   0.4429434
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.1954797    0.1175943   0.2733652
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.2019445    0.1223222   0.2815668
6-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.3619296    0.2937181   0.4301412
6-24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.2052382    0.1339529   0.2765236
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.4660655    0.4076682   0.5244628
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.3727987    0.3062848   0.4393126
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.3661218    0.3064312   0.4258123
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.2367445    0.1986515   0.2748375
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.4205741    0.3615091   0.4796390
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1955951    0.1628068   0.2283835
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.6461660    0.5997822   0.6925498
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.6566188    0.5971112   0.7161264
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5773201    0.5422674   0.6123728
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.3011551    0.2469802   0.3553300
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2180883    0.2048205   0.2313561
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1899010    0.1811840   0.1986180
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3369269    0.3036684   0.3701855
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2846555    0.2666855   0.3026255


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
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.5377103   1.1285492   2.0952148
0-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.9111345   0.6970430   1.1909825
0-24 months   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       PERU          1                    0                 0.8887761   0.7251502   1.0893233
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.9028133   0.7843538   1.0391636
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 1.1418909   0.9471609   1.3766562
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.8831283   0.7280327   1.0712646
0-24 months   ki1114097-CONTENT       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT       PERU          1                    0                 0.3180485   0.2223765   0.4548811
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 0.6737480   0.6253640   0.7258754
0-24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       INDIA         1                    0                 0.6954531   0.6283938   0.7696687
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.4621596   0.3924531   0.5442471
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8613827   0.8379141   0.8855086
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8731379   0.8227457   0.9266166
0-6 months    ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.8833430   0.5525413   1.4121930
0-6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA         1                    0                 1.3784118   0.8290616   2.2917710
0-6 months    ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       PERU          1                    0                 0.3711882   0.1029761   1.3379871
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 1.0474144   0.7256205   1.5119155
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.9269073   0.6229828   1.3791026
0-6 months    ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS       GUATEMALA     1                    0                 0.5939481   0.4531514   0.7784912
0-6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS       INDIA         1                    0                 0.8356600   0.7197437   0.9702449
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8708029   0.8391021   0.9037014
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8340718   0.7549825   0.9214461
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.6327750   0.4882522   0.8200767
6-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 1.0330713   0.5828209   1.8311564
6-24 months   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       PERU          1                    0                 0.5670667   0.3868377   0.8312649
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.7998849   0.6462601   0.9900282
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.6466278   0.5160386   0.8102639
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.4650670   0.3764091   0.5746072
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 1.0161767   0.9092561   1.1356701
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5216432   0.4320156   0.6298652
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8707528   0.8131399   0.9324478
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8448584   0.7536643   0.9470871


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1900205    0.1018046    0.2782364
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0598698    0.0047945    0.1149450
0-24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0150006   -0.0444635    0.0144624
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0207117   -0.0495888    0.0081654
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                 0.0491346   -0.0074836    0.1057528
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0525144   -0.1233045    0.0182757
0-24 months   ki1114097-CONTENT       PERU          0                    NA                -0.4433126   -0.6067603   -0.2798648
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0057789   -0.0145648    0.0030069
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0335074   -0.0416180   -0.0253968
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0484806   -0.0608728   -0.0360885
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0531996   -0.0625650   -0.0438341
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0592180   -0.0854545   -0.0329815
0-6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0319159   -0.1009972    0.0371655
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                 0.0246706   -0.0146117    0.0639529
0-6 months    ki0047075b-MAL-ED       PERU          0                    NA                 0.0157096   -0.0059314    0.0373507
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0028066   -0.0196545    0.0252677
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0011013   -0.0463395    0.0441370
0-6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0128481   -0.0209310   -0.0047652
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0109035   -0.0173997   -0.0044073
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0327690   -0.0416765   -0.0238615
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0429064   -0.0670551   -0.0187577
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.2117017   -0.3117313   -0.1116721
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.1413078    0.0826352    0.1999804
6-24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0315725   -0.0611904   -0.0019546
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0160655   -0.0514134    0.0192824
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1277379   -0.1904109   -0.0650649
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.2307214   -0.2859709   -0.1754718
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0102213   -0.0252908    0.0048482
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0377104   -0.0519344   -0.0234864
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0210217   -0.0313837   -0.0106597
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0415251   -0.0704933   -0.0125570


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.3678797    0.1796359    0.5129283
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.1152864    0.0030300    0.2149030
0-24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0305826   -0.0928482    0.0281355
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0379815   -0.0924516    0.0137727
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                 0.1309007   -0.0284646    0.2655716
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.1352698   -0.3349966    0.0345762
0-24 months   ki1114097-CONTENT       PERU          0                    NA                -1.9451470   -2.9687193   -1.1855642
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0070196   -0.0177843    0.0036313
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.1412191   -0.1761612   -0.1073151
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0786493   -0.0997858   -0.0579191
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1198378   -0.1414475   -0.0986372
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1112594   -0.1621186   -0.0626259
0-6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1980419   -0.7434965    0.1767666
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                 0.1512700   -0.1250073    0.3596995
0-6 months    ki0047075b-MAL-ED       PERU          0                    NA                 0.1291136   -0.0690399    0.2905381
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0178318   -0.1357584    0.1506517
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0079101   -0.3915409    0.2699584
0-6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0800627   -0.1326279   -0.0299371
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0897297   -0.1446761   -0.0374209
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1017601   -0.1299256   -0.0742967
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1497628   -0.2374959   -0.0682496
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.5655045   -0.8992531   -0.2904043
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.4195755    0.2159673    0.5703081
6-24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0955708   -0.1910917   -0.0077103
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0357011   -0.1175365    0.0401417
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.5358499   -0.8732095   -0.2592477
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.2152652   -1.6265578   -0.8683768
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0160726   -0.0401865    0.0074822
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0698847   -0.0972505   -0.0432013
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1066733   -0.1606137   -0.0552398
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1405717   -0.2433166   -0.0463175
