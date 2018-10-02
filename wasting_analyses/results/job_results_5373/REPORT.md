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

agecat        studyid                 country                        impsan    pers_wast   n_cell       n
------------  ----------------------  -----------------------------  -------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                 0       37     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                 1        1     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                 0      192     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                 1       12     242
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                 0        4     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                 1        0     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                 0      204     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                 1        2     210
0-24 months   ki0047075b-MAL-ED       INDIA                          0                 0      113     233
0-24 months   ki0047075b-MAL-ED       INDIA                          0                 1       12     233
0-24 months   ki0047075b-MAL-ED       INDIA                          1                 0      100     233
0-24 months   ki0047075b-MAL-ED       INDIA                          1                 1        8     233
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                 0        1     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                 1        0     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                 0      232     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                 1        3     236
0-24 months   ki0047075b-MAL-ED       PERU                           0                 0      197     263
0-24 months   ki0047075b-MAL-ED       PERU                           0                 1        1     263
0-24 months   ki0047075b-MAL-ED       PERU                           1                 0       65     263
0-24 months   ki0047075b-MAL-ED       PERU                           1                 1        0     263
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                 0      244     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                 1        2     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                 0        4     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                 1        0     250
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 0      241     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 1        0     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 0        0     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 1        0     241
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                 0      294     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                 1       33     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                 0      193     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                 1       14     534
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                 0       28     638
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                 1        1     638
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                 0      595     638
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                 1       14     638
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                 0       84     719
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                 1        5     719
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                 0      609     719
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                 1       21     719
0-24 months   ki1114097-CONTENT       PERU                           0                 0       14     215
0-24 months   ki1114097-CONTENT       PERU                           0                 1        0     215
0-24 months   ki1114097-CONTENT       PERU                           1                 0      201     215
0-24 months   ki1114097-CONTENT       PERU                           1                 1        0     215
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                 0      666     768
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                 1       29     768
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                 0       72     768
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                 1        1     768
0-24 months   ki1135781-COHORTS       INDIA                          0                 0     2240    4126
0-24 months   ki1135781-COHORTS       INDIA                          0                 1      314    4126
0-24 months   ki1135781-COHORTS       INDIA                          1                 0     1473    4126
0-24 months   ki1135781-COHORTS       INDIA                          1                 1       99    4126
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                 0      919    1118
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                 1       50    1118
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                 0      146    1118
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                 1        3    1118
0-24 months   ki1148112-LCNI-5        MALAWI                         0                 0      702     711
0-24 months   ki1148112-LCNI-5        MALAWI                         0                 1        6     711
0-24 months   ki1148112-LCNI-5        MALAWI                         1                 0        3     711
0-24 months   ki1148112-LCNI-5        MALAWI                         1                 1        0     711
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                 0     8250   31340
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                 1      630   31340
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                 0    21298   31340
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                 1     1162   31340
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 0     2108   10303
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 1      242   10303
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 0     7365   10303
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 1      588   10303
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                 0       37     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                 1        1     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                 0      198     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                 1        6     242
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                 0        4     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                 1        0     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                 0      205     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                 1        1     210
0-6 months    ki0047075b-MAL-ED       INDIA                          0                 0      115     232
0-6 months    ki0047075b-MAL-ED       INDIA                          0                 1       10     232
0-6 months    ki0047075b-MAL-ED       INDIA                          1                 0       99     232
0-6 months    ki0047075b-MAL-ED       INDIA                          1                 1        8     232
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                 0        1     235
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                 1        0     235
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                 0      230     235
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                 1        4     235
0-6 months    ki0047075b-MAL-ED       PERU                           0                 0      198     263
0-6 months    ki0047075b-MAL-ED       PERU                           0                 1        0     263
0-6 months    ki0047075b-MAL-ED       PERU                           1                 0       65     263
0-6 months    ki0047075b-MAL-ED       PERU                           1                 1        0     263
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                 0      243     249
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                 1        2     249
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                 0        4     249
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                 1        0     249
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 0      241     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 1        0     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 0        0     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 1        0     241
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                 0       28     635
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                 1        1     635
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                 0      593     635
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                 1       13     635
0-6 months    ki1114097-CONTENT       PERU                           0                 0       14     215
0-6 months    ki1114097-CONTENT       PERU                           0                 1        0     215
0-6 months    ki1114097-CONTENT       PERU                           1                 0      201     215
0-6 months    ki1114097-CONTENT       PERU                           1                 1        0     215
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                 0       34     234
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                 1        4     234
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                 0      183     234
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                 1       13     234
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                 0        4     197
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                 1        0     197
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                 0      191     197
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                 1        2     197
6-24 months   ki0047075b-MAL-ED       INDIA                          0                 0      108     229
6-24 months   ki0047075b-MAL-ED       INDIA                          0                 1       16     229
6-24 months   ki0047075b-MAL-ED       INDIA                          1                 0       94     229
6-24 months   ki0047075b-MAL-ED       INDIA                          1                 1       11     229
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                 0        1     231
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                 1        0     231
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                 0      228     231
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                 1        2     231
6-24 months   ki0047075b-MAL-ED       PERU                           0                 0      186     244
6-24 months   ki0047075b-MAL-ED       PERU                           0                 1        1     244
6-24 months   ki0047075b-MAL-ED       PERU                           1                 0       56     244
6-24 months   ki0047075b-MAL-ED       PERU                           1                 1        1     244
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                 0      243     249
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                 1        2     249
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                 0        4     249
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                 1        0     249
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 0      231     231
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 1        0     231
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 0        0     231
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 1        0     231
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                 0      265     492
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                 1       36     492
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                 0      172     492
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                 1       19     492
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                 0       23     600
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                 1        3     600
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                 0      539     600
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                 1       35     600
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                 0       85     686
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                 1        4     686
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                 0      560     686
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                 1       37     686
6-24 months   ki1114097-CONTENT       PERU                           0                 0       14     215
6-24 months   ki1114097-CONTENT       PERU                           0                 1        0     215
6-24 months   ki1114097-CONTENT       PERU                           1                 0      201     215
6-24 months   ki1114097-CONTENT       PERU                           1                 1        0     215
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                 0      633     740
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                 1       36     740
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                 0       70     740
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                 1        1     740
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                 0      857    1065
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                 1       73    1065
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                 0      128    1065
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                 1        7    1065
6-24 months   ki1148112-LCNI-5        MALAWI                         0                 0      678     687
6-24 months   ki1148112-LCNI-5        MALAWI                         0                 1        6     687
6-24 months   ki1148112-LCNI-5        MALAWI                         1                 0        3     687
6-24 months   ki1148112-LCNI-5        MALAWI                         1                 1        0     687
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 0     1928    9855
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 1      310    9855
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 0     6873    9855
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 1      744    9855


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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







