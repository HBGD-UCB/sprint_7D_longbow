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

unadjusted

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
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                 0     4125   15670
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                 1      315   15670
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                 0    10649   15670
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                 1      581   15670
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 0     1083    5279
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 1      124    5279
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 0     3770    5279
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 1      302    5279
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
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 0      993    5055
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 1      158    5055
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 0     3524    5055
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 1      380    5055


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
![](/tmp/47865051-7b07-4a8a-9f7e-7e5790c6cbbe/523ebbe2-5c8f-4ee9-bca1-89cbc8ad543b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/47865051-7b07-4a8a-9f7e-7e5790c6cbbe/523ebbe2-5c8f-4ee9-bca1-89cbc8ad543b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/47865051-7b07-4a8a-9f7e-7e5790c6cbbe/523ebbe2-5c8f-4ee9-bca1-89cbc8ad543b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/47865051-7b07-4a8a-9f7e-7e5790c6cbbe/523ebbe2-5c8f-4ee9-bca1-89cbc8ad543b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.0960000   0.0442456   0.1477544
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.0740741   0.0245756   0.1235725
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.1009174   0.0682388   0.1335961
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0676329   0.0333922   0.1018735
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083069   0.1040527
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0333333   0.0193066   0.0473601
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1229444   0.1102077   0.1356811
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0629771   0.0509672   0.0749870
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0709459   0.0628908   0.0790011
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0517364   0.0470801   0.0563927
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1027341   0.0838336   0.1216345
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0741650   0.0648435   0.0834866
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.0800000   0.0323382   0.1276618
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.0747664   0.0248235   0.1247092
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.1290323   0.0698982   0.1881663
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.1047619   0.0460570   0.1634669
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.1196013   0.0829057   0.1562970
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0994764   0.0569870   0.1419659
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0784946   0.0612013   0.0957880
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0518519   0.0144317   0.0892720
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1372719   0.1144013   0.1601425
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0973361   0.0859630   0.1087091


### Parameter: E(Y)


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.0858369   0.0497913   0.1218826
0-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0361613   0.0225058   0.0498169
0-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.1000969   0.0909380   0.1092559
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0571793   0.0530871   0.0612716
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0806971   0.0720842   0.0893100
0-6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.0775862   0.0430879   0.1120845
6-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.1179039   0.0760436   0.1597643
6-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.1117886   0.0839169   0.1396604
6-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0751174   0.0592797   0.0909550
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1064293   0.0958239   0.1170346


### Parameter: RR


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.7716049   0.3269765   1.8208469
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.6701801   0.3674449   1.2223367
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.5933333   0.2293801   1.5347647
0-24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       INDIA         1                    0                 0.5122405   0.4123071   0.6363954
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7292372   0.6322494   0.8411030
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7219128   0.5803161   0.8980591
0-6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA         1                    0                 0.9345794   0.3818500   2.2873873
6-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.8119048   0.3936563   1.6745302
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8317336   0.4915711   1.4072853
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.6605784   0.3106174   1.4048271
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7090748   0.5823859   0.8633228


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0101631   -0.0433875    0.0230613
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0129024   -0.0313018    0.0054969
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0200184   -0.0637325    0.0236956
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0228475   -0.0295762   -0.0161187
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0137666   -0.0203501   -0.0071831
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0220369   -0.0380216   -0.0060523
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0024138   -0.0342553    0.0294277
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0111283   -0.0493665    0.0271098
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0078127   -0.0296249    0.0139995
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0033773   -0.0086298    0.0018753
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0308427   -0.0500215   -0.0116638


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.1184000   -0.5773145    0.2069948
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1465938   -0.3723039    0.0419926
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.5535869   -2.3478844    0.2790575
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.2282533   -0.2948157   -0.1651126
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.2407622   -0.3611422   -0.1310287
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.2730823   -0.4865035   -0.0903025
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0311111   -0.5349058    0.3073255
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0943847   -0.4702271    0.1853790
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0698882   -0.2832505    0.1079989
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0449597   -0.1167039    0.0221752
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.2897949   -0.4823613   -0.1222438
