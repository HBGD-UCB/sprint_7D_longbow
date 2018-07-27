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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country                        perdiar6    n_cell     n
-------------  ----------------------  -----------------------------  ---------  -------  ----
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     Q1             243   244
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     Q2               1   244
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     Q1             554   566
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     Q2              12   566
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     Q1             629   634
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     Q2               5   634
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     Q1             716   720
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     Q2               4   720
0-3 months     ki1114097-CMIN          BANGLADESH                     Q1              41    43
0-3 months     ki1114097-CMIN          BANGLADESH                     Q2               2    43
0-3 months     ki0047075b-MAL-ED       BRAZIL                         Q1             180   180
0-3 months     ki1114097-CMIN          BRAZIL                         Q1              81    81
0-3 months     ki1114097-CMIN          GUINEA-BISSAU                  Q1              21    21
0-3 months     ki0047075b-MAL-ED       INDIA                          Q1             200   201
0-3 months     ki0047075b-MAL-ED       INDIA                          Q2               1   201
0-3 months     ki0047075b-MAL-ED       NEPAL                          Q1             172   175
0-3 months     ki0047075b-MAL-ED       NEPAL                          Q2               3   175
0-3 months     ki1000109-ResPak        PAKISTAN                       Q1              73    78
0-3 months     ki1000109-ResPak        PAKISTAN                       Q2               5    78
0-3 months     ki0047075b-MAL-ED       PERU                           Q1             266   271
0-3 months     ki0047075b-MAL-ED       PERU                           Q2               5   271
0-3 months     ki1114097-CMIN          PERU                           Q1              88    93
0-3 months     ki1114097-CMIN          PERU                           Q2               5    93
0-3 months     ki1114097-CONTENT       PERU                           Q1              29    29
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   Q1             229   229
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1             229   229
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     Q1             230   231
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     Q2               1   231
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     Q1             516   523
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     Q2               7   523
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     Q1             570   574
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     Q2               4   574
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     Q1             692   695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     Q2               3   695
3-6 months     ki1114097-CMIN          BANGLADESH                     Q1             175   185
3-6 months     ki1114097-CMIN          BANGLADESH                     Q2               8   185
3-6 months     ki1114097-CMIN          BANGLADESH                     Q3               2   185
3-6 months     ki0047075b-MAL-ED       BRAZIL                         Q1             208   208
3-6 months     ki1114097-CMIN          BRAZIL                         Q1              81    81
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  Q1             112   117
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  Q2               5   117
3-6 months     ki0047075b-MAL-ED       INDIA                          Q1             228   229
3-6 months     ki0047075b-MAL-ED       INDIA                          Q2               1   229
3-6 months     ki0047075b-MAL-ED       NEPAL                          Q1             229   233
3-6 months     ki0047075b-MAL-ED       NEPAL                          Q2               4   233
3-6 months     ki1000109-ResPak        PAKISTAN                       Q1             143   156
3-6 months     ki1000109-ResPak        PAKISTAN                       Q2              13   156
3-6 months     ki0047075b-MAL-ED       PERU                           Q1             263   267
3-6 months     ki0047075b-MAL-ED       PERU                           Q2               4   267
3-6 months     ki1114097-CMIN          PERU                           Q1             385   407
3-6 months     ki1114097-CMIN          PERU                           Q2              20   407
3-6 months     ki1114097-CMIN          PERU                           Q3               2   407
3-6 months     ki1114097-CONTENT       PERU                           Q1             211   214
3-6 months     ki1114097-CONTENT       PERU                           Q2               3   214
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   Q1             241   241
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1             239   239
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     Q1             219   220
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     Q2               1   220
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     Q1             478   482
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     Q2               4   482
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     Q1             541   545
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     Q2               4   545
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     Q1             674   676
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     Q2               2   676
6-12 months    ki1114097-CMIN          BANGLADESH                     Q1             154   164
6-12 months    ki1114097-CMIN          BANGLADESH                     Q2               9   164
6-12 months    ki1114097-CMIN          BANGLADESH                     Q3               1   164
6-12 months    ki0047075b-MAL-ED       BRAZIL                         Q1             194   194
6-12 months    ki1114097-CMIN          BRAZIL                         Q1              92    93
6-12 months    ki1114097-CMIN          BRAZIL                         Q2               1    93
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  Q1             130   136
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  Q2               6   136
6-12 months    ki0047075b-MAL-ED       INDIA                          Q1             223   224
6-12 months    ki0047075b-MAL-ED       INDIA                          Q2               1   224
6-12 months    ki0047075b-MAL-ED       NEPAL                          Q1             226   230
6-12 months    ki0047075b-MAL-ED       NEPAL                          Q2               4   230
6-12 months    ki1000109-ResPak        PAKISTAN                       Q1             129   138
6-12 months    ki1000109-ResPak        PAKISTAN                       Q2               9   138
6-12 months    ki0047075b-MAL-ED       PERU                           Q1             233   237
6-12 months    ki0047075b-MAL-ED       PERU                           Q2               4   237
6-12 months    ki1114097-CMIN          PERU                           Q1             331   360
6-12 months    ki1114097-CMIN          PERU                           Q2              26   360
6-12 months    ki1114097-CMIN          PERU                           Q3               3   360
6-12 months    ki1114097-CONTENT       PERU                           Q1             210   213
6-12 months    ki1114097-CONTENT       PERU                           Q2               3   213
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   Q1             232   232
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1             223   223
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     Q1             205   206
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     Q2               1   206
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q1             417   421
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q2               4   421
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     Q1             456   458
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     Q2               2   458
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q1             492   495
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q2               3   495
12-24 months   ki1114097-CMIN          BANGLADESH                     Q1             131   138
12-24 months   ki1114097-CMIN          BANGLADESH                     Q2               6   138
12-24 months   ki1114097-CMIN          BANGLADESH                     Q3               1   138
12-24 months   ki0047075b-MAL-ED       BRAZIL                         Q1             165   165
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q1              34    34
12-24 months   ki0047075b-MAL-ED       INDIA                          Q1             224   225
12-24 months   ki0047075b-MAL-ED       INDIA                          Q2               1   225
12-24 months   ki0047075b-MAL-ED       NEPAL                          Q1             222   226
12-24 months   ki0047075b-MAL-ED       NEPAL                          Q2               4   226
12-24 months   ki0047075b-MAL-ED       PERU                           Q1             189   191
12-24 months   ki0047075b-MAL-ED       PERU                           Q2               2   191
12-24 months   ki1114097-CMIN          PERU                           Q1             158   166
12-24 months   ki1114097-CMIN          PERU                           Q2               7   166
12-24 months   ki1114097-CMIN          PERU                           Q3               1   166
12-24 months   ki1114097-CONTENT       PERU                           Q1              37    38
12-24 months   ki1114097-CONTENT       PERU                           Q2               1    38
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   Q1             230   230
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1             207   207


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##         y_rate_len
## perdiar6 2.21512923913043 2.46535357894737 2.46713233333333
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.51837193548387 2.54574554347826 2.58865531914894
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.71105369565217 2.81272709677419 2.90341227272727
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.94139516483516 2.94139516483517 2.97554673913043
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.00896387096774 3.07546633333333 3.14194483516483 3.143059
##       Q1                1                1                1        1
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 3.14655517241379 3.20697815217391 3.244448 3.30053553191489
##       Q1                1                1        1                2
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 3.30331903225806 3.37963333333333 3.40143741935484
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.4093443956044 3.41342966666667 3.43840956521739
##       Q1               1                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 3.44276934065934 3.447226 3.45178280898876 3.46684967741935
##       Q1                2        1                2                1
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 3.50961923076923 3.51481866666667 3.52704287234043
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.53226193548387 3.54304417582418 3.548615 3.57065608695652
##       Q1                1                1        2                4
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 3.59767419354839 3.60371771739131 3.60989406593407
##       Q1                1                1                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.62411744680851 3.62926534090909 3.63677934782609
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.64331901098901 3.65647563829787 3.66984097826087
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.68380033333333 3.71759666666667 3.73596423913044
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.74359384615385 3.751393 3.77586620689655 3.78518933333333
##       Q1                1        1                1                2
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 3.8020875 3.81044373626374 3.81898566666667 3.83514913043478
##       Q1         4                1                2                1
##       Q2         0                0                0                0
##       Q3         0                0                0                0
##       Q4         0                0                0                0
##         y_rate_len
## perdiar6 3.852782 3.8547897029703 3.92882375 3.93433402173913
##       Q1        1               1          1                1
##       Q2        0               0          0                0
##       Q3        0               0          0                0
##       Q4        0               0          0                0
##         y_rate_len
## perdiar6 3.94513633663366 3.954171 3.96442382022472 3.97756846153846
##       Q1                1        3                1                1
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 3.98796733333333 3.99859988764045 4.0004572826087
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 4.01099340659341 4.01241574468085 4.02176366666667
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.03351891304348 4.03421494736842 4.04477393617021 4.05556
##       Q1                1                1                1       1
##       Q2                0                0                0       0
##       Q3                0                0                0       0
##       Q4                0                0                0       0
##         y_rate_len
## perdiar6 4.0778432967033 4.08826612903226 4.08935633333333
##       Q1               2                1                2
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 4.11126824175824 4.12097225806451 4.12798071428571
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.13270380434783 4.13530415730337 4.17420670212766
##       Q1                2                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.18638451612903 4.19882706521739 4.20656489361702
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.21909064516129 4.22109306122449 4.22454166666667
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.23188869565218 4.24496802197802 4.26495032608696
##       Q1                1                1                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.28598954545455 4.29213433333333 4.29801195652174
##       Q1                1                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.31720903225806 4.34036056179775 4.359727 4.37021551724138
##       Q1                1                1        1                1
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 4.3786678021978 4.41532741935484 4.44013896551724 4.461116
##       Q1               2                1                1        1
##       Q2               0                0                0        0
##       Q3               0                0                0        0
##       Q4               0                0                0        0
##         y_rate_len
## perdiar6 4.47894263736264 4.48073967741936 4.49491233333333
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.49638173913044 4.51236758241758 4.51344580645161
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.52944336956522 4.54579252747253 4.562505 4.57921747252747
##       Q1                3                3        1                3
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 4.59630133333333 4.67949230769231 4.68212123595506
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.71629730337079 4.72781315217391 4.75665414893617
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.77976714285714 4.80780096774194 4.866672 4.88004197802198
##       Q1                1                1        1                2
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 4.93862548387097 4.9831614893617 4.99230619565217
##       Q1                1               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 5.01374175824176 5.06945 5.09149108695652 5.10324633333333
##       Q1                1       1                1                1
##       Q2                0       0                0                0
##       Q3                0       0                0                0
##       Q4                0       0                0                0
##         y_rate_len
## perdiar6 5.17731063829787 5.18086648351648 5.24771637362637
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 5.25679923913043 5.30674340425532 5.33910159574468
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 5.34914379310345 5.39651129032258 5.39981865168539
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 5.4148410989011 5.779173 5.94815466666667 6.08334
##       Q1               1        1                1       1
##       Q2               0        0                0       0
##       Q3               0        0                0       0
##       Q4               0        0                0       0
##         y_rate_len
## perdiar6 1.28426066666667 1.35185333333333 1.87179692307692
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.91757456521739 1.96018733333333 1.99507387096774 2.02778
##       Q1                1                1                1       1
##       Q2                0                0                0       0
##       Q3                0                0                0       0
##       Q4                0                0                0       0
##         y_rate_len
## perdiar6 2.14900597826087 2.18726831460674 2.20604637362637
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.24668806818182 2.28979651685393 2.30632120879121
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.32213516129032 2.35038136363637 2.36574333333333
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.3731710989011 2.40659604395604 2.42719121212121
##       Q1               2                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 2.44002098901099 2.48863909090909 2.50687087912088
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.52393893617021 2.52902898876404 2.56320505617978
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.57372076923077 2.59233238636364 2.59738112359551
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.60231766666667 2.63155719101124 2.6491964516129
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 2.65337170212766 2.66573325842697 2.66991033333333
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.6739956043956 2.69602568181818 2.70742054945055 2.7408454945055
##       Q1               1                1                1               1
##       Q2               0                0                0               0
##       Q3               0                0                0               0
##       Q4               0                0                0               0
##         y_rate_len
## perdiar6 2.77427043956044 2.80769538461538 2.838892 2.84112032967033
##       Q1                1                1        1                1
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 2.88158210526316 2.90797021978022 2.90942347826087 2.940281
##       Q1                1                2                2        1
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 2.94355161290323 2.94459542553191 2.97093348837209
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.97482010989011 3.00824505494505 3.00931180851064
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.01031257731959 3.04167 3.07473163043478 3.10779326086957
##       Q1                1       4                2                1
##       Q2                0       0                0                0
##       Q3                0       0                0                0
##       Q4                0       0                0                0
##         y_rate_len
## perdiar6 3.10851989010989 3.13874457446809 3.14194483516483
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.14536329545455 3.17249451612903 3.17391652173913
##       Q1                1                1                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.17685533333333 3.20520064516129 3.20697815217391
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.21065166666667 3.21255033707865 3.21449215909091
##       Q1                3                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.23790677419355 3.24003978260869 3.24672640449438
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.27310141304348 3.27824433333333 3.30331903225806
##       Q1                2                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.30906956043956 3.33289372340426 3.33922467391304
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.34925460674157 3.36525191489362 3.37591945054945
##       Q1                3                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.37963333333333 3.3834306741573 3.39128724137931
##       Q1                2               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 3.39386336842105 3.40143741935484 3.41342966666667 3.447226
##       Q1                1                1                1        1
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 3.45178280898876 3.46608906976744 3.47147119565217
##       Q1                2                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.47619428571429 3.49468468085106 3.49955580645161
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.50961923076923 3.52013494382022 3.52013494382023
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.52704287234043 3.53226193548387 3.53759445652174
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.54265094117647 3.54304417582418 3.548615 3.56496806451613
##       Q1                1                1        5                2
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 3.57646912087912 3.58241133333333 3.58848707865168
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.6037177173913 3.62266314606742 3.63677934782609
##       Q1               1                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 3.64331901098901 3.6436671875 3.650004 3.65647563829787
##       Q1                1            1        1                1
##       Q2                0            0        0                0
##       Q3                0            0        0                0
##       Q4                0            0        0                0
##         y_rate_len
## perdiar6 3.65683921348315 3.67674395604396 3.68202157894737
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.70290260869565 3.7101689010989 3.7211920212766 3.72519134831461
##       Q1                1               1               1                2
##       Q2                0               0               0                0
##       Q3                0               0               0                0
##       Q4                0               0               0                0
##         y_rate_len
## perdiar6 3.72849870967742 3.74605673684211 3.751393 3.75936741573034
##       Q1                1                1        1                2
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 3.76120483870968 3.76902586956522 3.77701879120879 3.8020875
##       Q1                1                2                1         1
##       Q2                0                0                0         0
##       Q3                0                0                0         0
##       Q4                0                0                0         0
##         y_rate_len
## perdiar6 3.81044373626374 3.81082793103448 3.81898566666667
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.84386868131868 3.87121636363636 3.88657833333333
##       Q1                1                1                4
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.90127239130435 3.91071857142857 3.91534117021277
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.93266424242424 3.95744161290323 3.96442382022472
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.97756846153846 3.98796733333333 3.99014774193548
##       Q1                2                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.0004572826087 4.01099340659341 4.03277595505618 4.05556
##       Q1               1                1                1       1
##       Q2               0                0                0       0
##       Q3               0                0                0       0
##       Q4               0                0                0       0
##         y_rate_len
## perdiar6 4.06658054347826 4.06695202247191 4.07713212765957
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.0778432967033 4.10822961038961 4.11126824175824
##       Q1               1                1                2
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 4.12315266666667 4.13026768421053 4.13270380434783
##       Q1                3                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.14773181818182 4.156949 4.16576543478261 4.17811813186813
##       Q1                1        1                1                1
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 4.19882706521739 4.21154307692308 4.22454166666667
##       Q1                1                3                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.23188869565217 4.23892308510638 4.258338 4.359727
##       Q1                1                1        1        1
##       Q2                0                0        0        0
##       Q3                0                0        0        0
##       Q4                0                0        0        0
##         y_rate_len
## perdiar6 4.38640831578947 4.39352333333333 4.42731966666667
##       Q1                1                2                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.47706483146067 4.49491233333333 4.5100624137931
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 4.64794516853933 4.65957957446808 4.72781315217391
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.74238870967742 4.765283 5.00185733333333 5.20463533333333
##       Q1                1        1                1                1
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 5.21429142857143 5.34060662790698
##       Q1                1                1
##       Q2                0                0
##       Q3                0                0
##       Q4                0                0
##         y_rate_len
## perdiar6 1.65909272727273 1.76841279069767 1.9210547368421 2.091148125
##       Q1                1                1               1           1
##       Q2                0                0               0           0
##       Q3                0                0               0           0
##       Q4                0                0               0           0
##         y_rate_len
## perdiar6 2.129169 2.20120855263158 2.20604637362637 2.26435433333333
##       Q1        1                1                1                1
##       Q2        0                0                0                0
##       Q3        0                0                0                0
##       Q4        0                0                0                0
##         y_rate_len
## perdiar6 2.37739724137931 2.40131842105263 2.40329481481481
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.42650078651685 2.433336 2.46067685393258 2.46230428571428
##       Q1                1        1                1                1
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 2.48863909090909 2.534725 2.56320505617978 2.56526385542169
##       Q1                1        1                1                1
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 2.61225776470588 2.66146125 2.66615518518519 2.67956642857143
##       Q1                1          1                1                1
##       Q2                0          0                0                0
##       Q3                0          0                0                0
##       Q4                0          0                0                0
##         y_rate_len
## perdiar6 2.68572989361702 2.77129933333333 2.79117952941176
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.82440785714286 2.82946046511628 2.85391259259259
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.86274823529412 2.89329585365854 2.89682857142857
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.90648466666667 2.93914179775281 2.96562825 2.97174655172414
##       Q1                1                1          1                1
##       Q2                0                0          0                0
##       Q3                0                0          0                0
##       Q4                0                0          0                0
##         y_rate_len
## perdiar6 2.97407733333333 3.00411851851852 3.00749393258427 3.04167
##       Q1                1                1                1       3
##       Q2                0                0                0       0
##       Q3                0                0                0       0
##       Q4                0                0                0       0
##         y_rate_len
## perdiar6 3.07546633333333 3.07623443181818 3.07745435294118
##       Q1                2                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.10779326086956 3.11159344827586 3.14085489130435
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.14194483516483 3.14194483516484 3.14419820224719
##       Q1                1                1                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.14655517241379 3.14777476744186 3.1529506097561
##       Q1                2                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 3.15432444444444 3.16017662337662 3.17837426966292
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.17992772727273 3.20697815217391 3.20879472527473
##       Q1                2                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.22490313253012 3.24221967032967 3.244448 3.24672640449438
##       Q1                1                1        1                1
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 3.25893214285714 3.26979525 3.27564461538461 3.27564461538462
##       Q1                6          1                1                1
##       Q2                0          0                0                0
##       Q3                0          0                0                0
##       Q4                0          0                0                0
##         y_rate_len
## perdiar6 3.27824433333333 3.28362102272727 3.29216047058824
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.29819638554217 3.30453037037037 3.30616304347826
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.31204066666667 3.33841829268293 3.34925460674157
##       Q1                1                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.35274988636364 3.35632551724138 3.37963333333333 3.383857875
##       Q1                1                1                2           1
##       Q2                0                0                0           0
##       Q3                0                0                0           0
##       Q4                0                0                0           0
##         y_rate_len
## perdiar6 3.39761010638298 3.40534793478261 3.4093443956044
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 3.41760674157303 3.42187875 3.43162769230769 3.4341435483871
##       Q1                2          3                1               1
##       Q2                0          0                0               0
##       Q3                0          0                0               0
##       Q4                0          0                0               0
##         y_rate_len
## perdiar6 3.4547362962963 3.46519367088608 3.47062346153846
##       Q1               1                2                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 3.47147119565217 3.48102233333333 3.48679243902439
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.53682558139535 3.53759445652174 3.54265094117647 3.548615
##       Q1                1                1                1        3
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 3.56013647727273 3.56097951219512 3.56496806451613
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.57843529411765 3.58241133333333 3.59470090909091
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.6010575862069 3.611983125 3.61620766666667 3.62103571428571
##       Q1               1           1                1                2
##       Q2               0           0                0                0
##       Q3               0           0                0                0
##       Q4               0           0                0                0
##         y_rate_len
## perdiar6 3.62266314606741 3.63677934782609 3.650004 3.66382977272727
##       Q1                1                1        1                1
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 3.66984097826087 3.67674395604396 3.69839420454546
##       Q1                1                3                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.70935365853659 3.71759666666667 3.73596423913043
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.74359384615385 3.74644719512195 3.75514814814815
##       Q1                4                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.75936741573034 3.76120483870968 3.76902586956522
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.78354073170732 3.79354348314607 3.8020875 3.81044373626374
##       Q1                2                1         2                2
##       Q2                0                0         0                0
##       Q3                0                0         0                0
##       Q4                0                0         0                0
##         y_rate_len
## perdiar6 3.81082793103448 3.81898566666667 3.8277195505618
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 3.83514913043478 3.83665193181818 3.840108375 3.84386868131868
##       Q1                1                1           1                1
##       Q2                0                0           0                0
##       Q3                0                0           0                0
##       Q4                0                0           0                0
##         y_rate_len
## perdiar6 3.852782 3.86471011764706 3.87121636363636 3.88657833333333
##       Q1        1                1                2                1
##       Q2        0                0                0                0
##       Q3        0                0                0                0
##       Q4        0                0                0                0
##         y_rate_len
## perdiar6 3.89050813953488 3.91571310344828 3.92037466666667
##       Q1                1                2                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.92473548387097 3.93024775280899 3.93433402173913
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.94414351648352 3.954171 3.97490965909091 3.98313928571429
##       Q1                2        1                1                1
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 3.98563655172414 3.98796733333333 4.00219736842105
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.0319811627907 4.04403852272727 4.05556 4.0778432967033
##       Q1               1                1       2               1
##       Q2               0                0       0               0
##       Q3               0                0       0               0
##       Q4               0                0       0               0
##         y_rate_len
## perdiar6 4.07941623529412 4.11520058823529 4.12548344827586
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.15447609756098 4.16044517241379 4.16576543478261
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.17811813186813 4.18229625 4.20365629213483 4.22255364705882
##       Q1                1          1                1                1
##       Q2                0          0                0                0
##       Q3                0          0                0                0
##       Q4                0          0                0                0
##         y_rate_len
## perdiar6 4.23188869565217 4.24496802197802 4.26495032608696
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.31842037037037 4.33107358695652 4.34524285714286
##       Q1                1                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.39352333333333 4.41766357142857 4.43025847826087
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.44288876404494 4.4512243902439 4.49008428571428
##       Q1                1               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 4.50617777777778 4.50882847058824 4.54502413793103 4.562505
##       Q1                1                1                1        1
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 4.73532715909091 4.83735469879518 4.83902045454545
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.90046833333333 5.24425862068966
##       Q1                1                1
##       Q2                0                0
##       Q3                0                0
##       Q4                0                0
##         y_rate_len
## perdiar6 0.473148666666666 1.47177580645161 1.50335413793103
##       Q1                 1                1                1
##       Q2                 0                0                0
##       Q3                 0                0                0
##       Q4                 0                0                0
##         y_rate_len
## perdiar6 1.67124725274725 1.96236774193548 2.08742058823529
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.10577153846154 2.28979651685393 2.49737115789474
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.63402350515464 2.65261918604651 2.68947663157895
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.71364676470588 2.71995490384615 2.77427043956044 2.851565625
##       Q1                1                1                1           1
##       Q2                0                0                0           0
##       Q3                0                0                0           0
##       Q4                0                0                0           0
##         y_rate_len
## perdiar6 2.86274823529412 2.94355161290323 3.08017215189873 3.1025034
##       Q1                1                1                1         1
##       Q2                0                0                0         0
##       Q3                0                0                0         0
##       Q4                0                0                0         0
##         y_rate_len
## perdiar6 3.10570515789474 3.13113088235294 3.13978838709677
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.14655517241379 3.22789469387755 3.25893214285714
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.27268291139241 3.2925293814433 3.33841829268293
##       Q1                1               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 3.34249450549451 3.345837 3.358510625 3.36873129032258
##       Q1                1        1           1                1
##       Q2                0        0           0                0
##       Q3                0        0           0                0
##       Q4                0        0           0                0
##         y_rate_len
## perdiar6 3.37963333333333 3.45178280898876 3.45510087378641
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.48897441176471 3.548615 3.55940106382979 3.5721938372093
##       Q1                1        3                1               1
##       Q2                0        0                0               0
##       Q3                0        0                0               0
##       Q4                0        0                0               0
##         y_rate_len
## perdiar6 3.57646912087912 3.60610360824742 3.60989406593407
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.62266314606742 3.62411744680851 3.63038032258065
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.6630864516129 3.72449387755102 3.73295863636364
##       Q1               1                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 3.79391096774194 3.8020875 3.81898566666667 3.82467415841584
##       Q1                1         1                1                1
##       Q2                0         0                0                0
##       Q3                0         0                0                0
##       Q4                0         0                0                0
##         y_rate_len
## perdiar6 3.84386868131868 3.852782 3.91071857142857 3.92473548387097
##       Q1                1        1                1                1
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 3.94034522727273 4.0454211 4.118928125 4.20040142857143
##       Q1                1         1           1                1
##       Q2                0         0           0                0
##       Q3                0         0           0                0
##       Q4                0         0           0                0
##         y_rate_len
## perdiar6 4.25179677419355 4.3495881 4.35597185185185 4.37453662921348
##       Q1                2         1                1                1
##       Q2                0         0                0                0
##       Q3                0         0                0                0
##       Q4                0         0                0                0
##         y_rate_len
## perdiar6 4.39352333333333 4.48246105263158 4.49337613636364
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.5047517721519 4.53014680851064 4.64606736263736
##       Q1               1                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 5.14261731958763 5.33231037037037 5.60307631578947
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 5.76316421052632 6.34498903225806
##       Q1                1                1
##       Q2                0                0
##       Q3                0                0
##       Q4                0                0
##         y_rate_len
## perdiar6 1.64090092105263 2.04112065789473 2.433336 2.52692584615385
##       Q1                1                1        1                1
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 3.2000903125 3.24718824324324 3.34968721518987 3.35478308823529
##       Q1            1                1                1                1
##       Q2            0                0                0                0
##       Q3            0                0                0                0
##       Q4            0                0                0                0
##         y_rate_len
## perdiar6 3.47619428571429 3.48102233333333 3.52193368421053
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.83514913043478 3.94769936170213 3.95744161290322
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.02483606060606 4.03277595505618 4.12097225806452
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.19882706521739 4.29213433333333 5.3122123943662
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 2.65171230769231 2.68615012987013 3.00216779220779
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.08066576923077 3.1633368 3.20833684931507 3.244448 3.2850036
##       Q1                1         1                1        1         1
##       Q2                0         0                0        0         0
##       Q3                0         0                0        0         0
##       Q4                0         0                0        0         0
##         y_rate_len
## perdiar6 3.36184578947368 3.39263192307692 3.5551987012987
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 3.58482535714286 3.59470090909091 3.60197763157895
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.63420311688312 3.64199960526316 3.70459807692308
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.79221194805195 3.82381371428571 3.84210947368421 3.916150125
##       Q1                1                1                1           1
##       Q2                0                0                0           0
##       Q3                0                0                0           0
##       Q4                0                0                0           0
##         y_rate_len
## perdiar6 4.02922519480519 4.09177035714286 4.10822961038961
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 4.27477945945946 4.30574064935065 4.32688267605634 4.4205604
##       Q1                1                1                1         1
##       Q2                0                0                0         0
##       Q3                0                0                0         0
##       Q4                0                0                0         0
##         y_rate_len
## perdiar6 4.52248302631579
##       Q1                1
##       Q2                0
##       Q3                0
##       Q4                0
##         y_rate_len
## perdiar6 0.566667287671233 0.568224065934066 0.64822475409836
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_len
## perdiar6 0.651786428571428 0.65178642857143 0.660142664835164
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_len
## perdiar6 0.660142664835165 0.661232608695652 0.674054293628809
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.677809470752089 0.710825054347826 0.712761907356948
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.718636318681318 0.735348791208791 0.739411491712707
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.752061263736264 0.75413305785124 0.758334164383561 0.7604175
##       Q1                 3                1                 1         1
##       Q2                 0                0                 0         0
##       Q3                 0                0                 0         0
##       Q4                 0                0                 0         0
##         y_rate_len
## perdiar6 0.783334191780822 0.789190054054055 0.797815081967214
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.81278785123967 0.816667561643836 0.825716509695291
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.826540760869565 0.828792915531335 0.833334246575342
##       Q1                 4                 4                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.835623626373626 0.843071576086957 0.845368773841962
##       Q1                 3                 3                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.852336098901099 0.861944632152589 0.877404807692308
##       Q1                 1                 1                 3
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.880920819672132 0.883334301369862 0.884398614130435
##       Q1                 2                 3                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.885761043956043 0.89266402173913 0.89411728021978
##       Q1                 2                1                1
##       Q2                 0                0                0
##       Q3                 0                0                0
##       Q4                 0                0                0
##         y_rate_len
## perdiar6 0.895096348773842 0.907459558011049 0.914163114754098
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.916667671232877 0.919185989010989 0.923216910569106
##       Q1                 2                 3                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.925725652173913 0.926824653739612 0.927542225274726
##       Q1                 3                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.928248065395096 0.933334356164384 0.933991059782608
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.935898461538462 0.941667698630137 0.942256467391304
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.944254697802198 0.947405409836065 0.950001041095891
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.958787282608696 0.960527368421053 0.96096717032967
##       Q1                 1                 1                2
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_len
## perdiar6 0.961399782016349 0.966667726027397 0.969323406593406
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.975318097826087 0.977679642857143 0.986035879120879
##       Q1                 2                 2                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.988752231404958 0.997131487603306 0.997268852459016
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 1.00000109589041 1.00274835164835 1.00557942622951
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.00837972826087 1.01112735694823 1.01946082417582
##       Q1                1                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.02500112328767 1.02781706043956 1.03599114441417
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.03861902439024 1.04166780821918 1.04427907356948
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.04452953296703 1.04478415512465 1.05000115068493
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.05578628099174 1.06085493188011 1.06666783561644
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.06959824175824 1.07450298913043 1.07795447802198
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.08631071428571 1.09400664850136 1.09466695054945
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.10456308943089 1.11973565934066 1.1323608423913
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.13644813186813 1.13746662049862 1.14685918032787
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.1531606043956 1.15516975409836 1.15715706521739
##       Q1               2                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 1.16666794520548 1.17116933518006 1.21003765667575
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.22328032608696 1.22337140495868 1.22661351498638
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.23175066115702 1.23672296703297 1.2450792032967
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.27014791208791 1.29291694822888 1.2987847107438
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.31192909340659 1.32028532967033 1.3213812295082
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.34535403846154 1.37205766304348 1.37955524590164
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.38713521978022 1.40384769230769 1.47069758241758
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.48777336956522 1.52919123626374 1.57097241758242
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.65453478021978
##       Q1                1
##       Q2                0
##       Q3                0
##       Q4                0
##         y_rate_len
## perdiar6 0.332422950819672 0.400000438356164 0.458664523809524
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.498634426229508 0.531876721311476 0.55455861878453
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_len
## perdiar6 0.55986782967033 0.5677784 0.568224065934066 0.581740163934426
##       Q1                1         1                 1                 1
##       Q2                0         0                 0                 0
##       Q3                0         0                 0                 0
##       Q4                0         0                 0                 0
##         y_rate_len
## perdiar6 0.58333397260274 0.584936538461538 0.586547933884297
##       Q1                2                 2                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.600000657534247 0.609982601626015 0.625000684931507
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.642954634146341 0.656535327868853 0.658334054794521
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.661232608695652 0.664845901639344 0.666667397260274
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.668498901098901 0.675000739726028 0.687898119891008
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.698088196721312 0.700000767123288 0.701923846153847
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.703857520661156 0.712761907356948 0.714709344262296
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.716667452054794 0.718636318681318 0.72460836565097
##       Q1                 1                 2                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_len
## perdiar6 0.725000794520548 0.725384715447154 0.726992554945055
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.728995289256198 0.731330491803278 0.737374545454545
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.743705027472528 0.743886684782609 0.747813895027625
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.747951639344262 0.750000821917808 0.752061263736264
##       Q1                 1                 4                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.75413305785124 0.764572786885246 0.768682907608695
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.768773736263736 0.770891570247933 0.774842764227643
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.777129972527472 0.785486208791208 0.785486208791209
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.787353269754768 0.791667534246575 0.792013795013851
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.795641198910081 0.800000876712328 0.802198681318681
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.804408595041322 0.807814796747967 0.808334219178082
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.80886515235457 0.810554917582418 0.812217057220708
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.814436229508196 0.815033121546962 0.816667561643835
##       Q1                 1                 1                 5
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.81827535326087 0.818911153846154 0.822072972972973
##       Q1                1                 2                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.823435524861878 0.824139636871507 0.825000904109588
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.825000904109589 0.826540760869565 0.827267390109891
##       Q1                 1                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.828792915531335 0.83105737704918 0.833334246575342
##       Q1                 2                3                 4
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_len
## perdiar6 0.835623626373626 0.837925619834711 0.844908333333333
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.846304876033058 0.85000093150685 0.852336098901098
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_len
## perdiar6 0.852336098901099 0.854684132231405 0.862077593582887
##       Q1                 2                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.864299672131148 0.865515853658537 0.866667616438357
##       Q1                 2                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.867867798913043 0.869048571428572 0.876133206521739
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.876270581717452 0.880920819672131 0.883334301369862
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.885761043956043 0.89411728021978 0.895602833333334
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_len
## perdiar6 0.897541967213115 0.90000098630137 0.902473516483516
##       Q1                 1                2                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_len
## perdiar6 0.904959669421487 0.906730894308943 0.909194836956522
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.911672207084469 0.914163114754098 0.916667671232877
##       Q1                 1                 1                 4
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.92072172972973 0.921718181818182 0.924264364640884
##       Q1                1                 2                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.925001013698631 0.926824653739612 0.927542225274725
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.930784262295082 0.933334356164383 0.933334356164384
##       Q1                 3                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.938476694214876 0.939094836065574 0.944254697802198
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.944823923705721 0.953111852861035 0.96096717032967
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_len
## perdiar6 0.966667726027397 0.972674959349593 0.975001068493151
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.977679642857143 0.977975640326975 0.980917967479675
##       Q1                 3                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.986035879120879 0.988958278688525 0.989160975609756
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.991848913043478 0.994392115384616 0.994551498637602
##       Q1                 3                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 1.00000109589041 1.00274835164835 1.00551074380165
##       Q1                2                2                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.00828839779006 1.01389 1.01946082417582 1.02226925619835
##       Q1                1       1                1                1
##       Q2                0       0                0                0
##       Q3                0       0                0                0
##       Q4                0       0                0                0
##         y_rate_len
## perdiar6 1.02537883852691 1.02770321525886 1.0361732967033
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.03902776859504 1.04166780821918 1.05000115068493
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.0525670027248 1.05288576923077 1.05510504065041
##       Q1               1                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 1.05544286885246 1.0612420054945 1.06416553719008
##       Q1                1               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 1.07450298913043 1.08037459016393 1.08333452054795
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.08513632432432 1.08930330578512 1.11973565934066
##       Q1                1                2                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.13544629427793 1.13644813186813 1.14480436813187
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.14795809917355 1.15715706521739 1.16151684065934
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.16348032786885 1.18147512396694 1.19494178571429
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.19672262295082 1.20329802197802 1.22337140495868
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.24393226890756 1.25343543956044 1.25489663934426
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.36666816438356 1.60833509589041
##       Q1                1                1
##       Q2                0                0
##       Q3                0                0
##       Q4                0                0
##         y_rate_len
## perdiar6 0.31666701369863 0.331517166212534 0.335170247933884
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.385445785123966 0.395664390243902 0.397820599455041
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.451236758241758 0.475000520547945 0.476305467032967
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.482013278688524 0.491667205479452 0.495924456521739
##       Q1                 2                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.500000547945205 0.501374175824176 0.512455271739131
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.53333391780822 0.550000602739726 0.566667287671233
##       Q1                1                 2                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.568224065934066 0.568224065934067 0.575000630136987
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.576580302197803 0.580155040871935 0.581740163934426
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.58333397260274 0.584936538461538 0.586547933884297
##       Q1                5                 4                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.590050737704919 0.603306446280992 0.616667342465754
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.631603606557377 0.638170544959128 0.641667369863014
##       Q1                 1                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.643430192307692 0.644701793478261 0.646458474114441
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.64822475409836 0.650000712328767 0.661232608695652
##       Q1                1                 1                 3
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.666667397260274 0.668498901098901 0.673156475409837
##       Q1                 3                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.683334082191781 0.685211373626374 0.689777622950819
##       Q1                 3                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.69356760989011 0.698088196721312 0.699331329639889
##       Q1                1                 3                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.700000767123288 0.701923846153847 0.708334109589041
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.710825054347826 0.716667452054794 0.721049836512262
##       Q1                 1                 2                 3
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.725000794520548 0.728995289256198 0.729337765667576
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.733334136986301 0.735348791208791 0.741870731707317
##       Q1                 1                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.743886684782609 0.747951639344262 0.750000821917808
##       Q1                 1                 1                 8
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.752061263736264 0.756262213114754 0.758334164383562 0.7604175
##       Q1                 3                 1                 1         1
##       Q2                 0                 0                 0         0
##       Q3                 0                 0                 0         0
##       Q4                 0                 0                 0         0
##         y_rate_len
## perdiar6 0.762489482288829 0.766667506849315 0.768773736263736
##       Q1                 1                 2                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.776948315217392 0.777129972527472 0.779065340599454
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.783334191780822 0.785486208791209 0.787353269754768
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.789504508196721 0.793479130434782 0.793479130434783
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.795641198910081 0.797815081967213 0.800000876712328
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.803929128065395 0.806125655737705 0.807814796747967
##       Q1                 1                 3                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.808334219178082 0.810554917582418 0.812217057220708
##       Q1                 1                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.816667561643835 0.82430081300813 0.827267390109891
##       Q1                 2                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_len
## perdiar6 0.83105737704918 0.833334246575342 0.835623626373626
##       Q1                5                 2                 3
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.842567867036011 0.843979862637362 0.845368773841962
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.852336098901099 0.855989098360656 0.859602391304348
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.866667616438357 0.869048571428572 0.8714426446281
##       Q1                 1                 2               1
##       Q2                 0                 0               0
##       Q3                 0                 0               0
##       Q4                 0                 0               0
##         y_rate_len
## perdiar6 0.873758861788617 0.876270581717452 0.889231393442623
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.891667643835617 0.89411728021978 0.90428027027027
##       Q1                 3                1                1
##       Q2                 0                0                0
##       Q3                 0                0                0
##       Q4                 0                0                0
##         y_rate_len
## perdiar6 0.909194836956522 0.910829752747253 0.916667671232877
##       Q1                 1                 2                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.919185989010989 0.932666767955801 0.933334356164384
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.935898461538462 0.961399782016348 0.961399782016349
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.964026557377049 0.966667726027397 0.969687711171662
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.972337131147541 0.975318097826087 0.980372975206612
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.980647704918033 0.983334410958904 0.983583505434783
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.986035879120879 0.988752231404958 0.991848913043478
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.997268852459016 1.00000109589041 1.00274835164835 1.01389
##       Q1                 1                1                4       1
##       Q2                 0                0                0       0
##       Q3                 0                0                0       0
##       Q4                 0                0                0       0
##         y_rate_len
## perdiar6 1.01941528610354 1.02500112328767 1.03599114441417
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.05833449315069 1.06666783561644 1.06914286103542
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.08037459016393 1.08631071428571 1.10833454794521
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.12500123287671 1.13333457534247 1.38408416893733
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 0.63368125 0.637769516129032 0.677763423913044 0.691288636363636
##       Q1          1                 1                 1                 1
##       Q2          0                 0                 0                 0
##       Q3          0                 0                 0                 0
##       Q4          0                 0                 0                 0
##         y_rate_len
## perdiar6 0.69448534682081 0.734494176136364 0.746918964497041
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.7625356545961 0.778864285714286 0.79810583090379
##       Q1               1                 1                1
##       Q2               0                 0                0
##       Q3               0                 0                0
##       Q4               0                 0                0
##         y_rate_len
## perdiar6 0.806809018567639 0.807814796747967 0.833334246575342
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.840786829268293 0.842445043731778 0.849402526595745
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.852293136246787 0.863176621621622 0.869048571428571
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.879821900826446 0.880033735955056 0.882252348066298
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.883065483870968 0.923648481675393 0.92500101369863
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_len
## perdiar6 0.928248065395096 0.929625683646113 0.941667698630137
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.957562777777777 0.958334383561644 0.976123323782235
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.983081187845304 1.04121857142857 1.06203561452514
##       Q1                 1                1                1
##       Q2                 0                0                0
##       Q3                 0                0                0
##       Q4                 0                0                0
##         y_rate_len
## perdiar6 0.401099340659342 0.647163829787234 0.701923846153847
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.802198681318681 0.92275382022472 1.03546212765958
##       Q1                 1                1                1
##       Q2                 0                0                0
##       Q3                 0                0                0
##       Q4                 0                0                0
##         y_rate_len
## perdiar6 1.06959824175824 1.13644813186813 1.16489489361702
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.24431954545455 1.25634195652174 1.27553903225807
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.3369978021978 1.35185333333333 1.35552684782609
##       Q1               1                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 1.40384769230769 1.419446 1.43906967741936 1.45170613636364
##       Q1                2        1                1                1
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 1.48847680851064 1.50374696629214 1.50412252747253 1.520835
##       Q1                1                1                1        2
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 1.53684378947368 1.53754747252747 1.53792303370787
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.57097241758242 1.60439736263736 1.61394734693878 1.622224
##       Q1                1                2                1        1
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 1.63782230769231 1.64045123595506 1.65308152173913
##       Q1                3                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.66194340206185 1.70071870967742 1.7046721978022 1.710939375
##       Q1                1                1               3           1
##       Q2                0                0               0           0
##       Q3                0                0               0           0
##       Q4                0                0               0           0
##         y_rate_len
## perdiar6 1.7289492631579 1.73809714285714 1.74896025 1.7743075
##       Q1               1                3          1         1
##       Q2               0                0          0         0
##       Q3               0                0          0         0
##       Q4               0                0          0         0
##         y_rate_len
## perdiar6 1.80247111111111 1.863022875 1.87179692307692 1.87179692307693
##       Q1                1           1                4                1
##       Q2                0           0                0                0
##       Q3                0           0                0                0
##       Q4                0           0                0                0
##         y_rate_len
## perdiar6 1.87677510638298 1.88451293478261 1.89259466666667
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.90522186813187 1.90913329787234 1.91757456521739
##       Q1                1                2                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.92966161290323 1.93864681318681 1.9414914893617
##       Q1                1                2               2
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.95063619565218 1.95307231578948 1.97384968085106
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.97551762886598 1.99398366666667 2.00473704545454
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.0054967032967 2.00620787234042 2.00620787234043 2.02778
##       Q1               4                1                1       2
##       Q2               0                0                0       0
##       Q3               0                0                0       0
##       Q4               0                0                0       0
##         y_rate_len
## perdiar6 2.03930147727273 2.06157633333333 2.07234659340659
##       Q1                1                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.07386590909091 2.09537266666667 2.10577153846154
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.11127682352941 2.11594434782609 2.13919648351648
##       Q1                1                2                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.13919648351649 2.14299477272727 2.14706117647059
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.17262142857143 2.18206760869565 2.19676166666667
##       Q1                2                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.20035702127659 2.20604637362637 2.21512923913044
##       Q1                1                3                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.22275884615384 2.22401677419355 2.230558 2.23947131868132
##       Q1                1                1        1                1
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 2.24819086956522 2.27289626373626 2.2812525 2.28878138613861
##       Q1                2                3         1                1
##       Q2                0                0         0                0
##       Q3                0                0         0                0
##       Q4                0                0         0                0
##         y_rate_len
## perdiar6 2.29815066666667 2.30526568421053 2.30632120879121
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.31431413043478 2.32397258426966 2.331947 2.33974615384615
##       Q1                1                1        2                5
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 2.34243551724138 2.35038136363636 2.35814865168539
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.3621479787234 2.36574333333333 2.3731710989011 2.38043739130435
##       Q1               1                2               1                1
##       Q2               0                0               0                0
##       Q3               0                0               0                0
##       Q4               0                0               0                0
##         y_rate_len
## perdiar6 2.39450617021276 2.39450617021277 2.39953966666667
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.40659604395604 2.44002098901099 2.44656065217391
##       Q1                2                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.46912035294117 2.47344593406593 2.47344593406594
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.50092866666667 2.51268391304348 2.54574554347826
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.55220586206896 2.58865531914894 2.59342389473684
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.60714571428572 2.6210135106383 2.64493043478261
##       Q1                1               2                3
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 2.66573325842697 2.68572989361702 2.69602568181818
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.6999093258427 2.70370666666667 2.71808808510638
##       Q1               1                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 2.73408539325842 2.7408454945055 2.80769538461538 2.8198815625
##       Q1                1               3                1            1
##       Q2                0               0                0            0
##       Q3                0               0                0            0
##       Q4                0               0                0            0
##         y_rate_len
## perdiar6 2.84112032967033 2.8433002173913 2.84752085106383
##       Q1                1               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 2.84956452631579 2.87454527472527 2.87454527472528
##       Q1                1                3                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.87813935483871 2.88158210526316 2.90496573033708
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.90942347826087 2.91223723404255 2.97482010989011
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.00749393258427 3.00824505494505 3.00860836956522
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.07584606741573 3.10926266666667 3.11079886363636
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.14419820224719 3.17536978021978 3.244448 3.27061290322581
##       Q1                1                1        1                1
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 3.35274988636364 3.52193368421053 3.57065608695652
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.75355021276596
##       Q1                1
##       Q2                0
##       Q3                0
##       Q4                0
##         y_rate_len
## perdiar6 -0.0991848913043469 0.276515454545454 0.473148666666669
##       Q1                   1                 1                 1
##       Q2                   0                 0                 0
##       Q3                   0                 0                 0
##       Q4                   0                 0                 0
##         y_rate_len
## perdiar6 0.629311034482758 0.727355869565218 0.735348791208792
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.802198681318681 0.806973673469388 0.869048571428572
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.935898461538461 0.991848913043478 1.00196188235294
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_len
## perdiar6 1.00274835164835 1.01389 1.03546212765957 1.06959824175824
##       Q1                1       1                1                1
##       Q2                0       0                0                0
##       Q3                0       0                0                0
##       Q4                0       0                0                0
##         y_rate_len
## perdiar6 1.08631071428571 1.11200838709677 1.17742064516129
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.18869862068965 1.19021869565217 1.20329802197802
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.22961127659574 1.27014791208791 1.28070315789474
##       Q1                1                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.28426066666667 1.3224652173913 1.3369978021978 1.35185333333333
##       Q1                1               2               4                3
##       Q2                0               0               0                0
##       Q3                0               0               0                0
##       Q4                0               0               0                0
##         y_rate_len
## perdiar6 1.35904404255319 1.38858847826087 1.39409875 1.40384769230769
##       Q1                1                2          1                2
##       Q2                0                0          0                0
##       Q3                0                0          0                0
##       Q4                0                0          0                0
##         y_rate_len
## perdiar6 1.40877347368421 1.42376042553191 1.43137411764706
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.43906967741936 1.45471173913043 1.46158168831169
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.47069758241758 1.48703866666667 1.50294282352941 1.520835
##       Q1                3                1                1        2
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 1.55389663043478 1.5720991011236 1.58555138297872
##       Q1                1               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 1.58695826086956 1.60087894736842 1.60439736263736
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.60823931034483 1.61790957446808 1.622224 1.6353064516129
##       Q1                1                2        3               1
##       Q2                0                0        0               0
##       Q3                0                0        0               0
##       Q4                0                0        0               0
##         y_rate_len
## perdiar6 1.63782230769231 1.64045123595506 1.65308152173913
##       Q1                1                1                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.65602033333333 1.67124725274725 1.68981666666667
##       Q1                1                4                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.70880337078652 1.7192047826087 1.73809714285714
##       Q1                1               2                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 1.76841279069767 1.77970053191489 1.78532804347826
##       Q1                1                1                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.78921764705882 1.79883709677419 1.80494703296703 1.825002
##       Q1                1                2                2        1
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 1.837675625 1.84343636363636 1.85701957894737 1.87179692307692
##       Q1           1                2                2                7
##       Q2           0                0                0                0
##       Q3           0                0                0                0
##       Q4           0                0                0                0
##         y_rate_len
## perdiar6 1.87677510638298 1.87867852941176 1.89259466666667
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.89695548387097 1.90488424242424 1.90913329787234
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.91757456521739 1.93864681318681 1.9414914893617
##       Q1                1                6               3
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.94416020618557 1.96236774193548 1.964411875 1.98369782608696
##       Q1                1                1           1                5
##       Q2                0                0           0                0
##       Q3                0                0           0                0
##       Q4                0                0           0                0
##         y_rate_len
## perdiar6 1.98508989473684 1.98639673469388 2.0054967032967
##       Q1                1                1               2
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 2.00620787234043 2.02778 2.04982108695652 2.05056404494382
##       Q1                2       2                1                2
##       Q2                0       0                0                0
##       Q3                0       0                0                0
##       Q4                0       0                0                0
##         y_rate_len
## perdiar6 2.07092425531915 2.07386590909091 2.07549247058823
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.09319225806452 2.10328244680851 2.11316021052632
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.11594434782609 2.13919648351649 2.16762689655173
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.17262142857143 2.18206760869565 2.20604637362637
##       Q1                1                4                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.21480825242718 2.230558 2.24819086956522 2.2556204494382
##       Q1                1        1                2               1
##       Q2                0        0                0               0
##       Q3                0        0                0               0
##       Q4                0        0                0               0
##         y_rate_len
## perdiar6 2.26507340425532 2.27289626373626 2.28979651685393
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.31431413043478 2.33974615384615 2.35038136363636
##       Q1                5                5                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.36574333333333 2.38043739130435 2.39232471910112
##       Q1                2                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.41951022727273 2.4202535483871 2.433336 2.44732068965517
##       Q1                2               1        1                1
##       Q2                0               0        0                0
##       Q3                0               0        0                0
##       Q4                0               0        0                0
##         y_rate_len
## perdiar6 2.45922255319149 2.46713233333333 2.47723639175258
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.50092866666667 2.55107806451613 2.56140631578947
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.56852133333333 2.57880717391304 2.59342389473684 2.598093125
##       Q1                1                1                1           1
##       Q2                0                0                0           0
##       Q3                0                0                0           0
##       Q4                0                0                0           0
##         y_rate_len
## perdiar6 2.60714571428571 2.61649032258065 2.636114 2.64493043478261
##       Q1                3                1        1                3
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 2.66573325842697 2.70370666666667 2.71105369565217
##       Q1                1                3                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.73408539325843 2.7408454945055 2.74411532608696
##       Q1                1               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 2.76515454545455 2.80769538461538 2.83428340909091
##       Q1                2                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.87454527472528 2.87636184782609 2.87813935483871
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.90942347826087 2.97407733333333 2.98202941176471 3.04167
##       Q1                1                1                1       2
##       Q2                0                0                0       0
##       Q3                0                0                0       0
##       Q4                0                0                0       0
##         y_rate_len
## perdiar6 3.07584606741573 3.10570515789474 3.10638638297872
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.11079886363636 3.17391652173913 3.21065166666667
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.34249450549451 3.46684967741935 3.47619428571429
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.63677934782609 3.75355021276596 4.20656489361702
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 0.345644318181818 0.39673956521739 0.661232608695652
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_len
## perdiar6 0.675926666666667 0.727355869565216 0.735348791208792
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.906029361702127 0.925725652173912 0.935898461538461
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.991848913043478 1.00274835164835 1.01389 1.0361732967033
##       Q1                 4                3       1               1
##       Q2                 0                0       0               0
##       Q3                 0                0       0               0
##       Q4                 0                0       0               0
##         y_rate_len
## perdiar6 1.04659612903226 1.06959824175824 1.07353058823529
##       Q1                1                3                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.1001785106383 1.12409543478261 1.13644813186813
##       Q1               1                1                2
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 1.14907533333333 1.15373689655173 1.16198629213483
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.17519068181818 1.19021869565217 1.25634195652174
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.27014791208791 1.28426066666667 1.29432765957447
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.29869056179775 1.30357285714286 1.3224652173913 1.3369978021978
##       Q1                1                1               2              11
##       Q2                0                0               0               0
##       Q3                0                0               0               0
##       Q4                0                0               0               0
##         y_rate_len
## perdiar6 1.35185333333333 1.36564775510204 1.36704269662921
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.37042274725275 1.40384769230769 1.419446 1.45471173913044
##       Q1                2                4        1                1
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 1.46586506024096 1.48703866666667 1.520835 1.53754747252747
##       Q1                1                1        1                1
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 1.53831586206896 1.55389663043478 1.56989419354839
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.60087894736842 1.60439736263736 1.61790957446808 1.622224
##       Q1                1                2                3        1
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 1.6353064516129 1.63782230769231 1.65308152173913
##       Q1               1                1                5
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 1.65602033333333 1.67124725274725 1.68262595744681
##       Q1                1                5                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.68981666666667 1.69365715909091 1.70071870967742
##       Q1                4                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.7046721978022 1.70880337078652 1.710939375 1.7192047826087
##       Q1               1                1           1               2
##       Q2               0                0           0               0
##       Q3               0                0           0               0
##       Q4               0                0           0               0
##         y_rate_len
## perdiar6 1.72822159090909 1.73809714285714 1.76613096774193
##       Q1                4                3                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.76841279069767 1.77970053191489 1.78304793103448
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.78532804347826 1.79298442105263 1.79735045454546
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.80494703296703 1.81800965517241 1.825002 1.84550764044944
##       Q1                2                2        1                2
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 1.87677510638298 1.9138597752809 1.91757456521739
##       Q1                1               1                2
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 1.92105473684211 1.93864681318681 1.9414914893617
##       Q1                1                3               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.96018733333333 1.96236774193548 1.97384968085106
##       Q1                2                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.98221191011236 1.98369782608696 2.0054967032967
##       Q1                1                8              10
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 2.01675945652174 2.02778 2.04982108695652 2.05056404494382
##       Q1                1       2                1                2
##       Q2                0       0                0                0
##       Q3                0       0                0                0
##       Q4                0       0                0                0
##         y_rate_len
## perdiar6 2.07234659340659 2.07386590909091 2.0828827173913
##       Q1                4                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 2.09537266666667 2.11594434782609 2.13564063829787
##       Q1                2                3                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.13919648351649 2.16762689655173 2.18206760869565
##       Q1                2                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.20035702127659 2.20604637362637 2.21212363636364
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.21862988235294 2.23947131868132 2.24123052631579
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.26507340425532 2.27289626373626 2.2812525 2.29815066666667
##       Q1                3                3         1                1
##       Q2                0                0         0                0
##       Q3                0                0         0                0
##       Q4                0                0         0                0
##         y_rate_len
## perdiar6 2.31431413043478 2.33974615384615 2.36574333333333
##       Q1                5                4                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.38043739130435 2.41349902173913 2.44732068965517
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.45295967741935 2.48566580645161 2.51268391304348
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.54574554347826 2.57880717391304 2.62689681818182
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.64493043478261 2.6739956043956 2.67399560439561
##       Q1                2               5                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 2.68798744186047 2.70370666666667 2.71105369565217
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.73408539325843 2.7408454945055 2.76515454545455
##       Q1                1               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 2.80769538461538 2.87454527472528 2.97482010989011
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.97554673913043 3.00824505494505 3.07509494505495
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 3.17110276595745
##       Q1                1
##       Q2                0
##       Q3                0
##       Q4                0
##         y_rate_len
## perdiar6 -0.197145277777779 0.207386590909089 0.310374489795918 0.38020875
##       Q1                  1                 1                 1          1
##       Q2                  0                 0                 0          0
##       Q3                  0                 0                 0          0
##       Q4                  0                 0                 0          0
##         y_rate_len
## perdiar6 0.434524285714287 0.495924456521739 0.534799120879121
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.60126034883721 0.632035324675322 0.659639277108433
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.694294239130435 0.735348791208792 0.7921015625
##       Q1                 1                 1            1
##       Q2                 0                 0            0
##       Q3                 0                 0            0
##       Q4                 0                 0            0
##         y_rate_len
## perdiar6 0.864110795454545 0.900086020408163 0.906029361702127
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.954942906976743 0.960527368421053 1.04885172413793
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_len
## perdiar6 1.06959824175824 1.08899296296297 1.09750979381443
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.18699317073171 1.216668 1.28940358695652 1.30357285714286
##       Q1                1        1                1                1
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 1.31344840909091 1.34095129032258 1.44841428571429
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.45170613636364 1.45471173913044 1.50577722772277
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.53684378947368 1.55008182692308 1.56193864864865
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.57451152941176 1.584203125 1.60087894736842 1.60627516853933
##       Q1                1           1                1                1
##       Q2                0           0                0                0
##       Q3                0           0                0                0
##       Q4                0           0                0                0
##         y_rate_len
## perdiar6 1.66567642857143 1.67602224489796 1.7046721978022
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.73342483870968 1.73809714285714 1.7641686 1.79120566666667
##       Q1                1                1         1                2
##       Q2                0                0         0                0
##       Q3                0                0         0                0
##       Q4                0                0         0                0
##         y_rate_len
## perdiar6 1.825002 1.86424935483871 1.9770855 1.98639673469388
##       Q1        1                1         1                1
##       Q2        0                0         0                0
##       Q3        0                0         0                0
##       Q4        0                0         0                0
##         y_rate_len
## perdiar6 2.01556445783133 2.07386590909091 2.0828827173913
##       Q1                2                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 2.11995181818182 2.129169 2.14299477272727 2.15746360465116
##       Q1                1        2                1                1
##       Q2                0        0                0                0
##       Q3                0        0                0                0
##       Q4                0        0                0                0
##         y_rate_len
## perdiar6 2.17798592592592 2.20120855263158 2.22820011627907 2.230558
##       Q1                1                1                1        1
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 2.23755034482758 2.24668806818182 2.31581693181818
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.32978978723404 2.42609392857143 2.44040965116279
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.46535357894737 2.46713233333333 2.48526695121951
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.55220586206896 2.6158362 2.81065708860759 2.91223723404255
##       Q1                1         1                1                1
##       Q2                0         0                0                0
##       Q3                0         0                0                0
##       Q4                0         0                0                0
##         y_rate_len
## perdiar6 3.12857485714286 4.14773181818182 4.18229625 4.7145885
##       Q1                1                1          1         1
##       Q2                0                0          0         0
##       Q3                0                0          0         0
##       Q4                0                0          0         0
##         y_rate_len
## perdiar6 -0.0986487567567558 0.719534838709676 0.747673072625699
##       Q1                   1                 1                 1
##       Q2                   0                 0                 0
##       Q3                   0                 0                 0
##       Q4                   0                 0                 0
##         y_rate_len
## perdiar6 0.760417499999999 0.801300161290323 0.822072972972973
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.835623626373626 0.864299672131148 0.887838810810812
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.902473516483517 0.930784262295083 0.935898461538461
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.935898461538463 0.969323406593406 0.997268852459016
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 1.00274835164835 1.00310393617021 1.01389 1.02491054347826
##       Q1                2                1       2                1
##       Q2                0                0       0                0
##       Q3                0                0       0                0
##       Q4                0                0       0                0
##         y_rate_len
## perdiar6 1.0361732967033 1.05797217391304 1.06959824175824
##       Q1               2                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 1.07550762430939 1.08513632432432 1.08513632432433
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.08631071428571 1.09231243093923 1.10302318681319
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.10911723756906 1.1283614516129 1.13023803278688 1.1344607027027
##       Q1                1               1                1               2
##       Q2                0               0                0               0
##       Q3                0               0                0               0
##       Q4                0               0                0               0
##         y_rate_len
## perdiar6 1.13644813186813 1.14272685082873 1.14471451612903
##       Q1                3                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.15715706521739 1.16987307692308 1.17112427807487
##       Q1                3                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.17742064516129 1.18378508108108 1.20329802197802
##       Q1                1                2                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.20365550802139 1.20994607734807 1.21012677419355 1.216668
##       Q1                1                1                1        3
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 1.22001049450549 1.22647983870968 1.23672296703297
##       Q1                1                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.24283290322581 1.25046433333333 1.27014791208791
##       Q1                1                1                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.2716586440678 1.27553903225806 1.2771653038674 1.27982836065574
##       Q1               1                1               1                1
##       Q2               0                0               0                0
##       Q3               0                0               0                0
##       Q4               0                0               0                0
##         y_rate_len
## perdiar6 1.28243383783784 1.28426066666667 1.28686038461538
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.29143530726257 1.29644950819672 1.2988752972973
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.30357285714286 1.30824516129032 1.31077491712707
##       Q1                2                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.31531675675676 1.32028532967033 1.3224652173913
##       Q1                1                1               2
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.32969180327869 1.3369978021978 1.33899603260869
##       Q1                1               3                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 1.35371027472527 1.36293409836066 1.36464113513513
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.37042274725275 1.37799414364641 1.3810825945946
##       Q1                1                1               3
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.39001048387097 1.39339072625698 1.40121876404494
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.40384769230769 1.4063635483871 1.43137411764706
##       Q1                2               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 1.43727263736264 1.43818092391304 1.43906967741935
##       Q1                5                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.44603983606557 1.44684843243243 1.44917261780105
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.45471173913043 1.46266098360656 1.47069758241758
##       Q1                1                1                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.47177580645161 1.48741005494506 1.49590327868852
##       Q1                2                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.49617281081081 1.50412252747253 1.51261427027027 1.520835
##       Q1                1                3                3        2
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 1.52896780748663 1.55389663043478 1.56331642458101
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.56989419354839 1.57097241758242 1.57268164772727
##       Q1                2                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.57965182320442 1.58030899441341 1.58624725806452
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.59403026737968 1.60260032258065 1.60348907608696
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.60439736263736 1.61126302702703 1.61535016949153
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.61790957446808 1.62001989130435 1.62887245901639
##       Q1                1                3                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.64414594594595 1.65909272727273 1.67702886486487
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.68614315217391 1.69535704918033 1.7046721978022
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.71707177419355 1.72138467032967 1.73573559782609
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.73809714285714 1.75740933333333 1.77152208791209
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.78248403225807 1.78532804347826 1.79508393442623
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.80856054054054 1.8149191160221 1.81838967391304
##       Q1                1               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 1.83154322580645 1.86156852459016 1.88451293478261
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.90522186813187 1.92966161290323 1.94009221621622
##       Q1                1                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.97297513513514 1.99559301587302 2.01638797752809
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.10182814606741 2.10707865921788 2.17027264864865
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.19399147540984 2.36947773480663 2.53198475675676
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 -0.133699780219782 0.398907540983607 0.423990363636363
##       Q1                  1                 1                 1
##       Q2                  0                 0                 0
##       Q3                  0                 0                 0
##       Q4                  0                 0                 0
##         y_rate_len
## perdiar6 0.432149836065573 0.439352333333335 0.534799120879121
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.565119016393442 0.598361311475409 0.650624598930481
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.654122580645162 0.661232608695652 0.701923846153847 0.709723
##       Q1                 1                 1                 1        1
##       Q2                 0                 0                 0        0
##       Q3                 0                 0                 0        0
##       Q4                 0                 0                 0        0
##         y_rate_len
## perdiar6 0.711880212765958 0.727355869565218 0.752240967741934
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.764572786885246 0.773021104972375 0.802198681318681
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.822072972972973 0.826540760869564 0.826540760869565
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.83105737704918 0.840240331491713 0.844908333333333
##       Q1                2                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.849628491620112 0.852336098901099 0.864299672131148
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.869048571428572 0.883065483870969 0.887838810810812
##       Q1                 3                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.892664021739131 0.897541967213116 0.902473516483517
##       Q1                 1                 5                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.915771612903225 0.92072172972973 0.932124677419355
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_len
## perdiar6 0.935898461538462 0.960527368421053 0.964026557377049
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.96402655737705 0.969323406593408 0.974678784530386
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.986487567567568 0.991848913043478 0.997268852459016
##       Q1                 2                 3                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 1.00274835164835 1.01937048648649 1.02423581632653
##       Q1                5                3                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.02528202247191 1.03546212765957 1.0361732967033
##       Q1                1                1               2
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.03693295454545 1.05726497326203 1.05797217391304
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.05945808988764 1.06959824175824 1.07450298913043
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.08148266666667 1.08631071428571 1.09103380434783
##       Q1                1                2                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.09699573770492 1.10302318681319 1.10606181818182
##       Q1                2                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.10911723756906 1.11238217142857 1.115279 1.11973565934066
##       Q1                1                1        1                1
##       Q2                0                0        0                0
##       Q3                0                0        0                0
##       Q4                0                0        0                0
##         y_rate_len
## perdiar6 1.12409543478261 1.13023803278688 1.13023803278689
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.14471451612903 1.15090216216216 1.15715706521739
##       Q1                2                5                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.15953165745856 1.16106758064516 1.16348032786885
##       Q1                1                2                8
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.16987307692308 1.17112427807487 1.19021869565217
##       Q1                8                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.19672262295082 1.20329802197802 1.20994607734807 1.216668
##       Q1                1                1                1        1
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 1.23033842696629 1.26291561403509 1.26320721311475
##       Q1                1                1                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.26871796791444 1.27014791208791 1.2771653038674
##       Q1                2                3               3
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.28151578680203 1.28243383783784 1.28426066666667
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.28686038461538 1.2988752972973 1.30124919786096
##       Q1                1               2                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 1.30824516129032 1.31077491712707 1.3224652173913
##       Q1                2                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.32757972375691 1.32969180327869 1.3369978021978
##       Q1                1                3               6
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.34095129032258 1.34438453038674 1.34819967567567
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.34819967567568 1.35185333333333 1.35371027472527
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.35940558659218 1.36293409836066 1.37042274725275
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.37205766304348 1.3810825945946 1.38564966666667
##       Q1                1               1                1
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 1.39617639344262 1.40384769230769 1.41160375690608
##       Q1                2                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.41396551351351 1.42165010869565 1.42840856353591
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.43539483146068 1.43727263736264 1.44684843243243
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.45324233333333 1.45471173913043 1.46266098360656
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.47177580645161 1.48777336956522 1.49590327868852
##       Q1                1                3                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.50412252747253 1.5053162755102 1.53754747252747
##       Q1                3               1                3
##       Q2                0               0                0
##       Q3                0               0                0
##       Q4                0               0                0
##         y_rate_len
## perdiar6 1.54604220994475 1.56238786885246 1.56331642458101
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.57097241758242 1.57838010810811 1.59482156756757
##       Q1                4                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.61790957446808 1.62001989130435 1.63782230769231
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.64414594594595 1.64687104972376 1.65602033333333
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.66211475409836 1.68981666666667 1.70991178378378
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.73342483870968 1.74769988950276 1.78130950276243
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.80494703296703 1.80856054054054 1.8283262295082
##       Q1                1                1               1
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.96236774193548 2.23947131868132 2.53198475675676
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 0.321869841269841 0.328829189189189 0.336096132596685
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.361712108108109 0.405556000000001 0.457885806451614
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.460360864864864 0.495924456521739 0.498634426229508
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.501374175824176 0.515255573770493 0.523298064516129
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.534799120879121 0.562047717391304 0.568224065934067
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.588710322580644 0.598361311475409 0.60164901098901
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_len
## perdiar6 0.601649010989011 0.618361483516484 0.631603606557377
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.635073956043957 0.654122580645161 0.657658378378378
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.664845901639344 0.668498901098901 0.67219226519337
##       Q1                 2                 2                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_len
## perdiar6 0.681467049180327 0.690541297297295 0.690541297297298
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.701923846153847 0.718636318681318 0.723424216216217
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.764572786885245 0.768594032258065 0.768773736263736
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.793479130434782 0.797815081967213 0.802198681318681
##       Q1                 2                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.806630718232044 0.813280748663102 0.817653225806452
##       Q1                 1                 2                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.818911153846155 0.822072972972973 0.83105737704918
##       Q1                 1                 2               10
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_len
## perdiar6 0.835623626373626 0.840240331491713 0.845811978609626
##       Q1                 2                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.849628491620112 0.85035935483871 0.854955891891892
##       Q1                 3                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_len
## perdiar6 0.859602391304348 0.864299672131148 0.869048571428572
##       Q1                 2                 2                 3
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.883065483870969 0.897541967213116 0.902473516483515
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.902473516483517 0.907459558011051 0.915771612903226
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.92072172972973 0.925725652173912 0.935898461538461
##       Q1                1                 2                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_len
## perdiar6 0.941069171270717 0.948477741935483 0.953604648648648
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.964026557377049 0.969323406593406 0.975318097826086
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.981183870967742 0.986487567567568 0.991848913043478
##       Q1                 1                 5                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_len
## perdiar6 0.997268852459016 1.00274835164835 1.00828839779006
##       Q1                 6                9                3
##       Q2                 0                0                0
##       Q3                 0                0                0
##       Q4                 0                0                0
##         y_rate_len
## perdiar6 1.00837972826087 1.01389 1.01937048648649 1.03051114754098
##       Q1                1       1                3                1
##       Q2                0       0                0                0
##       Q3                0       0                0                0
##       Q4                0       0                0                0
##         y_rate_len
## perdiar6 1.0361732967033 1.04768633333333 1.05225340540541
##       Q1               1                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 1.05353932960894 1.06959824175824 1.08513632432432
##       Q1                1                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.09103380434783 1.10302318681319 1.10911723756906
##       Q1                2                1                2
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.11801924324324 1.11973565934066 1.12409543478261
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.13644813186813 1.14471451612903 1.14714411428571
##       Q1                3                4                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.14907533333333 1.15090216216216 1.15715706521739
##       Q1                1                3                5
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.16348032786885 1.16987307692308 1.17368788043478
##       Q1                6                6                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.18287166666667 1.19021869565217 1.20329802197802 1.216668
##       Q1                2                1                1        1
##       Q2                0                0                0        0
##       Q3                0                0                0        0
##       Q4                0                0                0        0
##         y_rate_len
## perdiar6 1.22328032608696 1.22647983870968 1.22996491803279
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.23618673796791 1.23672296703297 1.24355569060774
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.25634195652174 1.26320721311475 1.27553903225806
##       Q1                1                2                3
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.2771653038674 1.28940358695652 1.29432765957447
##       Q1               1                1                1
##       Q2               0                0                0
##       Q3               0                0                0
##       Q4               0                0                0
##         y_rate_len
## perdiar6 1.29644950819672 1.30357285714286 1.30824516129032
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.31531675675676 1.32969180327869 1.3369978021978
##       Q1                1                1               4
##       Q2                0                0               0
##       Q3                0                0               0
##       Q4                0                0               0
##         y_rate_len
## perdiar6 1.34631295081967 1.35185333333333 1.35940558659218
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.37042274725275 1.38858847826087 1.41160375690608
##       Q1                2                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.42941868852459 1.43727263736264 1.43906967741935
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.45471173913043 1.46266098360656 1.50412252747253
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.50448193548387 1.51243259668508 1.54604220994475
##       Q1                1                2                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 1.56238786885246 1.61126302702703 1.84852872928177
##       Q1                1                1                1
##       Q2                0                0                0
##       Q3                0                0                0
##       Q4                0                0                0
##         y_rate_len
## perdiar6 2.20604637362637
##       Q1                1
##       Q2                0
##       Q3                0
##       Q4                0
```




# Results Detail

## Results Plots
![](/tmp/f35dc07b-9fd1-4043-a9e5-42c652342f8a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f35dc07b-9fd1-4043-a9e5-42c652342f8a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat        studyid               country         intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------------  --------------  -------------------  ---------------  ---------  ----------  ---------
0-3 months    ki0047075b-MAL-ED     PERU            Q1                   NA                3.309832   3.2469139   3.372749
0-3 months    ki0047075b-MAL-ED     PERU            Q2                   NA                3.636595   3.6334205   3.639769
0-3 months    ki1000109-ResPak      PAKISTAN        Q1                   NA                3.128145   2.8528446   3.403446
0-3 months    ki1000109-ResPak      PAKISTAN        Q2                   NA                2.281330   2.2184249   2.344235
0-3 months    ki1017093-NIH-Birth   BANGLADESH      Q1                   NA                3.307297   3.2528626   3.361731
0-3 months    ki1017093-NIH-Birth   BANGLADESH      Q2                   NA                3.572790   3.5673602   3.578219
0-3 months    ki1017093b-PROVIDE    BANGLADESH      Q1                   NA                3.485700   3.4467668   3.524633
0-3 months    ki1017093b-PROVIDE    BANGLADESH      Q2                   NA                3.101612   3.0980685   3.105155
0-3 months    ki1114097-CMIN        PERU            Q1                   NA                3.338567   3.2100035   3.467131
0-3 months    ki1114097-CMIN        PERU            Q2                   NA                2.910465   2.8839003   2.937030
3-6 months    ki1000109-ResPak      PAKISTAN        Q1                   NA                2.078408   1.9400324   2.216784
3-6 months    ki1000109-ResPak      PAKISTAN        Q2                   NA                1.970589   1.9398271   2.001350
3-6 months    ki1017093-NIH-Birth   BANGLADESH      Q1                   NA                1.834497   1.7868377   1.882156
3-6 months    ki1017093-NIH-Birth   BANGLADESH      Q2                   NA                1.699600   1.6938915   1.705309
3-6 months    ki1114097-CMIN        GUINEA-BISSAU   Q1                   NA                2.079985   1.9821160   2.177854
3-6 months    ki1114097-CMIN        GUINEA-BISSAU   Q2                   NA                1.915835   1.8805308   1.951140
6-12 months   ki1000109-ResPak      PAKISTAN        Q1                   NA                1.303548   1.2243854   1.382712
6-12 months   ki1000109-ResPak      PAKISTAN        Q2                   NA                1.195062   1.1689044   1.221219
6-12 months   ki1114097-CMIN        GUINEA-BISSAU   Q1                   NA                1.043172   0.9843422   1.102002
6-12 months   ki1114097-CMIN        GUINEA-BISSAU   Q2                   NA                1.007313   0.9901542   1.024472


### Parameter: E(Y)


agecat        studyid               country         intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------------  --------------  -------------------  ---------------  ---------  ----------  ---------
0-3 months    ki0047075b-MAL-ED     PERU            NA                   NA                3.315860   3.2526447   3.379076
0-3 months    ki1000109-ResPak      PAKISTAN        NA                   NA                3.073862   2.7876913   3.360033
0-3 months    ki1017093-NIH-Birth   BANGLADESH      NA                   NA                3.312925   3.2581305   3.367720
0-3 months    ki1017093b-PROVIDE    BANGLADESH      NA                   NA                3.482671   3.4434873   3.521854
0-3 months    ki1114097-CMIN        PERU            NA                   NA                3.315551   3.1827969   3.448305
3-6 months    ki1000109-ResPak      PAKISTAN        NA                   NA                2.069423   1.9275918   2.211255
3-6 months    ki1017093-NIH-Birth   BANGLADESH      NA                   NA                1.832691   1.7846731   1.880710
3-6 months    ki1114097-CMIN        GUINEA-BISSAU   NA                   NA                2.072970   1.9687527   2.177187
6-12 months   ki1000109-ResPak      PAKISTAN        NA                   NA                1.296473   1.2129800   1.379966
6-12 months   ki1114097-CMIN        GUINEA-BISSAU   NA                   NA                1.041590   0.9802963   1.102883


### Parameter: ATE


agecat        studyid               country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months    ki0047075b-MAL-ED     PERU            Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months    ki0047075b-MAL-ED     PERU            Q2                   Q1                 0.3267632    0.2637654    0.3897611
0-3 months    ki1000109-ResPak      PAKISTAN        Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months    ki1000109-ResPak      PAKISTAN        Q2                   Q1                -0.8468156   -1.1292116   -0.5644195
0-3 months    ki1017093-NIH-Birth   BANGLADESH      Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months    ki1017093-NIH-Birth   BANGLADESH      Q2                   Q1                 0.2654932    0.2107891    0.3201973
0-3 months    ki1017093b-PROVIDE    BANGLADESH      Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months    ki1017093b-PROVIDE    BANGLADESH      Q2                   Q1                -0.3840879   -0.4231817   -0.3449941
0-3 months    ki1114097-CMIN        PERU            Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months    ki1114097-CMIN        PERU            Q2                   Q1                -0.4281021   -0.5593817   -0.2968224
3-6 months    ki1000109-ResPak      PAKISTAN        Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months    ki1000109-ResPak      PAKISTAN        Q2                   Q1                -0.1078197   -0.2495737    0.0339343
3-6 months    ki1017093-NIH-Birth   BANGLADESH      Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months    ki1017093-NIH-Birth   BANGLADESH      Q2                   Q1                -0.1348968   -0.1828968   -0.0868968
3-6 months    ki1114097-CMIN        GUINEA-BISSAU   Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months    ki1114097-CMIN        GUINEA-BISSAU   Q2                   Q1                -0.1641495   -0.2681914   -0.0601075
6-12 months   ki1000109-ResPak      PAKISTAN        Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months   ki1000109-ResPak      PAKISTAN        Q2                   Q1                -0.1084869   -0.1918595   -0.0251142
6-12 months   ki1114097-CMIN        GUINEA-BISSAU   Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months   ki1114097-CMIN        GUINEA-BISSAU   Q2                   Q1                -0.0358588   -0.0971397    0.0254221