# Results Detail

## Results Plots
![](/tmp/54ea0b7c-796c-4380-93c0-27267ccfc955/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/54ea0b7c-796c-4380-93c0-27267ccfc955/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/54ea0b7c-796c-4380-93c0-27267ccfc955/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/54ea0b7c-796c-4380-93c0-27267ccfc955/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.0960000   0.0442456   0.1477544
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.0740741   0.0245756   0.1235725
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0999109   0.0674241   0.1323976
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0679750   0.0340060   0.1019441
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083069   0.1040527
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0333333   0.0193066   0.0473601
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1152497   0.1034555   0.1270440
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0710628   0.0586701   0.0834554
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0661629   0.0589864   0.0733395
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0521958   0.0475745   0.0568171
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0980505   0.0806999   0.1154011
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0748459   0.0654796   0.0842123
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.0800000   0.0323382   0.1276618
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.0747664   0.0248235   0.1247092
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.1282708   0.0696972   0.1868444
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.1054815   0.0474173   0.1635457
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.1215157   0.0851937   0.1578377
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1067385   0.0640818   0.1493953
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0784946   0.0612013   0.0957880
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0518519   0.0144317   0.0892720
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1359449   0.1146698   0.1572199
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0985134   0.0869532   0.1100737


### Parameter: E(Y)


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.0858369   0.0497913   0.1218826
0-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0361613   0.0225058   0.0498169
0-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.1000969   0.0909380   0.1092559
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0571793   0.0530871   0.0612716
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0805591   0.0719065   0.0892117
0-6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.0775862   0.0430879   0.1120845
6-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.1179039   0.0760436   0.1597643
6-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.1117886   0.0839169   0.1396604
6-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0751174   0.0592797   0.0909550
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1069508   0.0962252   0.1176764


### Parameter: RR


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.7716049   0.3269765   1.8208469
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.6803567   0.3752141   1.2336564
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.5933333   0.2293801   1.5347647
0-24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       INDIA         1                    0                 0.6165979   0.5040461   0.7542823
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7888979   0.6876377   0.9050694
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7633405   0.6176949   0.9433278
0-6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA         1                    0                 0.9345794   0.3818500   2.2873873
6-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.8223343   0.4039507   1.6740501
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8783926   0.5331902   1.4470890
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.6605784   0.3106174   1.4048271
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7246574   0.5992301   0.8763383


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0101631   -0.0433875    0.0230613
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0118959   -0.0301340    0.0063422
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0200184   -0.0637325    0.0236956
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0151528   -0.0213062   -0.0089994
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0089836   -0.0149176   -0.0030497
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0174914   -0.0322493   -0.0027336
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0024138   -0.0342553    0.0294277
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0103669   -0.0479418    0.0272080
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0097271   -0.0314731    0.0120189
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0033773   -0.0086298    0.0018753
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0289941   -0.0469859   -0.0110022


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.1184000   -0.5773145    0.2069948
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1351574   -0.3591353    0.0519102
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.5535869   -2.3478844    0.2790575
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.1513812   -0.2139197   -0.0920647
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1571128   -0.2664659   -0.0572017
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.2171255   -0.4156584   -0.0464351
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0311111   -0.5349058    0.3073255
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0879264   -0.4567070    0.1874935
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0870134   -0.2999911    0.0910721
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0449597   -0.1167039    0.0221752
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.2710974   -0.4523500   -0.1124650
